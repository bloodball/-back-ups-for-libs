local Library = {}
local gs = game:GetService("TweenService")
	if game.CoreGui:FindFirstChild("MagikHax") ~= nil then
		 game.CoreGui:FindFirstChild("MagikHax"):Destroy()
	end
local toggled = true
local MagikHax = Instance.new("ScreenGui")
local Handler = Instance.new("Frame")
game:GetService('UserInputService').InputBegan:connect(function(key, gpe) 
	if (not gpe) then 
		if key.KeyCode == Enum.KeyCode.RightShift then 
			toggled = not toggled; 
			if toggled == true then
				Handler:TweenPosition(UDim2.new(0.0250000022, 0, 0.0249999985, 0),"In","Quad",0.15,true)
			else
				Handler:TweenPosition(UDim2.new(-1, 0, -0.5,0),"Out","Quad",0.15,true)
			end
		end 
	end 
end)
local UIListLayout = Instance.new("UIListLayout")
MagikHax.Name = "MagikHax"
MagikHax.Parent = game.CoreGui
MagikHax.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
MagikHax.ResetOnSpawn = false
Handler.Name = "Handler"
Handler.Parent = MagikHax
Handler.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Handler.BackgroundTransparency = 1.000
Handler.Position = UDim2.new(0.0250000022, 0, 0.0249999985, 0)
Handler.Size = UDim2.new(0, 200, 0, 120)

UIListLayout.Parent = Handler
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 2)

