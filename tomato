-- MODULES --
local signal;
local fakeEvent={}

do
	local ScriptConnection = {}

	function ScriptConnection.new(event,func,...)
		local connObj = newproxy(true)
		local conn = {
			Event=event;
			Function=func;
			Args={...};
			Object=connObj;
		}
		getmetatable(connObj).__index=function(self,index)
			if(index=='Locked')then
				return nil;
			else
				return conn[index] or ScriptConnection[index]
			end
		end
		getmetatable(connObj).__newindex=function(self,index,value)
			if(index=='Locked' and getfenv(2).script==script)then
				conn.Locked=value
			elseif(index~='Locked')then
				conn[index]=value
			end
		end
		
		return connObj;
	end
	
	function ScriptConnection:disconnect()
		self.Event._connections[self]=nil;
	end
	
	function ScriptConnection:Lock(key)
		self.Locked=key;
	end
	
	function ScriptConnection:Unlock(key)
		if(self.Locked==key)then
			self.Locked=nil;
		else
			error("Invalid key!",2)
		end
	end
	
	
	ScriptConnection.Disconnect=ScriptConnection.disconnect;
	
	setmetatable(ScriptConnection,{__call=function(s,...)ScriptConnection.new(...) end})
	
	signal = ScriptConnection.new;
end

do
	function fakeEvent.new()
		local conn = {
			_connections={};
			_yield={};
		}
		
		setmetatable(conn,{__index=fakeEvent})
		
		return conn;
	end
	
	function fakeEvent:fire(...)
		for i,v in next, self._yield do
			self._yield[i]={...}
		end
		for i = 1,#self._connections do
			local connection = self._connections[i]
			coroutine.wrap(function(...)connection.Function(...)end)(...)
		end	
	end
	
	function fakeEvent:connect(func,...)
		local obj = signal(self,func,...)
		table.insert(self._connections,obj)
	end
	
	function fakeEvent:wait()
		local guid = tostring(function() end):sub(13)
		self._yield[guid]=true;
		repeat wait() until self._yield[guid]~=true
		local stuff = self._yield[guid]
		self._yield[guid]=nil;
		return unpack(stuff)
		
	end
	
	fakeEvent.Fire=fakeEvent.fire;
	fakeEvent.Connect=fakeEvent.connect;
	fakeEvent.Wait=fakeEvent.wait;
	
	setmetatable(fakeEvent,{__call=fakeEvent.new})
end

-- UI CONTROL --
local uiList={}
local cas = game:service'ContextActionService'
local uis = game:service'UserInputService'

