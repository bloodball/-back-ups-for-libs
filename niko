local ScreenGui = Instance.new("ScreenGui")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Name = "nikouilib"

local lib = {}

lib.Colors = {}
lib.Colors.Underline = Color3.new(1,0,0)
lib.Colors.Header = Color3.new(0.235294, 0.235294, 0.235294)
lib.Colors.Body = Color3.new(0.27451, 0.27451, 0.27451)
lib.Colors.Text = Color3.new(0.85098, 0.85098, 0.85098)
lib.Colors.Button = Color3.new(0.235294, 0.235294, 0.235294)
lib.Colors.Dropdown = Color3.new(0.196078, 0.196078, 0.196078);
lib.Colors.PlaceholderText = Color3.new(0.635294, 0.635294, 0.635294)
lib.Colors.HideButton = Color3.new(0.941177, 0.941177, 0.941177)
lib.Colors.Border = Color3.new(102/255,102/255,102/255)
lib.Colors.Checkbox = {}
lib.Colors.Checkbox.Checked = Color3.new(230/255,230/255,230/255)
lib.Colors.Checkbox.Unchecked = Color3.new(0.235294, 0.235294, 0.235294)

local function getNextWindowPos()
	local biggest = 0;
		local ok = nil;
		for i,v in pairs(ScreenGui:GetChildren()) do
			if v.Position.X.Offset>biggest then
				biggest = v.Position.X.Offset
				ok = v;
			end
		end
		if biggest == 0 then
			biggest = biggest + 5;
		else
			biggest = biggest + ok.Size.X.Offset + 5;
		end
		
		return biggest;
end