function Library.Category(name,description,clr)
	local thing = Instance.new("TextButton")
	local Frame = Instance.new("Frame")
	local UIListLayout_2 = Instance.new("UIListLayout")
	local Under = Instance.new("Frame")
	local Info = Instance.new("TextLabel")
	thing.Name = "thing"
	thing.Parent = Handler
	thing.BackgroundColor3 = Color3.fromRGB(29, 30, 28)
	thing.BorderSizePixel = 0
	thing.Size = UDim2.new(1, 0, 0, 30)
	thing.Font = Enum.Font.GothamSemibold
	thing.Text = " "..name
	thing.TextColor3 = Color3.fromRGB(192, 193, 192)
	thing.TextSize = 22.000
	thing.TextWrapped = true
	thing.TextXAlignment = Enum.TextXAlignment.Left
	
	Frame.Parent = thing
	Frame.BackgroundColor3 = Color3.fromRGB(30, 31, 29)
	Frame.BorderSizePixel = 0
	Frame.ClipsDescendants = true
	Frame.Position = UDim2.new(1.03499997, 0, 0, 0)
	Frame.Size = UDim2.new(0, 0, 0, 210)
	
	UIListLayout_2.Parent = Frame
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	
	Under.Name = "Under"
	Under.Parent = thing
	Under.AnchorPoint = Vector2.new(0.5, 0)
	Under.BackgroundColor3 = clr
	Under.BorderSizePixel = 0
	Under.Position = UDim2.new(0.5, 0, 0.985000014, 0)
	
	Info.Name = "Info"
	Info.Parent = thing
	Info.BackgroundColor3 = Color3.fromRGB(29, 33, 28)
	Info.BorderSizePixel = 0
	Info.ClipsDescendants = true
	Info.Position = UDim2.new(1.03499997, 0, 0, 0)
	Info.Size = UDim2.new(0, 0, 0, 30)
	Info.Font = Enum.Font.SourceSansSemibold
	Info.Text = " "..description
	Info.TextColor3 = Color3.fromRGB(212, 214, 213)
	Info.TextSize = 18.000
	Info.TextWrapped = true
	Info.TextXAlignment = Enum.TextXAlignment.Left
	local sizes = string.len(Info.Text)
	thing.MouseEnter:Connect(function()
		gs:Create(Under, TweenInfo.new(0.3), {Size =UDim2.new(1, 0,0,2)}):Play()
		gs:Create(Info, TweenInfo.new(0.3), {Size =UDim2.new(0,sizes*8,0,30)}):Play()
		wait(0.3)
	end)
	thing.MouseLeave:Connect(function()
		gs:Create(Under, TweenInfo.new(0.3), {Size =UDim2.new(0, 0,0,2)}):Play()
		gs:Create(Info, TweenInfo.new(0.3), {Size =UDim2.new(0,0,0,30)}):Play()
		wait(0.3)
	end)
	local tog = false
	local siz = 0
	thing.MouseButton1Click:Connect(function()
		for i,v in pairs(Frame:GetChildren()) do
			if v.ClassName ~= "UIListLayout" then
				siz = siz + v.Size.Y.Offset
			end
		end
		if tog == false then tog = true
			gs:Create(Frame, TweenInfo.new(0.4), {Size =UDim2.new(0, 200,0, siz)}):Play()
			wait(0.1)
			wait(0.3)
			Frame.ClipsDescendants = false
			siz = 0
		else
			tog = false
			gs:Create(Frame, TweenInfo.new(0.4), {Size =UDim2.new(0, 0,0, siz)}):Play()
			Frame.ClipsDescendants = true
			wait(0.1)
			wait(0.3)
			siz = 0
		end
	end)
	local win = {}
	
	function win:Section(name)
		local Section = Instance.new("TextLabel")
		Section.Name = "Section"
		Section.Parent = Frame
		Section.BackgroundColor3 = Color3.fromRGB(42, 44, 42)
		Section.BorderSizePixel = 0
		Section.Size = UDim2.new(0, 200, 0, 30)
		Section.Font = Enum.Font.SourceSansSemibold
		Section.Text = ""..name
		Section.TextColor3 = Color3.fromRGB(238, 239, 238)
		Section.TextSize = 18.000
	end
	function win:Toggle(name,callback)
		callback = callback or function(State)end
		local Toggle = Instance.new("TextLabel")
		local ToggleButton = Instance.new("ImageButton")
		Toggle.Name = "Toggle"
		Toggle.Parent = Frame
		Toggle.BackgroundColor3 = Color3.fromRGB(42, 44, 42)
		Toggle.BackgroundTransparency = 1.000
		Toggle.BorderSizePixel = 0
		Toggle.Size = UDim2.new(0, 200, 0, 30)
		Toggle.Font = Enum.Font.SourceSansSemibold
		Toggle.Text = " "..name
		Toggle.TextColor3 = Color3.fromRGB(238, 239, 238)
		Toggle.TextSize = 18.000
		Toggle.TextXAlignment = Enum.TextXAlignment.Left
		
		ToggleButton.Name = "ToggleButton"
		ToggleButton.Parent = Toggle
		ToggleButton.AnchorPoint = Vector2.new(0.5, 0.5)
		ToggleButton.BackgroundColor3 = Color3.fromRGB(42, 44, 42)
		ToggleButton.BorderColor3 = Color3.fromRGB(206, 196, 205)
		ToggleButton.BorderSizePixel = 0
		ToggleButton.Position = UDim2.new(0.925000012, 0, 0.5, 0)
		ToggleButton.Size = UDim2.new(0, 22, 0, 22)
		ToggleButton.Image = "http://www.roblox.com/asset/?id=33450396"
		local tog1 = false
		ToggleButton.MouseButton1Click:Connect(function()
			if tog1 == false then 
				tog1 = true 
				gs:Create(ToggleButton, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(36, 38, 36)}):Play()
				wait(0.15)
				ToggleButton.Image = "http://www.roblox.com/asset/?id=82724486"
				gs:Create(ToggleButton, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(19, 20, 19)}):Play()
				wait(0.15)
				callback(true)
				 else tog1 = false 
				gs:Create(ToggleButton, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(36, 38, 36)}):Play()
				wait(0.15)
				ToggleButton.Image = "http://www.roblox.com/asset/?id=33450396"
				gs:Create(ToggleButton, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(19, 20, 19)}):Play()
				wait(0.15)
				callback(false)
			end
		end)
	end
	function win:Button(name,callback)
		callback = callback or function() end
		local Button = Instance.new("TextLabel")
		local BButton = Instance.new("TextButton")
		Button.Name = "Button"
		Button.Parent = Frame
		Button.BackgroundColor3 = Color3.fromRGB(42, 44, 42)
		Button.BackgroundTransparency = 1.000
		Button.BorderSizePixel = 0
		Button.Size = UDim2.new(0, 200, 0, 30)
		Button.Font = Enum.Font.SourceSansSemibold
		Button.Text = ""
		Button.TextColor3 = Color3.fromRGB(238, 239, 238)
		Button.TextSize = 18.000
		Button.TextXAlignment = Enum.TextXAlignment.Left
		
		BButton.Name = "BButton"
		BButton.Text = name
		BButton.Parent = Button
		BButton.AnchorPoint = Vector2.new(0.5, 0.5)
		BButton.BackgroundColor3 = Color3.fromRGB(42, 44, 42)
		BButton.BorderColor3 = Color3.fromRGB(206, 196, 205)
		BButton.BorderSizePixel = 0
		BButton.ClipsDescendants = true
		BButton.Position = UDim2.new(0.5, 0, 0.5, 0)
		BButton.Size = UDim2.new(0.899999976, 0, 0, 20)
		BButton.Font = Enum.Font.SourceSansSemibold
		BButton.TextColor3 = Color3.fromRGB(209, 211, 209)
		BButton.TextSize = 20.000
		BButton.TextWrapped = true
		
		BButton.MouseButton1Click:Connect(callback)
		
		
	local btn=BButton
	btn.MouseButton1Down:connect(function()
		local img=Instance.new'ImageLabel'
		img.BackgroundTransparency=1
		img.BorderSizePixel=0
		img.Image="rbxassetid://232918622"
		img.ImageColor3=Color3.new(19/255, 20/255, 19/255)
		img.Size=UDim2.new(0,0,0,0)
		img.Position=UDim2.new(.5,0,.5,0)
		img.Parent=btn
		img:TweenSizeAndPosition(UDim2.new(0,200,0,200),UDim2.new(.5,-100,.5,-100),Enum.EasingDirection.Out,Enum.EasingStyle.Linear,.5)	
		for i=0.1,1,.05 do
			img.ImageTransparency=i
			wait()
		end
		img:Destroy()
	end)

	end
	function win:Dropdown(name,options,callback)
		callback = callback or function() end
		local Dropdown = Instance.new("TextLabel")
		local OpenButton = Instance.new("TextButton")
		local Val = Instance.new("StringValue")
		local Frame_2 = Instance.new("Frame")
		local UIListLayout_3 = Instance.new("UIListLayout")
		local old = name
		OpenButton.MouseButton1Click:Connect(function()
			for i,v in pairs(Frame_2:GetChildren()) do
				if v.ClassName ~= "UIListLayout" then
					if v.ClassName ~= "BoolValue" then
						siz = siz + v.Size.Y.Offset 
					end
				end
			end
			if OpenButton.Text == "<" then 
				local sav = Dropdown.Text
			gs:Create(Frame_2, TweenInfo.new(0.4), {Size =UDim2.new(0, 0,0, siz)}):Play()
			wait(0.1)
			siz = 0
			gs:Create(Dropdown, TweenInfo.new(0.4), {TextColor3 = Color3.fromRGB(238, 239, 238)}):Play()
			OpenButton.Text = ">"
			Dropdown.Text = Val.Value or old
			wait(0.3)
			else
				gs:Create(Frame_2, TweenInfo.new(0.4), {Size =UDim2.new(0, 185,0, siz)}):Play()
				wait(0.1)
				OpenButton.Text = "<"
				gs:Create(Dropdown, TweenInfo.new(0.4), {TextColor3 = Color3.fromRGB(78, 80, 78)}):Play()
				Dropdown.Text = old
				wait(0.3)
				siz = 0
			end
		end)
		Dropdown.Name = "Dropdown"
		Dropdown.Parent = Frame
		Dropdown.BackgroundColor3 = Color3.fromRGB(42, 44, 42)
		Dropdown.BackgroundTransparency = 1.000
		Dropdown.BorderSizePixel = 0
		Dropdown.Size = UDim2.new(0, 200, 0, 30)
		Dropdown.Font = Enum.Font.SourceSansSemibold
		Dropdown.Text = name
		Dropdown.TextColor3 = Color3.fromRGB(238, 239, 238)
		Dropdown.TextSize = 16.000
		Dropdown.TextWrapped = true
		
		OpenButton.Name = "OpenButton"
		OpenButton.Parent = Dropdown
		OpenButton.BackgroundColor3 = Color3.fromRGB(19, 20, 19)
		OpenButton.BackgroundTransparency = 1.000
		OpenButton.BorderSizePixel = 0
		OpenButton.Position = UDim2.new(0.850000024, 0, 0, 0)
		OpenButton.Size = UDim2.new(0, 30, 0, 30)
		OpenButton.Font = Enum.Font.SourceSans
		OpenButton.Text = ">"
		OpenButton.TextColor3 = Color3.fromRGB(209, 211, 209)
		OpenButton.TextSize = 25.000
		OpenButton.TextWrapped = true
		
		Frame_2.Parent = OpenButton
		Frame_2.BackgroundColor3 = Color3.fromRGB(19, 20, 19)
		Frame_2.BorderSizePixel = 0
		Frame_2.ClipsDescendants = true
		Frame_2.Position = UDim2.new(1, 0, 0, 0)
		Frame_2.Size = UDim2.new(0, 0, 0, 0)
		
		UIListLayout_3.Parent = Frame_2
		UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
		for i,v in pairs(options) do
			local PButton = Instance.new("TextButton")		
			PButton.Name = "PButton"
			PButton.Parent = Frame_2
			PButton.BackgroundColor3 = Color3.fromRGB(19, 20, 19)
			PButton.BorderSizePixel = 0
			PButton.Size = UDim2.new(0, 185, 0, 30)
			PButton.Font = Enum.Font.SourceSansSemibold
			PButton.Text = v
			PButton.TextColor3 = Color3.fromRGB(209, 211, 209)
			PButton.TextSize = 20.000
			PButton.TextWrapped = true
			PButton.MouseButton1Click:Connect(function()
				gs:Create(PButton, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(36, 38, 36)}):Play()
				wait(0.3)
				gs:Create(Frame_2, TweenInfo.new(0.4), {Size =UDim2.new(0, 0,0, siz)}):Play()
				wait(0.1)
				gs:Create(PButton, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(19, 20, 19)}):Play()
				wait(0.3)
				Val.Value = v
				callback(v)
				Dropdown.Text = v
				gs:Create(Dropdown, TweenInfo.new(0.4), {TextColor3 = Color3.fromRGB(238, 239, 238)}):Play()
				OpenButton.Text = ">"
			end)
		end
	end
	function win:SearchBox(name,options,callback)
		callback = callback or function() end
		local Dropdown = Instance.new("TextLabel")
		local OpenButton = Instance.new("TextBox")
		local Val = Instance.new("StringValue")
		local Frame_2 = Instance.new("Frame")
		local UIListLayout_3 = Instance.new("UIListLayout")
		local old = name
		spawn(function()
OpenButton:GetPropertyChangedSignal("Text"):Connect(function()
			for i,v in pairs(Frame_2:GetChildren()) do
				if v.ClassName ~= "UIListLayout" then
					if v.ClassName ~= "BoolValue" then
						if string.sub(string.lower(v.Text), 1, string.len(OpenButton.Text)) == string.lower(OpenButton.Text) then
							siz = siz + v.Size.Y.Offset 
						end
					end
				end
			end
			if OpenButton.Text == "" then 
				local sav = Dropdown.Text
			gs:Create(Frame_2, TweenInfo.new(0.4), {Size =UDim2.new(0, 0,0, siz)}):Play()
			wait(0.1)
			siz = 0
			gs:Create(Dropdown, TweenInfo.new(0.4), {TextColor3 = Color3.fromRGB(238, 239, 238)}):Play()
			wait(0.3)
			else
				gs:Create(Frame_2, TweenInfo.new(0.4), {Size =UDim2.new(0, 185,0, siz)}):Play()
				wait(0.1)
				gs:Create(Dropdown, TweenInfo.new(0.4), {TextColor3 = Color3.fromRGB(78, 80, 78)}):Play()
				wait(0.3)
				siz = 0
			end
		end)
end)
		Dropdown.Name = "Dropdown"
		Dropdown.Parent = Frame
		Dropdown.BackgroundColor3 = Color3.fromRGB(42, 44, 42)
		Dropdown.BackgroundTransparency = 1.000
		Dropdown.BorderSizePixel = 0
		Dropdown.Size = UDim2.new(0, 200, 0, 30)
		Dropdown.Font = Enum.Font.SourceSansSemibold
		Dropdown.Text = " "..name
		Dropdown.TextXAlignment = "Left"
		Dropdown.TextColor3 = Color3.fromRGB(238, 239, 238)
		Dropdown.TextSize = 16.000
		Dropdown.TextWrapped = true
		
		OpenButton.Name = "BButton"
		OpenButton.Parent = Dropdown
		OpenButton.AnchorPoint = Vector2.new(0.5, 0.5)
		OpenButton.BackgroundColor3 = Color3.fromRGB(42, 44, 42)
		OpenButton.BorderColor3 = Color3.fromRGB(206, 196, 205)
		OpenButton.BorderSizePixel = 0
		OpenButton.ClipsDescendants = false
		OpenButton.Position = UDim2.new(0.925000012, 0, 0.5, 0)
		OpenButton.Size = UDim2.new(0, 22, 0, 22)
		OpenButton.Font = Enum.Font.SourceSansSemibold
		OpenButton.Text = ""
		OpenButton.TextColor3 = Color3.fromRGB(209, 211, 209)
		OpenButton.TextSize = 25.000
		OpenButton.TextWrapped = true
		OpenButton.TextScaled = true
		
		Frame_2.Parent = OpenButton
		Frame_2.BackgroundColor3 = Color3.fromRGB(19, 20, 19)
		Frame_2.BorderSizePixel = 0
		Frame_2.ClipsDescendants = true
		Frame_2.Position = UDim2.new(1 + 1-0.787500024, 0, 0, 0)
		Frame_2.Size = UDim2.new(0, 0, 0, 0)
		
		UIListLayout_3.Parent = Frame_2
		UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
		for i,v in pairs(options) do
			local PButton = Instance.new("TextButton")		
			PButton.Name = "PButton"
			PButton.Parent = Frame_2
			PButton.BackgroundColor3 = Color3.fromRGB(19, 20, 19)
			PButton.BorderSizePixel = 0
			PButton.Size = UDim2.new(0, 185, 0, 30)
			PButton.Font = Enum.Font.SourceSansSemibold
			PButton.Text = v
			PButton.TextColor3 = Color3.fromRGB(209, 211, 209)
			PButton.TextSize = 20.000
			PButton.TextWrapped = true
			PButton.MouseButton1Click:Connect(function()
				gs:Create(PButton, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(36, 38, 36)}):Play()
				wait(0.3)
				gs:Create(Frame_2, TweenInfo.new(0.4), {Size =UDim2.new(0, 0,0, siz)}):Play()
				wait(0.1)
				gs:Create(PButton, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(19, 20, 19)}):Play()
				wait(0.3)
				Val.Value = v
				callback(v)
				Dropdown.Text = " "..v
				gs:Create(Dropdown, TweenInfo.new(0.4), {TextColor3 = Color3.fromRGB(238, 239, 238)}):Play()
			end)
		end
	end
	function win:ColorPick(name,callback)
		callback = callback or function() end
		local CLRPicker = Instance.new("TextLabel")
		local CLRButton = Instance.new("TextButton")
		local Frame_3 = Instance.new("Frame")
		local Picker = Instance.new("Frame")
		local Gradient = Instance.new("ImageLabel")
		local Cursor = Instance.new("Frame")
		local Vertical = Instance.new("Frame")
		local Horizontal = Instance.new("Frame")
		local Display = Instance.new("Frame")
		local Current = Instance.new("Frame")
		local Previous = Instance.new("Frame")
		local FillIn = Instance.new("Frame")
		local Values = Instance.new("Frame")
		local RGB = Instance.new("Frame")
		local R = Instance.new("Frame")
		local Title = Instance.new("TextLabel")
		local Value = Instance.new("TextBox")
		local List = Instance.new("UIListLayout")
		local B = Instance.new("Frame")
		local Title_2 = Instance.new("TextLabel")
		local Value_2 = Instance.new("TextBox")
		local G = Instance.new("Frame")
		local Title_3 = Instance.new("TextLabel")
		local Value_3 = Instance.new("TextBox")
		local HSV = Instance.new("Frame")
		local H = Instance.new("Frame")
		local Title_4 = Instance.new("TextLabel")
		local Value_4 = Instance.new("TextBox")
		local List_2 = Instance.new("UIListLayout")
		local S = Instance.new("Frame")
		local Title_5 = Instance.new("TextLabel")
		local Value_5 = Instance.new("TextBox")
		local V = Instance.new("Frame")
		local Title_6 = Instance.new("TextLabel")
		local Value_6 = Instance.new("TextBox")
		local Hex = Instance.new("Frame")
		local Value_7 = Instance.new("TextBox")
		local Title_7 = Instance.new("TextLabel")
		local Confirm = Instance.new("TextButton")
		CLRPicker.Name = "CLRPicker"
		CLRPicker.Parent = Frame
		CLRPicker.BackgroundColor3 = Color3.fromRGB(42, 44, 42)
		CLRPicker.BackgroundTransparency = 1.000
		CLRPicker.BorderSizePixel = 0
		CLRPicker.Size = UDim2.new(0, 200, 0, 30)
		CLRPicker.Font = Enum.Font.SourceSansSemibold
		CLRPicker.Text = " ColorPick"
		CLRPicker.TextColor3 = Color3.fromRGB(238, 239, 238)
		CLRPicker.TextSize = 18.000
		CLRPicker.TextXAlignment = Enum.TextXAlignment.Left
		
		CLRButton.Name = "CLRButton"
		CLRButton.Parent = CLRPicker
		CLRButton.BackgroundColor3 = Color3.fromRGB(19, 20, 19)
		CLRButton.BorderSizePixel = 0
		CLRButton.Position = UDim2.new(0.850000024, 0, 0, 0)
		CLRButton.Size = UDim2.new(0, 30, 0, 30)
		CLRButton.Font = Enum.Font.SourceSans
		CLRButton.Text = ""
		CLRButton.TextColor3 = Color3.fromRGB(209, 211, 209)
		CLRButton.TextSize = 30.000
		CLRButton.TextWrapped = true
		
		Frame_3.Parent = CLRButton
		Frame_3.BackgroundColor3 = Color3.fromRGB(19, 20, 19)
		Frame_3.BorderSizePixel = 0
		Frame_3.ClipsDescendants = true
		Frame_3.Position = UDim2.new(1, 0, 2.54313164e-07, 0)
		Frame_3.Size = UDim2.new(0, 0, 0, 200)
		
		Picker.Name = "Picker"
		Picker.Parent = Frame_3
		Picker.AnchorPoint = Vector2.new(0.5, 0.5)
		Picker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Picker.BackgroundTransparency = 1.000
		Picker.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Picker.BorderSizePixel = 0
		Picker.Position = UDim2.new(0.5, 0, 0.5, 0)
		Picker.Size = UDim2.new(1, 0, 1, 0)
		Picker.SizeConstraint = Enum.SizeConstraint.RelativeYY
		
		Gradient.Name = "Gradient"
		Gradient.Parent = Picker
		Gradient.AnchorPoint = Vector2.new(0.5, 0.5)
		Gradient.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Gradient.BorderColor3 = Color3.fromRGB(160, 160, 160)
		Gradient.BorderSizePixel = 0
		Gradient.ClipsDescendants = true
		Gradient.Position = UDim2.new(0.375, 0, 0.373233348, 0)
		Gradient.Size = UDim2.new(0.75, 0, 0.75, 0)
		Gradient.SizeConstraint = Enum.SizeConstraint.RelativeYY
		Gradient.Image = "rbxassetid://328298876"
		
		Cursor.Name = "Cursor"
		Cursor.Parent = Gradient
		Cursor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Cursor.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Cursor.BorderSizePixel = 0
		Cursor.Position = UDim2.new(1, -1, 0, 1)
		Cursor.ZIndex = 2
		
		Vertical.Name = "Vertical"
		Vertical.Parent = Cursor
		Vertical.AnchorPoint = Vector2.new(0.5, 0.5)
		Vertical.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Vertical.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Vertical.BorderSizePixel = 0
		Vertical.Size = UDim2.new(0, 2, 0, 20)
		Vertical.ZIndex = 2
		
		Horizontal.Name = "Horizontal"
		Horizontal.Parent = Cursor
		Horizontal.AnchorPoint = Vector2.new(0.5, 0.5)
		Horizontal.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Horizontal.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Horizontal.BorderSizePixel = 0
		Horizontal.Size = UDim2.new(0, 20, 0, 2)
		Horizontal.ZIndex = 2
		
		Display.Name = "Display"
		Display.Parent = Picker
		Display.AnchorPoint = Vector2.new(0, 1)
		Display.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Display.BackgroundTransparency = 1.000
		Display.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Display.BorderSizePixel = 0
		Display.Position = UDim2.new(0.125, 0, 1, -5)
		Display.Size = UDim2.new(0.25, -25, 0.25, -10)
		Display.SizeConstraint = Enum.SizeConstraint.RelativeYY
		
		Current.Name = "Current"
		Current.Parent = Display
		Current.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		Current.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Current.BorderSizePixel = 0
		Current.Position = UDim2.new(-1.03921628, 0, -0.0562499985, 0)
		Current.Size = UDim2.new(1.84000003, 0, 1.14999998, 0)
		
		Previous.Name = "Previous"
		Previous.Parent = Display
		Previous.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		Previous.BackgroundTransparency = 1.000
		Previous.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Previous.BorderSizePixel = 0
		Previous.Position = UDim2.new(-0.43921569, 0, 0.457333326, 0)
		Previous.Size = UDim2.new(1, 0, 0.5, 0)
		
		FillIn.Name = "Fill In"
		FillIn.Parent = Picker
		FillIn.AnchorPoint = Vector2.new(0, 1)
		FillIn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		FillIn.BackgroundTransparency = 1.000
		FillIn.BorderColor3 = Color3.fromRGB(0, 0, 0)
		FillIn.BorderSizePixel = 0
		FillIn.Position = UDim2.new(0.375, -20, 1.02499998, -5)
		FillIn.Size = UDim2.new(0.625, 20, 0.275000006, -10)
		FillIn.SizeConstraint = Enum.SizeConstraint.RelativeYY
		
		Values.Name = "Values"
		Values.Parent = FillIn
		Values.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Values.BackgroundTransparency = 1.000
		Values.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Values.BorderSizePixel = 0
		Values.Position = UDim2.new(0.717241406, 0, -3.45229626, 0)
		Values.Size = UDim2.new(0.282758623, 0, 3.33333325, 0)
		
		RGB.Name = "RGB"
		RGB.Parent = Values
		RGB.BackgroundColor3 = Color3.fromRGB(44, 47, 44)
		RGB.BorderColor3 = Color3.fromRGB(0, 0, 0)
		RGB.BorderSizePixel = 0
		RGB.Position = UDim2.new(-0.185975611, 0, 0.595416665, -5)
		RGB.Size = UDim2.new(1.30792677, -5, 0.437916666, 0)
		
		R.Name = "R"
		R.Parent = RGB
		R.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		R.BackgroundTransparency = 1.000
		R.BorderColor3 = Color3.fromRGB(0, 0, 0)
		R.BorderSizePixel = 0
		R.Size = UDim2.new(1, 0, 0.25, 0)
		
		Title.Name = "Title"
		Title.Parent = R
		Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title.BackgroundTransparency = 1.000
		Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Title.BorderSizePixel = 0
		Title.Size = UDim2.new(0.5, -5, 1, 0)
		Title.Font = Enum.Font.SourceSans
		Title.Text = "Red:"
		Title.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title.TextScaled = true
		Title.TextSize = 14.000
		Title.TextWrapped = true
		
		Value.Name = "Value"
		Value.Parent = R
		Value.AnchorPoint = Vector2.new(1, 0)
		Value.BackgroundColor3 = Color3.fromRGB(202, 202, 202)
		Value.BackgroundTransparency = 1.000
		Value.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Value.BorderSizePixel = 0
		Value.Position = UDim2.new(1, 0, 0, 0)
		Value.Size = UDim2.new(0.5, -5, 1, 0)
		Value.Font = Enum.Font.SourceSans
		Value.Text = "255"
		Value.TextColor3 = Color3.fromRGB(255, 255, 255)
		Value.TextScaled = true
		Value.TextSize = 14.000
		Value.TextWrapped = true
		
		List.Name = "List"
		List.Parent = RGB
		List.SortOrder = Enum.SortOrder.LayoutOrder
		List.Padding = UDim.new(0.125, 0)
		
		B.Name = "B"
		B.Parent = RGB
		B.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		B.BackgroundTransparency = 1.000
		B.BorderColor3 = Color3.fromRGB(0, 0, 0)
		B.BorderSizePixel = 0
		B.Size = UDim2.new(1, 0, 0.25, 0)
		
		Title_2.Name = "Title"
		Title_2.Parent = B
		Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title_2.BackgroundTransparency = 1.000
		Title_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Title_2.BorderSizePixel = 0
		Title_2.Size = UDim2.new(0.5, -5, 1, 0)
		Title_2.Font = Enum.Font.SourceSans
		Title_2.Text = "Blue:"
		Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title_2.TextScaled = true
		Title_2.TextSize = 14.000
		Title_2.TextWrapped = true
		
		Value_2.Name = "Value"
		Value_2.Parent = B
		Value_2.AnchorPoint = Vector2.new(1, 0)
		Value_2.BackgroundColor3 = Color3.fromRGB(202, 202, 202)
		Value_2.BackgroundTransparency = 1.000
		Value_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Value_2.BorderSizePixel = 0
		Value_2.Position = UDim2.new(1, 0, 0, 0)
		Value_2.Size = UDim2.new(0.5, -5, 1, 0)
		Value_2.Font = Enum.Font.SourceSans
		Value_2.Text = "0"
		Value_2.TextColor3 = Color3.fromRGB(255, 255, 255)
		Value_2.TextScaled = true
		Value_2.TextSize = 14.000
		Value_2.TextWrapped = true
		
		G.Name = "G"
		G.Parent = RGB
		G.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		G.BackgroundTransparency = 1.000
		G.BorderColor3 = Color3.fromRGB(0, 0, 0)
		G.BorderSizePixel = 0
		G.Size = UDim2.new(1, 0, 0.25, 0)
		
		Title_3.Name = "Title"
		Title_3.Parent = G
		Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title_3.BackgroundTransparency = 1.000
		Title_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Title_3.BorderSizePixel = 0
		Title_3.Size = UDim2.new(0.5, -5, 1, 0)
		Title_3.Font = Enum.Font.SourceSans
		Title_3.Text = "Green:"
		Title_3.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title_3.TextScaled = true
		Title_3.TextSize = 14.000
		Title_3.TextWrapped = true
		
		Value_3.Name = "Value"
		Value_3.Parent = G
		Value_3.AnchorPoint = Vector2.new(1, 0)
		Value_3.BackgroundColor3 = Color3.fromRGB(202, 202, 202)
		Value_3.BackgroundTransparency = 1.000
		Value_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Value_3.BorderSizePixel = 0
		Value_3.Position = UDim2.new(1, 0, 0, 0)
		Value_3.Size = UDim2.new(0.5, -5, 1, 0)
		Value_3.Font = Enum.Font.SourceSans
		Value_3.Text = "0"
		Value_3.TextColor3 = Color3.fromRGB(255, 255, 255)
		Value_3.TextScaled = true
		Value_3.TextSize = 14.000
		Value_3.TextWrapped = true
		
		HSV.Name = "HSV"
		HSV.Parent = Values
		HSV.BackgroundColor3 = Color3.fromRGB(44, 47, 44)
		HSV.BorderColor3 = Color3.fromRGB(0, 0, 0)
		HSV.BorderSizePixel = 0
		HSV.Position = UDim2.new(-0.185975611, 0, 0.0266666673, -5)
		HSV.Size = UDim2.new(0, 48, 0, 75)
		
		H.Name = "H"
		H.Parent = HSV
		H.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		H.BackgroundTransparency = 1.000
		H.BorderColor3 = Color3.fromRGB(0, 0, 0)
		H.BorderSizePixel = 0
		H.Size = UDim2.new(1, 0, 0.25, 0)
		
		Title_4.Name = "Title"
		Title_4.Parent = H
		Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title_4.BackgroundTransparency = 1.000
		Title_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Title_4.BorderSizePixel = 0
		Title_4.Size = UDim2.new(0.5, -5, 1, 0)
		Title_4.Font = Enum.Font.SourceSans
		Title_4.Text = "Hue:"
		Title_4.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title_4.TextScaled = true
		Title_4.TextSize = 14.000
		Title_4.TextWrapped = true
		
		Value_4.Name = "Value"
		Value_4.Parent = H
		Value_4.AnchorPoint = Vector2.new(1, 0)
		Value_4.BackgroundColor3 = Color3.fromRGB(202, 202, 202)
		Value_4.BackgroundTransparency = 1.000
		Value_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Value_4.BorderSizePixel = 0
		Value_4.Position = UDim2.new(1, 0, 0, 0)
		Value_4.Size = UDim2.new(0.5, -5, 1, 0)
		Value_4.Font = Enum.Font.SourceSans
		Value_4.Text = "0"
		Value_4.TextColor3 = Color3.fromRGB(255, 255, 255)
		Value_4.TextScaled = true
		Value_4.TextSize = 14.000
		Value_4.TextWrapped = true
		
		List_2.Name = "List"
		List_2.Parent = HSV
		List_2.SortOrder = Enum.SortOrder.LayoutOrder
		List_2.Padding = UDim.new(0.125, 0)
		
		S.Name = "S"
		S.Parent = HSV
		S.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		S.BackgroundTransparency = 1.000
		S.BorderColor3 = Color3.fromRGB(0, 0, 0)
		S.BorderSizePixel = 0
		S.Size = UDim2.new(1, 0, 0.25, 0)
		
		Title_5.Name = "Title"
		Title_5.Parent = S
		Title_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title_5.BackgroundTransparency = 1.000
		Title_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Title_5.BorderSizePixel = 0
		Title_5.Size = UDim2.new(0.5, -5, 1, 0)
		Title_5.Font = Enum.Font.SourceSans
		Title_5.Text = "Sat:"
		Title_5.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title_5.TextScaled = true
		Title_5.TextSize = 14.000
		Title_5.TextWrapped = true
		
		Value_5.Name = "Value"
		Value_5.Parent = S
		Value_5.AnchorPoint = Vector2.new(1, 0)
		Value_5.BackgroundColor3 = Color3.fromRGB(202, 202, 202)
		Value_5.BackgroundTransparency = 1.000
		Value_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Value_5.BorderSizePixel = 0
		Value_5.Position = UDim2.new(1, 0, 0, 0)
		Value_5.Size = UDim2.new(0.5, -5, 1, 0)
		Value_5.Font = Enum.Font.SourceSans
		Value_5.Text = "1"
		Value_5.TextColor3 = Color3.fromRGB(255, 255, 255)
		Value_5.TextScaled = true
		Value_5.TextSize = 14.000
		Value_5.TextWrapped = true
		
		V.Name = "V"
		V.Parent = HSV
		V.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		V.BackgroundTransparency = 1.000
		V.BorderColor3 = Color3.fromRGB(0, 0, 0)
		V.BorderSizePixel = 0
		V.Size = UDim2.new(1, 0, 0.25, 0)
		
		Title_6.Name = "Title"
		Title_6.Parent = V
		Title_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title_6.BackgroundTransparency = 1.000
		Title_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Title_6.BorderSizePixel = 0
		Title_6.Size = UDim2.new(0.5, -5, 1, 0)
		Title_6.Font = Enum.Font.SourceSans
		Title_6.Text = "Value:"
		Title_6.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title_6.TextScaled = true
		Title_6.TextSize = 14.000
		Title_6.TextWrapped = true
		
		Value_6.Name = "Value"
		Value_6.Parent = V
		Value_6.AnchorPoint = Vector2.new(1, 0)
		Value_6.BackgroundColor3 = Color3.fromRGB(202, 202, 202)
		Value_6.BackgroundTransparency = 1.000
		Value_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Value_6.BorderSizePixel = 0
		Value_6.Position = UDim2.new(1, 0, 0, 0)
		Value_6.Size = UDim2.new(0.5, -5, 1, 0)
		Value_6.Font = Enum.Font.SourceSans
		Value_6.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
		Value_6.Text = "1"
		Value_6.TextColor3 = Color3.fromRGB(255, 255, 255)
		Value_6.TextScaled = true
		Value_6.TextSize = 14.000
		Value_6.TextWrapped = true
		
		Hex.Name = "Hex"
		Hex.Parent = FillIn
		Hex.AnchorPoint = Vector2.new(0, 1)
		Hex.BackgroundColor3 = Color3.fromRGB(44, 47, 44)
		Hex.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Hex.BorderSizePixel = 0
		Hex.Position = UDim2.new(0.524137914, 0, 0.199999988, 0)
		Hex.Size = UDim2.new(0.5, -5, 0.250000268, 0)
		
		Value_7.Name = "Value"
		Value_7.Parent = Hex
		Value_7.AnchorPoint = Vector2.new(1, 0)
		Value_7.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
		Value_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Value_7.BorderSizePixel = 0
		Value_7.Position = UDim2.new(1, 0, 0, 0)
		Value_7.Size = UDim2.new(0.5, -5, 1, 0)
		Value_7.Font = Enum.Font.SourceSans
		Value_7.Text = "#FF0000"
		Value_7.TextColor3 = Color3.fromRGB(255, 255, 255)
		Value_7.TextScaled = true
		Value_7.TextSize = 14.000
		Value_7.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
		Value_7.TextWrapped = true
		
		Title_7.Name = "Title"
		Title_7.Parent = Hex
		Title_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title_7.BackgroundTransparency = 1.000
		Title_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Title_7.BorderSizePixel = 0
		Title_7.Size = UDim2.new(0.5, -5, 1, 0)
		Title_7.Font = Enum.Font.SourceSans
		Title_7.Text = "Hex:"
		Title_7.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title_7.TextScaled = true
		Title_7.TextSize = 14.000
		Title_7.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
		Title_7.TextWrapped = true
		
		Confirm.Name = "Confirm"
		Confirm.Parent = FillIn
		Confirm.AnchorPoint = Vector2.new(1, 1)
		Confirm.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
		Confirm.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Confirm.BorderSizePixel = 0
		Confirm.Position = UDim2.new(1, 0, 1.00000072, 0)
		Confirm.Size = UDim2.new(0.5, -5, 0.632444918, 0)
		Confirm.Font = Enum.Font.SourceSans
		Confirm.Text = "Confirm"
		Confirm.TextColor3 = Color3.fromRGB(255, 255, 255)
		Confirm.TextScaled = true
		Confirm.TextSize = 14.000
		Confirm.TextWrapped = true
		local to = true
		CLRButton.MouseButton1Click:Connect(function()
			if to == false then 
				to = true
			gs:Create(Frame_3, TweenInfo.new(0.4), {Size =UDim2.new(0, 0,0, 200)}):Play()
			wait(0.1)
			wait(0.3)
			else
				to = false
				gs:Create(Frame_3, TweenInfo.new(0.4), {Size =UDim2.new(0, 200,0, 200)}):Play()
				wait(0.1)
				wait(0.3)
			end
		end)
		Confirm.MouseButton1Click:Connect(function()
			gs:Create(Frame_3, TweenInfo.new(0.4), {Size =UDim2.new(0, 0,0, 200)}):Play()
			CLRButton.BackgroundColor3 = Current.BackgroundColor3
			callback(Current.BackgroundColor3)
		end)
		local script = Instance.new('LocalScript', Frame_3)

	--- Services ---
	local Players = game:GetService("Players")
	local TextService = game:GetService("TextService")
	local UserInputService = game:GetService("UserInputService")
	
	--- Declarations ---
	local ColorPicker = script.Parent
	local Picker = ColorPicker:WaitForChild("Picker")
	
	local FillIn = Picker:WaitForChild("Fill In")
	local Values = FillIn:WaitForChild("Values")
	
	local RGB = Values:WaitForChild("RGB")
	local HSV = Values:WaitForChild("HSV")
	
	local Hex = FillIn:WaitForChild("Hex")
	local Confirm = FillIn:WaitForChild("Confirm")
	
	local Display = Picker:WaitForChild("Display")
	local CurrentDisplay = Display:WaitForChild("Current")
	local PreviousDisplay = Display:WaitForChild("Previous")
	
	local Gradient = Picker:WaitForChild("Gradient")
	local Cursor = Gradient:WaitForChild("Cursor")
	
	--- Player ---
	local Player = Players.LocalPlayer
	local Mouse = Player:GetMouse()
	
	--- Objects ---
	local HexadecimalValues = {
		-- Decimal to Hex
		[10] = "A",
		[11] = "B",
		[12] = "C",
		[13] = "D",
		[14] = "E",
		[15] = "F",
	}
	
	--- Data ---
	local Down = false
	
	--- Definitions ---
	local Abs = math.abs
	local Clamp = math.clamp
	local Floor = math.floor
	
	local Tonumber = tonumber
	
	--- Functions ---
	local function UpdateCursorPosition(h, s)
		local gradientSize = Gradient.AbsoluteSize
		local sizeScale = 360 / gradientSize.X
		Cursor.Position = UDim2.new(0, gradientSize.X - (h * 360) / sizeScale, 0, gradientSize.Y - (s * 360) / sizeScale)
	end
	
	local function InBounds()
		local mousePosition = Vector2.new(Mouse.X, Mouse.Y)
		local gradientPosition = Gradient.AbsolutePosition
		local gradientSize = Gradient.AbsoluteSize
	
		return (mousePosition.X < (gradientPosition.X + gradientSize.X) and mousePosition.X > gradientPosition.X) and (mousePosition.Y < (gradientPosition.Y + gradientSize.Y) and mousePosition.Y > gradientPosition.Y)
	end
	
	local function HexToDecimal(hex)
		return Tonumber(hex, 16)
	end
	
	local function DecimalToHex(decimal)
		local hex = ""
		local integer, remainder
		
		while true do
			integer = math.modf(decimal / 16)
			remainder = decimal % 16
			decimal = integer
			
			hex = hex .. (HexadecimalValues[remainder] or remainder)
			
			if integer == 0 then
				break
			end
		end
		
		if #hex == 1 then
			return "0" .. hex
		end
		
		return hex:reverse()
	end
	
	local function HexToRGB(hex)
		hex = hex:sub(2):upper()
		
		if #hex == 3 then
			local f, s, t = hex:sub(1, 1), hex:sub(2, 2), hex:sub(3, 3)
			return hex, Tonumber(f .. f, 16), Tonumber(s .. s, 16), Tonumber(t .. t, 16)
		elseif #hex == 6 then
			return hex, Tonumber(hex:sub(1, 2), 16), Tonumber(hex:sub(3, 4), 16), Tonumber(hex:sub(5, 6), 16)
		elseif #hex ~= 3 and #hex < 6 then
			hex = hex .. string.rep("0", 6 - #hex)
			return hex, Tonumber(hex:sub(1, 2), 16), Tonumber(hex:sub(3, 4), 16), Tonumber(hex:sub(5, 6), 16)
		end
	end
	
	local function RGBToHex(r, g, b)
		return "#" .. DecimalToHex(r) .. DecimalToHex(g) .. DecimalToHex(b)
	end
	
	local function SanitizeNumber(value, rgbValue, isHue)
		if value then
			value = (value ~= value and 0) or (Tonumber(value) or 0)
			
			if isHue then
				return Clamp(value, 0, 360)
			else
				return Clamp(value, 0, (rgbValue and 255 or 1))
			end
		end
	end
	
	local function UpdateColorWithRGB()
		local color = Color3.fromRGB(Tonumber(RGB.R.Value.Text), Tonumber(RGB.G.Value.Text), Tonumber(RGB.B.Value.Text))
		CurrentDisplay.BackgroundColor3 = color
		
		return color
	end
	
	local function UpdateColorWithHSV()
		local color = Color3.fromHSV((Tonumber(HSV.H.Value.Text) or 0) / 360, Tonumber(HSV.S.Value.Text) or 1, Tonumber(HSV.V.Value.Text) or 1)
		CurrentDisplay.BackgroundColor3 = color
		
		return color
	end
	
	local function UpdateFillIns(color)
		if color then
			local h, s, v = Color3.toHSV(color)
			local r, g, b = Floor(color.r * 255 + 0.5), Floor(color.g * 255 + 0.5), Floor(color.b * 255 + 0.5)
			
			HSV.H.Value.Text = Floor(h * 360 + 0.5)
			HSV.S.Value.Text = Floor(s * 1000 + 0.5) / 1000
			HSV.V.Value.Text = Floor(v * 1000 + 0.5) / 1000
			
			RGB.R.Value.Text = r
			RGB.G.Value.Text = g
			RGB.B.Value.Text = b
			
			Hex.Value.Text = RGBToHex(r, g, b)
			UpdateCursorPosition(h, s)
		end
	end
	
	local function GetColor()
		if InBounds() then
			local gradientSize = Gradient.AbsoluteSize
			UserInputService.MouseIconEnabled = false
			
			local sizeScale = 360 / gradientSize.X
			local offset = Vector2.new(Mouse.X, Mouse.Y) - (Gradient.AbsolutePosition + gradientSize / 2)
			
			local hue = Abs((offset.X * sizeScale - 180) / 360)
			local saturation = Abs((offset.Y * sizeScale - 180) / 360)
			local color = Color3.fromHSV(hue, saturation, 1)
			
			CurrentDisplay.BackgroundColor3 = color
			Cursor.Position = UDim2.new(0, Clamp(offset.X + gradientSize.X / 2, 0, gradientSize.X), 0, Clamp(offset.Y + gradientSize.Y / 2, 0, gradientSize.Y))
			
			return color
		end
		
		UserInputService.MouseIconEnabled = true
		return nil
	end
	
	--- Execution ---
	Mouse.Button1Down:Connect(function()
		UpdateFillIns(GetColor())
		Down = true
	end)
	
	Mouse.Move:Connect(function()
		if Down then
			UpdateFillIns(GetColor())
		else
			UserInputService.MouseIconEnabled = true
		end
	end)
	
	Mouse.Button1Up:Connect(function()
		Down = false
	end)
	
	do -- Fill In Events
		local R = RGB.R.Value
		local G = RGB.G.Value
		local B = RGB.B.Value
		
		local H = HSV.H.Value
		local S = HSV.S.Value
		local V = HSV.V.Value
		
		local Hex = Hex.Value
		
		do -- RGB
			R:GetPropertyChangedSignal("Text"):Connect(function()
				local text = R.Text
				
				if #text ~= 0 then
					R.Text = SanitizeNumber(text, true)
					UpdateFillIns(UpdateColorWithRGB())
				end
			end)
			
			G:GetPropertyChangedSignal("Text"):Connect(function()
				local text = G.Text
				
				if #text ~= 0 then
					G.Text = SanitizeNumber(text, true)
					UpdateFillIns(UpdateColorWithRGB())
				end
			end)
			
			B:GetPropertyChangedSignal("Text"):Connect(function()
				local text = B.Text
				
				if #text ~= 0 then
					B.Text = SanitizeNumber(text, true)
					UpdateFillIns(UpdateColorWithRGB())
				end
			end)
		end
		
		do -- HSV
			H.FocusLost:Connect(function(enterPressed)
				if enterPressed then
					local text = H.Text
					
					if #text ~= 0 then
						H.Text = SanitizeNumber(text, false, true)
						UpdateFillIns(UpdateColorWithHSV())
					end
				end
			end)
			
			S.FocusLost:Connect(function(enterPressed)
				if enterPressed then
					local text = S.Text
					
					if #text ~= 0 then
						S.Text = SanitizeNumber(text, false)
						UpdateFillIns(UpdateColorWithHSV())
					end
				end
			end)
			
			V.FocusLost:Connect(function(enterPressed)
				if enterPressed then
					local text = V.Text
					
					if #text ~= 0 then
						V.Text = SanitizeNumber(text, false)
						UpdateFillIns(UpdateColorWithHSV())
					end
				end
			end)
		end
		
		Hex:GetPropertyChangedSignal("Text"):Connect(function()
			local text = Hex.Text
			
			if #text ~= 0 then
				local index = 0
				local s, e = text:find("#")
				
				text = text:gsub("#", function()
					index = index + 1
					
					if s == 1 then
						return index == 1 and "#" or ""
					else
						return ""
					end
				end)
				
				if text:find("#") ~= 1 then
					text = "#" .. text
				end
				
				Hex.Text = text
			end
		end)
		
		Hex.FocusLost:Connect(function(enterPressed)
			if enterPressed then
				local hex, r, g, b = HexToRGB(Hex.Text)
				local h, s, v = Color3.toHSV(Color3.fromRGB(r, g, b))
				
				Hex.Text = hex
				UpdateFillIns(Color3.fromRGB(r, g, b))
			end
		end)
	end
	   
	end
	function win:Bind(name,keybind,callback)
		callback = callback or function() end
		local Bind = Instance.new("TextLabel")
		local BButton_2 = Instance.new("TextButton")
		Bind.Name = "Bind"
		Bind.Parent = Frame
		Bind.BackgroundColor3 = Color3.fromRGB(42, 44, 42)
		Bind.BackgroundTransparency = 1.000
		Bind.BorderSizePixel = 0
		Bind.Size = UDim2.new(0, 200, 0, 30)
		Bind.Font = Enum.Font.SourceSansSemibold
		Bind.Text = " "..name
		Bind.TextColor3 = Color3.fromRGB(238, 239, 238)
		Bind.TextSize = 18.000
		Bind.TextXAlignment = Enum.TextXAlignment.Left
		
		BButton_2.Name = "BButton"
		BButton_2.Parent = Bind
		BButton_2.AnchorPoint = Vector2.new(0.5, 0.5)
		BButton_2.BackgroundColor3 = Color3.fromRGB(42, 44, 42)
		BButton_2.BorderColor3 = Color3.fromRGB(206, 196, 205)
		BButton_2.BorderSizePixel = 0
		BButton_2.ClipsDescendants = true
		BButton_2.Position = UDim2.new(0.787500024, 0, 0.5, 0)
		BButton_2.Size = UDim2.new(0.324999988, 0, 0, 20)
		BButton_2.Font = Enum.Font.SourceSansSemibold
		BButton_2.Text = tostring(keybind)
		BButton_2.TextColor3 = Color3.fromRGB(209, 211, 209)
		BButton_2.TextSize = 16.000
		BButton_2.TextWrapped = true
		game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
		 if KeyPressed == keybind:lower() then
			callback()
		 end
		end)
	end
	function win:Box(name,text,callback)
		callback = callback or function(lol) end
		local Bind = Instance.new("TextLabel")
		local BButton_2 = Instance.new("TextBox")
		Bind.Name = "Box"
		Bind.Parent = Frame
		Bind.BackgroundColor3 = Color3.fromRGB(42, 44, 42)
		Bind.BackgroundTransparency = 1.000
		Bind.BorderSizePixel = 0
		Bind.Size = UDim2.new(0, 200, 0, 30)
		Bind.Font = Enum.Font.SourceSansSemibold
		Bind.Text = " "..name
		Bind.TextColor3 = Color3.fromRGB(238, 239, 238)
		Bind.TextSize = 18.000
		Bind.TextXAlignment = Enum.TextXAlignment.Left
		
		BButton_2.Name = "BButton"
		BButton_2.Parent = Bind
		BButton_2.AnchorPoint = Vector2.new(0.5, 0.5)
		BButton_2.BackgroundColor3 = Color3.fromRGB(42, 44, 42)
		BButton_2.BorderColor3 = Color3.fromRGB(206, 196, 205)
		BButton_2.BorderSizePixel = 0
		BButton_2.ClipsDescendants = true
		BButton_2.Position = UDim2.new(0.787500024, 0, 0.5, 0)
		BButton_2.Size = UDim2.new(0.324999988, 0, 0, 20)
		BButton_2.Font = Enum.Font.SourceSansSemibold
		BButton_2.Text = ""
		BButton_2.PlaceholderText = tostring(text)
		BButton_2.TextColor3 = Color3.fromRGB(209, 211, 209)
		BButton_2.TextSize = 16.000
		BButton_2.TextWrapped = true
		BButton_2.TextScaled = true
		BButton_2.FocusLost:Connect(function()
		   callback(BButton_2.Text)
		end)
	end
	function win:Slider(name,min,max,esti,callback)
		min = min or 0
		max = max or 100
		esti = esti or true
		callback = callback or function() end
		local Slider = Instance.new("TextLabel")
		local BButton_3 = Instance.new("TextLabel")
		local TextButton = Instance.new("TextButton")
		local Val = Instance.new("TextLabel")
		Slider.Name = "Slider"
		Slider.Parent = Frame
		Slider.BackgroundColor3 = Color3.fromRGB(42, 44, 42)
		Slider.BackgroundTransparency = 1.000
		Slider.BorderSizePixel = 0
		Slider.Size = UDim2.new(0, 200, 0, 30)
		Slider.Font = Enum.Font.SourceSansSemibold
		Slider.Text = " "..name
		Slider.TextColor3 = Color3.fromRGB(238, 239, 238)
		Slider.TextSize = 18.000
		Slider.TextXAlignment = Enum.TextXAlignment.Left
		
		BButton_3.Name = "BButton"
		BButton_3.Parent = Slider
		BButton_3.Active = true
		BButton_3.AnchorPoint = Vector2.new(0.5, 0.5)
		BButton_3.BackgroundColor3 = Color3.fromRGB(133, 134, 133)
		BButton_3.BorderColor3 = Color3.fromRGB(206, 196, 205)
		BButton_3.BorderSizePixel = 0
		BButton_3.Position = UDim2.new(0.787500024, 0, 0.482883722, 0)
		BButton_3.Selectable = true
		BButton_3.Size = UDim2.new(0.324999988, 0, 0, 2)
		BButton_3.Font = Enum.Font.SourceSansSemibold
		BButton_3.Text = " "
		BButton_3.TextColor3 = Color3.fromRGB(209, 211, 209)
		BButton_3.TextSize = 16.000
		BButton_3.TextWrapped = true
		
		TextButton.Parent = BButton_3
		TextButton.AnchorPoint = Vector2.new(0, 0.5)
		TextButton.BackgroundColor3 = Color3.fromRGB(78, 80, 78)
		TextButton.BorderSizePixel = 0
		TextButton.Position = UDim2.new(0, -1, 0, 0)
		TextButton.Size = UDim2.new(0, 4, 1, 16)
		TextButton.Font = Enum.Font.SourceSans
		TextButton.Text = " "
		TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextButton.TextSize = 14.000
		
		Val.Name = "Val"
		Val.Parent = Slider
		Val.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Val.BackgroundTransparency = 1.000
		Val.Position = UDim2.new(0.420097977, 0, -0.0666666701, 0)
		Val.Size = UDim2.new(0, 30, 0, 30)
		Val.Font = Enum.Font.SourceSans
		Val.Text = ""
		Val.TextColor3 = Color3.fromRGB(255, 255, 255)
		Val.TextScaled = true
		Val.TextSize = 14.000
		Val.TextWrapped = true
		local realVal = Val.Text.."" -- This is going to go to the 1st label
		local Val = Val -- This is going to go to the 1st label
		local Sliderr = BButton_3 -- This is going to go to the slide
		local mousepressed = false
		local SliderBtn = TextButton -- This is going to go to the slider button
		local Player = game:GetService("Players").LocalPlayer
		local UIS = game:GetService("UserInputService")
		local RuS = game:GetService("RunService")
		local estimate = esti -- changeable (If making a ui library, make these properties of your function instead of variables) also, i have this defaulted to true because it is very useful...
		-- Properties
		local held = false
		local step = 0 -- do not change!!
		local percentage = 0
		function snap(number, factor)
		if factor == 0 then
		return number
		else
		return math.floor(number/factor+0.5)*factor
		end
		end
		UIS.InputEnded:connect(function(input, processed)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
		held = false
		mousepressed = false
		end
		end)
		UIS.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
		mousepressed = true
		end
		end)
		Sliderr.MouseEnter:connect(function()
		repeat
		wait()
		if mousepressed then
		held = true
		end
		until SliderBtn.MouseLeave
		end)
		SliderBtn.MouseEnter:connect(function()
		repeat
		wait()
		if mousepressed then
		held = true
		end
		until Sliderr.MouseLeave
		end)
		RuS.RenderStepped:connect(function(delta)
		if held then
		local MousePos = UIS:GetMouseLocation().X
		local BtnPos = SliderBtn.Position
		local SliderSize = Sliderr.AbsoluteSize.X
		local SliderPos = Sliderr.AbsolutePosition.X
		local pos = snap((MousePos-SliderPos)/SliderSize,step)
		percentage = math.clamp(pos,0,1)
		SliderBtn.Position = UDim2.new(percentage,-(SliderBtn.Size.X.Offset*0.5),(BtnPos.Y.Scale), BtnPos.Y.Offset)
		local bry = (math.floor((0 + (max - 0) * percentage) * max) / max)
		if estimate == true then
		
		local big = math.floor(bry)
		Val.Text = realVal..big..""
		callback(big)
		if min >= big then
		Val.Text = realVal..min
		callback(min)
		end
		elseif estimate == false then
		Val.Text = realVal..bry
		callback(bry)
		if Val.Text <= min then
		Val.Text = realVal..min
		callback(min)
		end
		end
		end
		end)
	end
	
	return win;
end
local si = 0
for i,v in pairs(Handler:GetChildren()) do
	if v.ClassName ~= "UIListLayout" then
		si = si + v.Size.Y.Offset + 2
	end
end
Handler.Size = UDim2.new(0, 200, 0, si)
return Library;