local function menuStuff(action,state,obj)
	if(state==Enum.UserInputState.Begin)then
		if(action=='tabUp' or action=='tabDown')then -- move selection up/down
			local toMove={}
			for _,v in next, uiList do
				if(v.Visible)then
					table.insert(toMove,v)
				end
			end
			if(#toMove>0)then
				for i = 1,#toMove do
					local tab = toMove[i]:GetTab()
					tab.SelectedIdx=tab.SelectedIdx+(action=='tabUp' and -1 or 1)
					toMove[i]:UpdateCursor()
				end
				return Enum.ContextActionResult.Sink;
			end
		elseif(action=='tabEnter')then -- go into selection if it's a tab
			local shouldSink=false;
			for _,v in next, uiList do
				if(v.Visible)then
					local tab = v:GetTab();
					local selected = tab.Children[tab.SelectedIdx]
					if(selected and selected.Type=='Tab' and selected.IsOpen and #selected.Children>0)then
						v:SetTab(selected)
						v:UpdateCursor()
					end
					shouldSink=true
				end
			end
			
			if(shouldSink)then
				return Enum.ContextActionResult.Sink;
			end
		elseif(action=='tabLeave')then -- leave current tab
			local shouldSink=false;
			for _,v in next, uiList do
				if(v.Visible)then
					local tab = v:GetTab();
					if(tab.Parent and tab.SelectedIdx==1)then
						v:SetTab(tab.Parent)
						v:UpdateCursor()
					end
					shouldSink=true
				end
			end
			
			if(shouldSink)then
				return Enum.ContextActionResult.Sink;
			end
		elseif(action=='tabUse')then -- open/close tab
			local shouldSink=false
			for _,v in next, uiList do
				if(v.Visible)then
					local tab = v:GetTab()
					local selected = tab.Children[tab.SelectedIdx]
					selected:Use()
				end
			end
			if(shouldSink)then
				return Enum.ContextActionResult.Sink;
			end
		end
	end
	return Enum.ContextActionResult.Pass;
end

-- MISC FUNCS --
local function Scale(dist,minDist,maxDist,minVal,maxVal)
    return dist < minDist and maxVal or dist < maxDist and (minVal - maxVal) / (maxDist - minDist) * (dist - minDist) + maxVal or minVal
end

-- UI CLASSES --
local ui={}
local tab={}
local button={}
local toggle={}
local slider={}
local dropdown={}

dropdown.Type='Dropdown'
slider.Type='Slider'
button.Type='Button'
tab.Type='Tab'
toggle.Type='Toggle'


-- DROPDOWN --
function dropdown:SetValue(v)
	for i = 1,#self.Toggles do
		if(self.Toggles[i].Name==v)then
			self.Toggles[i]:Enable()
		else
			self.Toggles[i]:Disable()
		end
	end	
end

-- TOGGLE --
function toggle:UpdateState()
	self.Object.Text.TextTransparency=(self.Value and 0 or .5)
end

function toggle:Enable()
	self.Value=true
	self:UpdateState()
	self.Used:fire(self.Value)
end

function toggle:Disable()
	self.Value=false
	self:UpdateState()
	self.Used:fire(self.Value)
end


function toggle:Use()
	if(self.Value)then self:Disable()else self:Enable()end
end

-- SLIDER --
function slider:Update()
	local val=self.Value
	local min=self.MinValue
	local max=self.MaxValue
	self.Label.Text=tostring(val)
	self.Slide.Size = UDim2.new(Scale(val,min,max,1,0),0,1,0)
end

function slider:SetValue(v)
	self.ValueChanged:fire(v,self.Value)
	self.Value=v;
	self:Update();
end

function slider:IncValue(v)
	self:SetValue(self.Value+v)
end

function slider:CaptureFocus()
	if(not self.InUse)then
		local function sliderStuff(action,state,obj)
			if(state==Enum.UserInputState.Begin)then
				local start = tick();
				self:SetValue(math.clamp(self.Value+(action=='step-' and -self.Step or self.Step),self.MinValue,self.MaxValue))
				while uis:IsKeyDown(obj.KeyCode)do
					if(tick()-start>.1)then
						self:SetValue(math.clamp(self.Value+(action=='step-' and -self.Step or self.Step),self.MinValue,self.MaxValue))
					end
					wait()
				end
			end
			return Enum.ContextActionResult.Sink
		end
		self.InUse=true
		cas:BindActionAtPriority("step-",sliderStuff,false,Enum.ContextActionPriority.High.Value+2,Enum.KeyCode.Left)
		cas:BindActionAtPriority("step+",sliderStuff,false,Enum.ContextActionPriority.High.Value+2,Enum.KeyCode.Right)
		cas:BindActionAtPriority("override",function()self:ReleaseFocus(); return Enum.ContextActionResult.Pass;end,false,Enum.ContextActionPriority.High.Value+2,Enum.KeyCode.Up,Enum.KeyCode.Down)
	end
end

function slider:ReleaseFocus()
	if(self.InUse)then
		self.InUse=false
		cas:UnbindAction("step-")
		cas:UnbindAction("step+")
		cas:UnbindAction("override")
	end
end

function slider:Use()
	if(self.InUse)then
		self:ReleaseFocus()
	else
		self:CaptureFocus()
	end
end

-- BUTTON --
function button:Use()
	self.Used:fire()
end

-- TAB --
function tab:UpdateVis()
	self.ListInstance.Visible=self.IsOpen
end

function tab:Open()
	self.IsOpen=true
	self:UpdateVis()
end

function tab:Close()
	for i = 1,#self.Children do
		if(self.Children[i].Type=='Tab')then
			self.Children[i]:Close()
		end
	end
	self.IsOpen=false
	self:UpdateVis()
end

function tab:Toggle()
	if(self.IsOpen)then self:Close()else self:Open()end
end

function tab:Use()
	for i = 1,#self.Parent.Children do
		if(self.Parent.Children[i].Type=='Tab' and self.Parent.Children[i]~=self)then
			self.Parent.Children[i]:Close()
		elseif(self.Parent.Children[i]==self)then
			self.Parent.Children[i]:Toggle()
		end
	end
end
ui.__index=ui;

-- TABGUI ITSELF --
local localPlayer = game:service'Players'.localPlayer;
local uiDesign = game:service'RunService':IsStudio() and script:WaitForChild'UIs' or game:GetObjects("rbxassetid://5376867197")[1] 

function ui:SetColor(c3)
	self.UI.BackgroundColor3=c3
	self.MainColor=c3
	for _,v in next, self.UI:GetDescendants()do
		if(v:IsA'GuiObject' and v.BackgroundTransparency==0)then
			v.BackgroundColor3=c3
		end
	end
end

function ui:NewList()
	local list = uiDesign.List:Clone()
	local layout = list:WaitForChild'UIListLayout'
	list.ChildAdded:connect(function()
		list.Size=UDim2.new(0,layout.AbsoluteContentSize.X,0,layout.AbsoluteContentSize.Y)
	end)
	return list
end

function ui:CreateInstance(properties,super)
	return setmetatable(properties,{
		__index=function(s,i)
			return super[i] or self[i]
		end
	})
end

function ui:AddTab(name)
	local tabB = uiDesign.Button:Clone()
	tabB.BackgroundColor3=self.MainColor
	tabB.Name='Tab'
	tabB.Text.Text=name
	local list = self:NewList()
	list.Visible=false
	list.Position=UDim2.new(-1,0,0,0)
	list.Parent=tabB
	tabB.Parent=self.ListInstance;
	local fakeI = self:CreateInstance({
		Name=name;
		IsOpen=false;
		SelectedIdx=1;
		UI=tabB;
		Children={};
		ListInstance=list;
		Parent=self;
	},tab)
	table.insert(self.Children,fakeI)
	return fakeI
end

function ui:AddButton(name,settings)
	local butt = uiDesign.Button:Clone()
	butt.BackgroundColor3=self.MainColor
	butt.Text.Text=name
	butt.Parent=self.ListInstance
	local fakeI = self:CreateInstance({
		Name=name;
		Object=butt;
		Used=fakeEvent.new();
		Parent=self;
	},button)
	table.insert(self.Children,fakeI)
	return fakeI
end

function ui:AddToggle(name,settings)
	local settings = settings or {}
	local butt = uiDesign.Button:Clone()
	butt.BackgroundColor3=self.MainColor
	butt.Text.Text=name
	butt.Parent=self.ListInstance
	local fakeI = self:CreateInstance({
		Name=name;
		Value=settings.Value or false;
		Object=butt;
		Used=fakeEvent.new();
		Parent=self;
	},toggle)
	table.insert(self.Children,fakeI)
	
	fakeI:UpdateState()
	return fakeI
end

function ui:AddDropdown(name,settings)
	local settings = settings or {}
	local values = settings.Values or {"Val1","Val2","Val3"}
	local tab = self:AddTab(name)
	local fakeI = self:CreateInstance({
		Name=name;
		Value=settings.DefaultValue or tostring(values[1]);
		ValueChanged=fakeEvent.new();
		Parent=self;
		Toggles={};
	},dropdown)
	for i = 1,#values do
		local v = tostring(values[i])
		if(typeof(v)=='string')then
			local tog = tab:AddToggle(v)
			if(v==fakeI.Value)then
				tog:Enable()
			end
			tog.Used:connect(function(t)
				for i = 1,#fakeI.Toggles do
					if(fakeI.Toggles[i]~=tog)then
						fakeI.Toggles[i].Value=false
						fakeI.Toggles[i]:UpdateState()
					end
				end
				if(t==false)then
					fakeI.Toggles[1]:Enable()
				else
					local oldValue=fakeI.Value;
					fakeI.Value=v
					fakeI.ValueChanged:fire(v,oldValue)
				end
			end)
			table.insert(fakeI.Toggles,tog)
		end
	end
	return fakeI
end

function ui:AddSlider(settings)
	local tab=self;
	local settings = settings or {}
	if(settings.TabName)then tab=self:AddTab(settings.TabName)end
	local minVal = settings.MinValue or 0
	local maxVal = settings.MaxValue or 100
	local val = settings.Value or (settings.MinValue+settings.MaxValue)/2
	local sliderObj = uiDesign.Slider:Clone()
	sliderObj.BackgroundColor3=self.MainColor
	sliderObj.Value.Text=tostring(val)
	sliderObj.Parent=tab.ListInstance
	local sliderO = sliderObj.Outside
	local sliderI = sliderO.Slide
	
	local fakeI = self:CreateInstance({
		Parent=tab;
		Value=val;
		MinValue=minVal;
		MaxValue=maxVal;
		Step=settings.Step or 1;
		Label=sliderObj.Value;
		Object=sliderObj;
		Slide=sliderI;
		SlideShell=sliderO;
		ValueChanged=fakeEvent.new();
	},slider)
	table.insert(tab.Children,fakeI)
	fakeI:Update()
	return fakeI
end

function ui:GetTab()
	return self.Inside or self;
end

function ui:SetTab(t)
	self.Inside=t;
end

function ui:UpdateCursor()
	local tab = self:GetTab()
	if(tab.SelectedIdx>#tab.Children)then tab.SelectedIdx=1; end
	if(tab.SelectedIdx<1)then tab.SelectedIdx=#tab.Children; end
	local xOffset = tab.ListInstance.AbsolutePosition.X-self.ListInstance.AbsolutePosition.X
	local yOffset = tab.UI.AbsolutePosition.Y-self.UI.AbsolutePosition.Y
	
	self.Cursor.Position=UDim2.new(0,xOffset,0,yOffset+((tab.SelectedIdx-1)*25))
	--self.Cursor:TweenPosition(UDim2.new(0,xOffset,0,yOffset+((tab.SelectedIdx-1)*25)),Enum.EasingDirection.InOut,Enum.EasingStyle.Linear,.1,true)
end

function ui:SetVisibility(vis)
	self.Visible=vis
	self.ScreenGui.Enabled=self.Visible
end

function ui:SetToggleKey(k)
	pcall(function()cas:UnbindAction("toggleTabGUI")end)
	cas:BindActionAtPriority("toggleTabGUI",function(_,s)
		if(s==Enum.UserInputState.Begin)then
			self:SetVisibility(not self.Visible)
		end
	end,false,Enum.ContextActionPriority.High.Value+1,k)
end

function ui.new(settings)
	local settings = typeof(settings)=='table' and settings or {};
	
	local screenGUI = Instance.new("ScreenGui")
	screenGUI.Name='TabUI'
	screenGUI.DisplayOrder=9e9
	screenGUI.Parent = game:service'RunService':IsStudio() and localPlayer.PlayerGui or game.CoreGui
	local mainUI = uiDesign.Main:Clone()
	mainUI.Parent = screenGUI
	local list = mainUI.List;
	local layout = list:WaitForChild'UIListLayout'
	list.ChildAdded:connect(function()
		mainUI.Size=UDim2.new(0,mainUI.Size.X.Offset,0,layout.AbsoluteContentSize.Y)
	end)
	local r;
	r=setmetatable({
		Cursor=mainUI.Selection;
		SelectedIdx=1;
		Inside=nil;
		MainColor=settings.Color or mainUI.BackgroundColor3;
		ListInstance=list;
		Children={};
		UI=mainUI;
		MainUI=mainUI;
		ScreenGui=screenGUI;
		Visible=true;
	},ui)
	r:SetToggleKey(settings.ToggleKey or Enum.KeyCode.Semicolon)
	table.insert(uiList,r)
	return r;
end

setmetatable(tab,{__index=ui;})

cas:BindActionAtPriority("tabUp",menuStuff,false,Enum.ContextActionPriority.High.Value+1,Enum.KeyCode.Up)
cas:BindActionAtPriority("tabDown",menuStuff,false,Enum.ContextActionPriority.High.Value+1,Enum.KeyCode.Down)
cas:BindActionAtPriority("tabEnter",menuStuff,false,Enum.ContextActionPriority.High.Value+1,Enum.KeyCode.Left)
cas:BindActionAtPriority("tabLeave",menuStuff,false,Enum.ContextActionPriority.High.Value+1,Enum.KeyCode.Right)
cas:BindActionAtPriority("tabUse",menuStuff,false,Enum.ContextActionPriority.High.Value+1,Enum.KeyCode.Return)
return ui;