function lib:MakeWindow(title)
	
	
	local Top = Instance.new("Frame")
	local Style = Instance.new("Frame")
	local Body = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local Hide = Instance.new("TextButton")
	
	Top.Name = title
	
	Top.BackgroundColor3 = lib.Colors.Header
	Top.BorderSizePixel = 0
	Top.Position = UDim2.new(0, getNextWindowPos()+ 100, 0, 100)
	Top.Size = UDim2.new(0, 250, 0, 25)
	Top.Active = true
	Top.Draggable = true;
	Top.Parent = ScreenGui
	
	Style.Name = "Style"
	Style.Parent = Top
	Style.BackgroundColor3 = lib.Colors.Underline
	Style.BorderSizePixel = 0
	Style.Position = UDim2.new(0, 0, 1, 0)
	Style.Size = UDim2.new(1, 0, 0, 2)
	
	Body.Name = "Body"
	Body.Parent = Style
	Body.BackgroundColor3 = lib.Colors.Body
	Body.BorderSizePixel = 0
	Body.Position = UDim2.new(0, 0, 1, 0)
	Body.Size = UDim2.new(1, 0, 0, 85)
	
	Title.Name = "Title"
	Title.Parent = Top
	Title.BackgroundColor3 = Color3.new(1, 1, 1)
	Title.BackgroundTransparency = 1
	Title.Position = UDim2.new(0, 5, 0, 0)
	Title.Size = UDim2.new(0, 1, 1, 0)
	Title.Font = Enum.Font.Code
	Title.Text = title
	Title.TextColor3 = lib.Colors.Text
	Title.TextSize = 14
	Title.TextXAlignment = Enum.TextXAlignment.Left
	
	Hide.Name = "Hide"
	Hide.Parent = Top
	Hide.BackgroundColor3 = Color3.new(1, 1, 1)
	Hide.BackgroundTransparency = 1
	Hide.Position = UDim2.new(1, -25, 0, 0)
	Hide.Size = UDim2.new(0, 25, 1, 0)
	Hide.Font = Enum.Font.GothamBold
	Hide.Text = "-"
	Hide.TextColor3 = lib.Colors.HideButton
	Hide.TextSize = 14
	
	local hidden = true;
	
	
	Hide.MouseButton1Click:connect(function()
		hidden = not hidden;
		Body.Visible = hidden;
	end)
	
	local ez = {}
	
	ez.Frame = Top;
	
	local nextpos = 5;
	
	local function getNextPos()
		local biggest = 0;
		local ok = nil;
		for i,v in pairs(Body:GetChildren()) do
			if v.Position.Y.Offset>biggest then
				biggest = v.Position.Y.Offset
				ok = v;
			end
		end
		if biggest == 0 then
			biggest = biggest + 5;
		else
			biggest = biggest + ok.Size.Y.Offset + 5;
		end
		
		return biggest;
	end
	
	function ez:addCheckbox(title)
		local Checkbox = Instance.new("TextButton")
		local CheckboxLabel = Instance.new("TextLabel")
		local checked = Instance.new("BoolValue")
	
		Checkbox.Name = "Checkbox"
		
		Checkbox.BackgroundColor3 = lib.Colors.Checkbox.Unchecked
		Checkbox.BorderColor3 = lib.Colors.Border
		
		Checkbox.Size = UDim2.new(0, 20, 0, 20)
		Checkbox.Font = Enum.Font.GothamBold
		Checkbox.Text = ""
		Checkbox.TextColor3 = lib.Colors.Text
		Checkbox.TextSize = 14
		
		CheckboxLabel.Name = "CheckboxLabel"
		CheckboxLabel.Parent = Checkbox
		CheckboxLabel.BackgroundColor3 = Color3.new(1, 1, 1)
		CheckboxLabel.BackgroundTransparency = 1
		CheckboxLabel.Position = UDim2.new(1, 5, 0, -2)
		CheckboxLabel.Size = UDim2.new(0, 200, 0, 25)
		CheckboxLabel.Font = Enum.Font.Code
		CheckboxLabel.Text = title
		CheckboxLabel.TextColor3 = lib.Colors.Text
		CheckboxLabel.TextSize = 15
		CheckboxLabel.TextWrapped = true
		CheckboxLabel.TextXAlignment = Enum.TextXAlignment.Left
		
		checked.Parent = Checkbox
		
		Checkbox.Position = UDim2.new(0, 5, 0, getNextPos())
		
		
		Checkbox.Parent = Body
		
		Body.Size = UDim2.new(1,0,0,getNextPos())
		
		Checkbox.MouseButton1Click:connect(function()
			if checked.Value then
				checked.Value = false;
				Checkbox.BackgroundColor3 = lib.Colors.Checkbox.Unchecked
			else
				checked.Value = true;
				Checkbox.BackgroundColor3 = lib.Colors.Checkbox.Checked
			end
			
			
		end)
		
		local cb = {}
		
		cb.Checked = checked;
		cb.Frame = Checkbox
		
		return cb
	end
	
	function ez:addButton(title,func)
		local Button = Instance.new("TextButton")
		
		Button.Name = "Button"
		
		Button.BackgroundColor3 = lib.Colors.Button
		Button.BorderColor3 = lib.Colors.Border
		Button.Size = UDim2.new(0, 240, 0, 20)
		Button.Font = Enum.Font.Code
		Button.Text = title
		Button.TextColor3 = lib.Colors.Text
		Button.TextSize = 15
		
		Button.Position = UDim2.new(0, 5, 0, getNextPos())
		
		Body.Size = UDim2.new(1,0,0,getNextPos()+5)
		
		Button.Parent = Body
		
		Body.Size = UDim2.new(1,0,0,getNextPos())
		
		Button.MouseButton1Click:connect(func)
	end
	
	function ez:addTextBox(title)
		local TextBox = Instance.new("TextBox")

		TextBox.BackgroundColor3 = lib.Colors.Button
		TextBox.BorderColor3 = lib.Colors.Border
		TextBox.Size = UDim2.new(0, 240, 0, 20)
		TextBox.Font = Enum.Font.Code
		TextBox.PlaceholderColor3 = lib.Colors.PlaceholderText
		TextBox.PlaceholderText = title
		TextBox.Text = ""
		TextBox.TextColor3 = lib.Colors.Text
		TextBox.TextSize = 14
		TextBox.TextWrapped = true
		TextBox.ZIndex = 1;
		
		TextBox.Position = UDim2.new(0, 5, 0, getNextPos())
		
		TextBox.Parent = Body
		
		local k = Instance.new("StringValue",TextBox)
		
		Body.Size = UDim2.new(1,0,0,getNextPos());
		
		local r = {}
		TextBox.Changed:connect(function()
			k.Value = TextBox.Text;
		end)
		
		r.Text = k;
		r.Frame = TextBox
		
		return r;
	end
	
	function ez:addTextBoxF(title,func)
		local TextBox = Instance.new("TextBox")

		TextBox.BackgroundColor3 = lib.Colors.Button
		TextBox.BorderColor3 = lib.Colors.Border
		TextBox.Size = UDim2.new(0, 240, 0, 20)
		TextBox.Font = Enum.Font.Code
		TextBox.PlaceholderColor3 = lib.Colors.PlaceholderText
		TextBox.PlaceholderText = title
		TextBox.Text = ""
		TextBox.TextColor3 = lib.Colors.Text
		TextBox.TextSize = 14
		TextBox.TextWrapped = true
		TextBox.ZIndex = 1;
		
		TextBox.Position = UDim2.new(0, 5, 0, getNextPos())
		
		local val = Instance.new"StringValue"
		val.Parent = TextBox
		val.Value = "";
		
		TextBox.Parent = Body
		
		Body.Size = UDim2.new(1,0,0,getNextPos());
		
		TextBox.Changed:connect(function()
			val.Value = TextBox.Text
		end)
		
		TextBox.FocusLost:connect(function(enterPressed)
			if enterPressed then
				func(val.Value)
			end
		end)
		
		return val;
	end
	
	function ez:addLabel(text,align)
		local Label = Instance.new("TextLabel")

		Label.Name = "Label"
		Label.BackgroundColor3 = Color3.new(1, 1, 1)
		Label.BackgroundTransparency = 1
		Label.Position = UDim2.new(0, 5, 0, 110)
		Label.Size = UDim2.new(1, -10, 0, 15)
		Label.Font = Enum.Font.Code
		Label.Text = text
		Label.TextColor3 = lib.Colors.Text
		Label.TextSize = 15
		Label.TextWrapped = true
		Label.TextXAlignment = Enum.TextXAlignment[align]
		
		local val = Instance.new"StringValue"
		val.Parent = Label
		
		val.Value = text;
		
		Label.Position = UDim2.new(0, 5, 0, getNextPos())
		
		Label.Parent = Body
		
		Body.Size = UDim2.new(1,0,0,getNextPos()+5)
		
		val.Changed:connect(function()
			Label.Text = val.Value
		end)
		
		return val;
	end
	
	function ez:addDropdown(options)
		local Dropdown = Instance.new("TextLabel")
		local DropdownBtn = Instance.new("ImageButton")
		
		Dropdown.Name = "Dropdown"
		
		Dropdown.BackgroundColor3 = lib.Colors.Dropdown
		Dropdown.BorderSizePixel = 0
		Dropdown.Size = UDim2.new(0, 240, 0, 25)
		Dropdown.Font = Enum.Font.Code
		Dropdown.Text = "  "..options[1]
		Dropdown.TextColor3 = lib.Colors.Text
		Dropdown.TextSize = 15
		Dropdown.TextWrapped = true
		Dropdown.TextXAlignment = Enum.TextXAlignment.Left
		Dropdown.ZIndex = 4;
		
		
		DropdownBtn.Name = "DropdownBtn"
		DropdownBtn.Parent = Dropdown
		DropdownBtn.BackgroundColor3 = lib.Colors.Dropdown
		DropdownBtn.BackgroundTransparency = 1
		DropdownBtn.Position = UDim2.new(1, -25, 0, 0)
		DropdownBtn.Size = UDim2.new(0, 25, 1, 0)
		DropdownBtn.Image = "rbxassetid://293296862"
		
		local items = Instance.new("Folder")
		items.Parent = Dropdown
		items.Name = "items"
		
		local open = Instance.new("BoolValue")
		open.Parent = Dropdown
		open.Name = "Open"
		open.Value = false;
		
		local selected = Instance.new("StringValue")
		selected.Parent = Dropdown
		selected.Value = "Selected"
		
		selected.Value = options[1]
		
		Dropdown.Position = UDim2.new(0, 5, 0, getNextPos())
		
		Body.Size = UDim2.new(1,0,0,getNextPos()+5)
		
		Dropdown.Parent = Body
		
		Body.Size = UDim2.new(1,0,0,getNextPos())
		
		for i,v in pairs(options) do
			local option = Instance.new("TextButton")
			
			option.Name = v
			option.Parent = items
			option.BackgroundColor3 = lib.Colors.Dropdown
			option.BorderColor3 = lib.Colors.Border
			option.BorderSizePixel = 0
			option.Position = UDim2.new(0, 0, #items:GetChildren(), 0)
			option.Size = UDim2.new(0, 240, 0, 25)
			option.Font = Enum.Font.Code
			option.Text = " "..v
			option.TextColor3 = lib.Colors.Text
			option.TextSize = 15
			option.TextXAlignment = Enum.TextXAlignment.Left
			option.Visible = false;
			option.ZIndex = 5;
			
			option.MouseButton1Click:connect(function()
				selected.Value = v;
				open.Value = false;
				
				for i,v in pairs(items:GetChildren()) do
					v.Visible = false;
				end
				
				Dropdown.Text = "  "..v;
			end)
			
			
		end
		
		DropdownBtn.MouseButton1Click:connect(function()
			for i,v in pairs(items:GetChildren()) do
				open.Value = true;
				v.Visible = true;
			end
		end)
		
		local dr = {}
		
		dr.Open = open
		dr.Selected = selected
		dr.Frame = Dropdown
		
		return dr;
		
	end
	
	
	
	return ez;
end

return lib;
