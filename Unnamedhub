local Global = getgenv and getgenv() or _G

function TableRemove(tab: table, arg: any)
	--print("remove", tab)
    for n,v in pairs(tab) do
        if v == arg then
			--print("removed", v)
			table.remove(tab, n)
		end
    end
	return tab
end

function TableAdd(tab: table, arg: any, pos: number?)
	--print("add", tab)
	if pos then
		table.insert(tab, arg, pos)
	else
	--print("ok for", arg)
    table.insert(tab, arg)
	end
	return tab
end

module = {}
function module:CreateGui(name)
	local Window = {}
	local AlreadyLoaded = false
	for _,v in pairs(game:GetService("CoreGui"):GetChildren()) do
		if v:IsA("ScreenGui") and v:GetAttribute("Loaded") ~= nil then
			AlreadyLoaded = true	
		end
	end
	if AlreadyLoaded == true then return end
	if Global.Activate == nil then Global.Activate = "rightshift" end

	--# UI Parts

	local ScreenGui = Instance.new("ScreenGui")
	local Hide = Instance.new("Frame")
	local StringBoxTemplate = Instance.new("TextButton")
	local Open = Instance.new("TextButton")
	local TextBox = Instance.new("TextBox")
	local CheckTemplate = Instance.new("TextButton")
	local CheckBox = Instance.new("TextButton")
	local check = Instance.new("ImageLabel")
	local ButtonTemplate = Instance.new("TextButton")
	local NumberBoxTemplate = Instance.new("TextButton")
	local Open_2 = Instance.new("TextButton")
	local TextBox_2 = Instance.new("TextBox")
	local FrameTemplate = Instance.new("Frame")
	local Content = Instance.new("Folder")
	local CategoryText = Instance.new("TextLabel")
	local CategoryName = Instance.new("Frame")
	local Close = Instance.new("ImageButton")
	local Frames = Instance.new("Folder")
	local UICorner = Instance.new("UICorner")
	local UICorner_2 = Instance.new("UICorner")
	local UICorner_3 = Instance.new("UICorner")
	local UICorner_4 = Instance.new("UICorner")
	local DropBoxTemplate = Instance.new("TextButton")
	local Open_3 = Instance.new("ImageButton")
	local DropFrame = Instance.new("Frame")
	local Scrolling = Instance.new("ScrollingFrame")
	local ScrollingUI = Instance.new("UIListLayout")
	local UICorner_5 = Instance.new("UICorner")
	local DropButton = Instance.new("TextButton")
	local UICorner_6 = Instance.new("UICorner")
	local TextLabel = Instance.new("TextLabel")
	local DropCheck = Instance.new("TextButton")
    local Check = Instance.new("ImageButton")
    local CheckCorner = Instance.new("UICorner")
    local CheckCorner1 = Instance.new("UICorner")

	--Properties:
	local Par = game:GetService("CoreGui")
	local synprotect = nil
	if (syn and syn.protect_gui) then
		synprotect = syn.protect_gui 
	end
	if synprotect and not gethui then
		synprotect(ScreenGui)
        end
	if gethui then
            Par = gethui()
        end

	ScreenGui.Name = "UH"
	ScreenGui.Parent = Par
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	ScreenGui.ResetOnSpawn = false
	ScreenGui.IgnoreGuiInset = true
	ScreenGui:SetAttribute("Loaded", true)
	Global.__UI = ScreenGui
	
	Hide.Parent = ScreenGui
	Hide.Size = UDim2.new(1,0,1,0)
	Hide.ZIndex = 0
	Hide.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Hide.BackgroundTransparency = 0.7


	Frames.Name = "Frames"
	Frames.Parent = ScreenGui

	FrameTemplate.Name = "FrameTemplate"
	FrameTemplate.BackgroundColor3 = Color3.fromRGB(255, 0, 127)
	FrameTemplate.Position = UDim2.new(0.033036869, 0, 0.0456620641, 0)
	FrameTemplate.Size = UDim2.new(0, 188, 0, 35)

	UICorner.CornerRadius = UDim.new(0, 5)
	UICorner.Parent = FrameTemplate

	CategoryText.Name = "CategoryText"
	CategoryText.Parent = FrameTemplate
	CategoryText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CategoryText.BackgroundTransparency = 1.000
	CategoryText.Size = UDim2.new(0, 158, 0, 35)
	CategoryText.Font = Enum.Font.GothamBlack
	CategoryText.Text = "HeaderText"
	CategoryText.TextColor3 = Color3.fromRGB(255, 255, 255)
	CategoryText.TextSize = 16.000

	Close.Name = "Close"
	Close.Parent = FrameTemplate
	Close.BackgroundTransparency = 1.000
	Close.Position = UDim2.new(0.840425491, 0, 0.128571421, 0)
	Close.Size = UDim2.new(0, 25, 0, 25)
	Close.ZIndex = 2
	Close.Image = "rbxassetid://6764432408"
	Close.ImageRectOffset = Vector2.new(200, 550)
	Close.ImageRectSize = Vector2.new(50, 50)

	CategoryName.Name = "CategoryFrame"
	CategoryName.Parent = FrameTemplate
	CategoryName.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	CategoryName.BackgroundTransparency = 0.400
	CategoryName.Position = UDim2.new(0, 0, 1, 0)
	CategoryName.Size = UDim2.new(0, 188, 0, 333)

	UICorner_2.CornerRadius = UDim.new(0, 5)
	UICorner_2.Parent = CategoryName
	Content.Name = "Content"
	Content.Parent = FrameTemplate
	--[[
	Content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Content.BackgroundTransparency = 1.000
	Content.Position = UDim2.new(0.036316473, 0, 5, 0)
	Content.Size = UDim2.new(0, 188, 0, 35)
	]]--

	ButtonTemplate.Name = "ButtonTemplate"
	ButtonTemplate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ButtonTemplate.BackgroundTransparency = 1.000
	ButtonTemplate.BorderSizePixel = 0
	ButtonTemplate.Position = UDim2.new(0.029, 0, 1.471, 0)
	ButtonTemplate.Size = UDim2.new(0, 168, 0, 29)
	ButtonTemplate.Font = Enum.Font.Jura
	ButtonTemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
	ButtonTemplate.TextSize = 18.000
	ButtonTemplate.TextXAlignment = Enum.TextXAlignment.Left

	CheckTemplate.Name = "CheckTemplate"
	CheckTemplate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CheckTemplate.BackgroundTransparency = 1.000
	CheckTemplate.BorderSizePixel = 0
	CheckTemplate.Position = UDim2.new(0.029, 0, 3.529, 0)
	CheckTemplate.Size = UDim2.new(0, 168, 0, 29)
	CheckTemplate.Font = Enum.Font.Jura
	CheckTemplate.Text = "CheckBox"
	CheckTemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
	CheckTemplate.TextSize = 18.000
	CheckTemplate.TextXAlignment = Enum.TextXAlignment.Left

	CheckBox.Name = "CheckBox"
	CheckBox.Parent = CheckTemplate
	CheckBox.BackgroundColor3 = Color3.fromRGB(103, 103, 103)
	CheckBox.Position = UDim2.new(0.817003667, 0, 0.146585941, 0)
	CheckBox.Size = UDim2.new(0, 24, 0, 24)
	CheckBox.Font = Enum.Font.SourceSans
	CheckBox.Text = ""
	CheckBox.TextColor3 = Color3.fromRGB(0, 0, 0)
	CheckBox.TextSize = 14.000

	check.Name = "check"
	check.Parent = CheckBox
	check.BackgroundTransparency = 1.000
	check.Position = UDim2.new(-0.0315256119, 0, 0, 0)
	check.Size = UDim2.new(0, 24, 0, 24)
	check.Visible = false
	check.ZIndex = 2
	check.Image = "rbxassetid://3926305904"
	check.ImageRectOffset = Vector2.new(312, 4)
	check.ImageRectSize = Vector2.new(24, 24)

	NumberBoxTemplate.Name = "NumberBoxTemplate"
	NumberBoxTemplate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NumberBoxTemplate.BackgroundTransparency = 1.000
	NumberBoxTemplate.BorderSizePixel = 0
	NumberBoxTemplate.Position = UDim2.new(0.029, 0, 7.118, 0)
	NumberBoxTemplate.Size = UDim2.new(0, 168, 0, 29)
	NumberBoxTemplate.Font = Enum.Font.Jura
	NumberBoxTemplate.Text = "NumberBox"
	NumberBoxTemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
	NumberBoxTemplate.TextSize = 18.000
	NumberBoxTemplate.TextXAlignment = Enum.TextXAlignment.Left

	Open.Name = "Open"
	Open.Parent = NumberBoxTemplate
	Open.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Open.BackgroundTransparency = 1.000
	Open.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Open.BorderSizePixel = 0
	Open.Position = UDim2.new(0.808369935, 0, -0.00608562585, 0)
	Open.Size = UDim2.new(0, 33, 0, 29)
	Open.Font = Enum.Font.Arcade
	Open.Text = ">>"
	Open.TextColor3 = Color3.fromRGB(255, 255, 255)
	Open.TextSize = 18.000
	Open.TextXAlignment = Enum.TextXAlignment.Left

	TextBox.Parent = Open
	TextBox.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	TextBox.BackgroundTransparency = 0.400
	TextBox.BorderColor3 = Color3.fromRGB(94, 94, 94)
	TextBox.Position = UDim2.new(1.4848485, 0, 0, 0)
	TextBox.Size = UDim2.new(0, 200, 0, 29)
	TextBox.Visible = false
	TextBox.Font = Enum.Font.Jura
	TextBox.PlaceholderText = "Insert Number Here"
	TextBox.Text = ""
	TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.TextSize = 14.000

	UICorner_3.CornerRadius = UDim.new(0, 5)
	UICorner_3.Parent = TextBox

	StringBoxTemplate.Name = "StringBoxTemplate"
	StringBoxTemplate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	StringBoxTemplate.BackgroundTransparency = 1.000
	StringBoxTemplate.BorderSizePixel = 0
	StringBoxTemplate.Position = UDim2.new(0.029, 0, 5.235, 0)
	StringBoxTemplate.Size = UDim2.new(0, 168, 0, 29)
	StringBoxTemplate.Font = Enum.Font.Jura
	StringBoxTemplate.Text = "TextBox"
	StringBoxTemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
	StringBoxTemplate.TextSize = 18.000
	StringBoxTemplate.TextXAlignment = Enum.TextXAlignment.Left

	Open_2.Name = "Open"
	Open_2.Parent = StringBoxTemplate
	Open_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Open_2.BackgroundTransparency = 1.000
	Open_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Open_2.BorderSizePixel = 0
	Open_2.Position = UDim2.new(0.808369935, 0, -0.00608562585, 0)
	Open_2.Size = UDim2.new(0, 33, 0, 29)
	Open_2.Font = Enum.Font.Arcade
	Open_2.Text = ">>"
	Open_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Open_2.TextSize = 18.000
	Open_2.TextXAlignment = Enum.TextXAlignment.Left

	TextBox_2.Parent = Open_2
	TextBox_2.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	TextBox_2.BackgroundTransparency = 0.400
	TextBox_2.BorderColor3 = Color3.fromRGB(94, 94, 94)
	TextBox_2.Position = UDim2.new(1.63636363, 0, -0.206896558, 0)
	TextBox_2.Size = UDim2.new(0, 200, 0, 35)
	TextBox_2.Visible = false
	TextBox_2.Font = Enum.Font.Jura
	TextBox_2.PlaceholderText = "Insert Text Here"
	TextBox_2.Text = ""
	TextBox_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextBox_2.TextSize = 14.000

	UICorner_4.CornerRadius = UDim.new(0, 5)
	UICorner_4.Parent = TextBox_2
	
	DropBoxTemplate.Name = "DropBoxTemplate"
	DropBoxTemplate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	DropBoxTemplate.BackgroundTransparency = 1.000
	DropBoxTemplate.BorderSizePixel = 0
	DropBoxTemplate.Position = UDim2.new(0.029, 0, 0.528528571, 0)
	DropBoxTemplate.Size = UDim2.new(0, 168, 0, 29)
	DropBoxTemplate.Font = Enum.Font.Jura
	DropBoxTemplate.Text = "NumberBox"
	DropBoxTemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
	DropBoxTemplate.TextSize = 18.000
	DropBoxTemplate.TextXAlignment = Enum.TextXAlignment.Left

	Open_3.Name = "Open"
	Open_3.Parent = DropBoxTemplate
	Open_3.BackgroundTransparency = 1.000
	Open_3.Position = UDim2.new(0.827380896, 0, 0.12068966, 0)
	Open_3.Size = UDim2.new(0, 25, 0, 25)
	Open_3.ZIndex = 2
	Open_3.Image = "rbxassetid://3926305904"
	Open_3.ImageRectOffset = Vector2.new(564, 284)
	Open_3.ImageRectSize = Vector2.new(36, 36)

	DropFrame.Name = "DropFrame"
	DropFrame.Visible = false
	DropFrame.Parent = DropBoxTemplate
	DropFrame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
	DropFrame.Position = UDim2.new(1.11309528, 0, -0.448276401, 0)
	DropFrame.Size = UDim2.new(0, 177, 0, 100)
	
	Scrolling.Name = "Scrolling"
	Scrolling.Parent = DropFrame
	Scrolling.Active = true
	Scrolling.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
	Scrolling.BorderSizePixel = 0
	Scrolling.Position = UDim2.new(0.0229015462, 0, 0.0199993905, 0)
	Scrolling.Size = UDim2.new(0, 167, 0, 98)
	Scrolling.CanvasSize = UDim2.new(0, 0, 0.899999976, 0)
	Scrolling.ScrollBarThickness = 5

	ScrollingUI.Name = "ScrollingUI"
	ScrollingUI.Parent = Scrolling
	ScrollingUI.SortOrder = Enum.SortOrder.LayoutOrder
	ScrollingUI.Padding = UDim.new(0, 4)

	UICorner_5.Parent = DropFrame

	DropButton.Name = "DropButton"
	DropButton.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
	DropButton.Size = UDim2.new(0, 159, 0, 23)
	DropButton.Font = Enum.Font.GothamMedium
	DropButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	DropButton.TextSize = 14.000
	
	TextLabel.Parent = Open_3
	TextBox.Text = "None"
	TextLabel.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	TextLabel.Position = UDim2.new(-5.71999979, 0, 0.999999404, 0)
	TextLabel.Size = UDim2.new(0, 173, 0, 17)
	TextLabel.Font = Enum.Font.GothamMedium
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 12.000

	UICorner_6.Parent = DropButton

	DropCheck.Name = "CheckBox"
	DropCheck.Visible = false
	DropCheck.Parent = DropButton
	DropCheck.BackgroundColor3 = Color3.fromRGB(103, 103, 103)
	DropCheck.Position = UDim2.new(0.817003667, 0, 0.146585941, 0)
	DropCheck.Size = UDim2.new(0, 20, 0, 20)
	DropCheck.Font = Enum.Font.SourceSans
	DropCheck.Text = ""
	DropCheck.TextColor3 = Color3.fromRGB(0, 0, 0)
	DropCheck.TextSize = 14.000

    Check.Name = "check"
	Check.Parent = DropCheck
	Check.BackgroundTransparency = 1.000
	Check.Position = UDim2.new(-0.0315256119, 0, 0, 0)
	Check.Size = UDim2.new(0, 23, 0, 23)
	Check.Visible = false
	Check.ZIndex = 2
	Check.Image = "rbxassetid://3926305904"
	Check.ImageRectOffset = Vector2.new(312, 4)
	Check.ImageRectSize = Vector2.new(24, 24)

    CheckCorner.Parent = DropCheck

	CheckCorner1.Parent = Check
	
	-- Scripts:
	local LastPos = 0
	local First = 1
	local vis = false
	local Activate = Global.Activate
	Hide.Visible = vis
	local UserInputService = game:GetService("UserInputService")
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end
		-- print(input.KeyCode.Name:lower())
		if input.KeyCode.Name:lower() ~= Activate:lower() then return end
		vis = not vis
		Hide.Visible = vis
		for _,v in pairs(Frames:GetChildren()) do
			v.Visible = vis
		end
	end)

	function Window:AddFrame(FName, Size)
		local Tab = {}
		local Cop = FrameTemplate:Clone()
		Cop.Name = FName
		Cop:FindFirstChild("CategoryText").Text = FName
		Cop.Parent = Frames
		Cop.Visible = vis
		if First == 0 then
			Cop.Position = UDim2.new(LastPos.X.Scale, LastPos.X.Offset + 230, LastPos.Y.Scale, 0)
		else
			First = 0
		end
		LastPos = Cop.Position
		if Size ~= nil then
			Cop:WaitForChild("CategoryFrame").Size = UDim2.fromOffset(Cop:WaitForChild("CategoryFrame").Size.X.Offset, Size)
		end
		Cop:SetAttribute("First", 0)
		local e = Instance.new("ObjectValue", Cop)
		e.Name = "LastBut"
		Cop:WaitForChild("Close").MouseButton1Click:Connect(function()
			local Rot = Cop:WaitForChild("Close").Rotation + 180
			
			Cop:WaitForChild("Close").Rotation = Rot
			
			for _,v in pairs(Cop:WaitForChild("Content"):GetChildren()) do
				v.Visible = not Cop:WaitForChild("CategoryFrame").Visible
			end
			Cop:WaitForChild("CategoryFrame").Visible = not Cop:WaitForChild("CategoryFrame").Visible
		end)
		Cop.Active = true
		Cop.Draggable = true

		local Thing = Cop
		function Tab:AddButton(Name, Run)
			Run = Run or function() end
			local Thinge = Thing:WaitForChild("Content")
			local FirstBut = Thing:GetAttribute("First")
			local LastBut = Thing:WaitForChild("LastBut").Value
			local but = ButtonTemplate:Clone()
			but.Parent = Thinge
			but.Name = Name
			but.Text = Name
			if FirstBut ~= 0 then
				if FirstBut == 1 then
					if LastBut:FindFirstChild("SubName") then
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 70)
					else
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 90)
					end
					Thing:SetAttribute("First", 2)
				else
					if LastBut:FindFirstChild("SubName") then
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 20)
					else
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 40)
					end
				end
				--but.Position = UDim2.fromScale(LastBut.Position.X.Scale)
			else
				Thing:SetAttribute("First", 1)
			end
			Thing:WaitForChild("LastBut").Value = but
			-- print(Thing:WaitForChild("LastBut").Value)
			but.MouseButton1Click:Connect(function()
				Run()
			end)
		end

		function Tab:AddTextBox(Name, callback)
			local Box = {}
			callback = callback or function() end
			Thinge = Thing:WaitForChild("Content")
			local FirstBut = Thing:GetAttribute("First")
			local LastBut = Thing:WaitForChild("LastBut").Value
			local but = StringBoxTemplate:Clone()
			but.Parent = Thinge
			but.Name = Name
			but.Text = Name
			if FirstBut ~= 0 then
				if FirstBut == 1 then
					if LastBut:FindFirstChild("SubName") then
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 70)
					else
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 90)
					end
					Thing:SetAttribute("First", 2)
				else
					if LastBut:FindFirstChild("SubName") then
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 20)
					else
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 40)
					end
				end
				--but.Position = UDim2.fromScale(LastBut.Position.X.Scale)
			else
				Thing:SetAttribute("First", 1)
			end
			Thing:WaitForChild("LastBut").Value = but
			-- print(Thing:WaitForChild("LastBut").Value)
			
			but.MouseButton1Click:Connect(function()
				callback(but.Open.TextBox.Text)
			end)
			
			but.Open.MouseButton1Click:Connect(function()
				but.Open.TextBox.Visible = not but.Open.TextBox.Visible
			end)
			function Box:GetString()
				h = but.Open.TextBox
				if (not h:IsA("TextBox") and #h:GetChildren() > 0) then error("The item isn't a string box !") return end
				return h.Text
			end
			return Box
		end

		function Tab:AddNumberBox(Name, Run)
			local Num = {}
			Run = Run or function() end
			Thinge = Thing:WaitForChild("Content")
			local FirstBut = Thing:GetAttribute("First")
			local LastBut = Thing:WaitForChild("LastBut").Value
			local but = NumberBoxTemplate:Clone()
			but.Parent = Thinge
			but.Name = Name
			but.Text = Name
			if FirstBut ~= 0 then
				if FirstBut == 1 then
					if LastBut:FindFirstChild("SubName") then
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 70)
					else
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 90)
					end
					Thing:SetAttribute("First", 2)
				else
					if LastBut:FindFirstChild("SubName") then
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 20)
					else
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 40)
					end
				end
				--but.Position = UDim2.fromScale(LastBut.Position.X.Scale)
			else
				Thing:SetAttribute("First", 1)
			end
			Thing:WaitForChild("LastBut").Value = but
			-- print(Thing:WaitForChild("LastBut").Value)
			local TextBox = but.Open.TextBox
			TextBox:GetPropertyChangedSignal("Text"):Connect(function()
				TextBox.Text = TextBox.Text:gsub('%D+', '');
			end)
			but.Open.MouseButton1Click:Connect(function()
				but.Open.TextBox.Visible = not but.Open.TextBox.Visible
			end)
			but.MouseButton1Click:Connect(function()
				if but.Open.TextBox.Text == "" then return end
				local Number = tonumber(but.Open.TextBox.Text)
				Run(Number)
			end)
			function Num:GetNumber()
				h = but.Open.TextBox
				if (not h:IsA("TextBox") and #h:GetChildren() > 0) then error("The item isn't a string box !") return end
				return tonumber(h.Text)		
			end
			return Num
		end

		function Tab:AddCheckBox(Name, callback)
			callback = callback or function() end
			Thinge = Thing:WaitForChild("Content")
			local FirstBut = Thing:GetAttribute("First")
			local LastBut = Thing:WaitForChild("LastBut").Value
			local but = CheckTemplate:Clone()
			but.Parent = Thinge
			but.Name = Name
			but.Text = Name
			if FirstBut ~= 0 then
				if FirstBut == 1 then
					if LastBut:FindFirstChild("SubName") then
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 70)
					else
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 90)
					end
					Thing:SetAttribute("First", 2)
				else
					if LastBut:FindFirstChild("SubName") then
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 20)
					else
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 40)
					end

				end
				--but.Position = UDim2.fromScale(LastBut.Position.X.Scale)
			else
				Thing:SetAttribute("First", 1)
			end
			Thing:WaitForChild("LastBut").Value = but
			-- print(Thing:WaitForChild("LastBut").Value)
			but:WaitForChild("CheckBox").MouseButton1Click:Connect(function()
				but.CheckBox.check.Visible = not but.CheckBox.check.Visible
				-- Using not to fix the thing going opposite (on = off, off = on)
				local activ = but.CheckBox.check.Visible
				callback(activ)
			end)

		end
		
		function Tab:AddDropBox(Name, callback, Check)
			local Box = {};
			callback = callback or function() end
		    if not type(Check) == "boolean" then Check = false end
			Thinge = Thing:WaitForChild("Content")
			local FirstBut = Thing:GetAttribute("First")
			local LastBut = Thing:WaitForChild("LastBut").Value
			local but = DropBoxTemplate:Clone()
			local CurElement
			if Check == true then CurElement = {} end
			but.Parent = Thinge
			but.Name = Name
			but.Text = Name
			if FirstBut ~= 0 then
				if FirstBut == 1 then
					if LastBut:FindFirstChild("SubName") then
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 70)
					else
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 90)
					end
					Thing:SetAttribute("First", 2)
				else
					if LastBut:FindFirstChild("SubName") then
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 20)
					else
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 40)
					end
				end
				--but.Position = UDim2.fromScale(LastBut.Position.X.Scale)
			else
				Thing:SetAttribute("First", 1)
			end
			Thing:WaitForChild("LastBut").Value = but
			-- print(Thing:WaitForChild("LastBut").Value)
			
			local function Update(New)
				local TextLab = but.Open.TextLabel
				local Old     = TextLab.Text
				if New == Old and Check == false then
					TextLab.Text = "None"
					CurElement     = nil
					return
				end
				TextLab.Text = New
			end
			
			local function SizeOf(Name, Loc)
				local siz = 0
				for _,v in pairs(Loc) do
					if v.Name == Name then siz += 1 end
				end
				return siz
			end
			
			but.Open.MouseButton1Click:Connect(function()
				but.DropFrame.Visible = not but.DropFrame.Visible
			end)
			
			function Box:GetSelected()
				return CurElement
			end
			
			but.MouseButton1Click:Connect(function()
				local selected = Box:GetSelected()
				callback(selected)
			end)
			
			function Box:AddElement(Name, Value)
				local NewEl = DropButton:Clone()
				-- Avoid Clones
				NewEl.Name = Name
				if but.DropFrame.Scrolling:FindFirstChild(Name) then
					NewEl.Name = Name.."_"..tostring(SizeOf(Name, but.DropFrame.Scrolling)+1)
				end
				if Check then
					NewEl.CheckBox.Visible = true
				end
				NewEl.Text = NewEl.Name
				NewEl.Parent = but.DropFrame.Scrolling
				NewEl.MouseButton1Click:Connect(function()
					if Check == false then
					if but.Open.TextLabel.Text == NewEl.Text then return end
					end
					Update(NewEl.Name)
					if Check then
						local fix
						NewEl.CheckBox.check.Visible = not NewEl.CheckBox.check.Visible
				        local activ = NewEl.CheckBox.check.Visible
						--print(activ)
						if activ == true then
							fix = TableAdd
						else
							fix = TableRemove
						end
                      if typeof(Value) == "table" then
						 for _,ok in pairs(Value) do
							CurElement = fix(CurElement, ok)
						 end
						else
							--print(CurElement)
							CurElement = fix(CurElement, Value)
							--print("debuggg", CurElement)
						end
						--print("new", CurElement)
					else
					CurElement = Value
					end
					callback(CurElement)
				end)
			end

			function Box:RemoveElement(element)
				local el = but.DropFrame.Scrolling:FindFirstChild(element)
				if not el then error("No element found.") return nil end
				Update(el.Name)
				el:Destroy()
			end
			
			return Box
		end

		return Tab
	end
	
	
	return Window
end

return module
