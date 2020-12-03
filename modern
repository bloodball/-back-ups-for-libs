local Library = {}
local UILib = Instance.new("ScreenGui")
local TabXPosition = 30

UILib.Name = "UILib"
UILib.Parent = game:GetService("CoreGui")
UILib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

function Library:Tab(name)
	local Tab = Instance.new("TextLabel")
	local TabFrame = Instance.new("Frame")
	local TabFrameSize = 0
	local TabMouseLeft = true
	local TabFrameMouseLeft = true
	local DropDownFrameMouseLeft = true
	local ButtonListLayout = Instance.new("UIListLayout")

    local function dragify(Frame)
        local dragToggle = nil
        local dragInput = nil
        local dragStart = nil
        local dragPos = nil
        local startPos = nil
        local Delta = nil
        local Position = nil

        local function updateInput(input)
            Delta = input.Position - dragStart
            Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
            game:GetService("TweenService"):Create(Frame, TweenInfo.new(.15), {Position = Position}):Play()
        end

        Frame.InputBegan:Connect(function(input)
            if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
                dragToggle = true
                dragStart = input.Position
                startPos = Frame.Position
                input.Changed:Connect(function()
                    if (input.UserInputState == Enum.UserInputState.End) then
                        dragToggle = false
                    end
                end)
            end
        end)

        Frame.InputChanged:Connect(function(input)
            if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
                dragInput = input
            end
        end)

        game:GetService("UserInputService").InputChanged:Connect(function(input)
            if (input == dragInput and dragToggle) then
                updateInput(input)
            end
        end)
    end

	Tab.Name = name
	Tab.Parent = UILib
	Tab.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Tab.BorderSizePixel = 0
	Tab.Position = UDim2.new(0, TabXPosition, 0, 30)
	Tab.Size = UDim2.new(0, 120, 0, 20)
	Tab.Font = Enum.Font.SciFi
	Tab.Text = name
	Tab.TextColor3 = Color3.new(1, 1, 1)
	Tab.TextSize = 14
	Tab.MouseEnter:Connect(function()
		TabMouseLeft = false
		TabFrame:TweenSize(UDim2.new(0, 120, 0, TabFrameSize), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.25, true)
		while TabFrame.Size ~= UDim2.new(0, 120, 0, TabFrameSize) do
			wait()
		end
		for i, v in pairs(TabFrame:GetChildren()) do
			if not v:IsA("UIListLayout") then
				v.Visible = true
			end
		end
	end)
	Tab.MouseLeave:Connect(function()
		TabMouseLeft = true
		if TabFrameMouseLeft and DropDownFrameMouseLeft then
			for i, v in pairs(TabFrame:GetChildren()) do
				if not v:IsA("UIListLayout") then
					v.Visible = false
				end
			end
			TabFrame:TweenSize(UDim2.new(0, 120, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.25, true)
		end
	end)
	
	TabXPosition = TabXPosition + 130
	dragify(Tab)
	
	TabFrame.Name = "TabFrame"
	TabFrame.Parent = Tab
	TabFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	TabFrame.BorderSizePixel = 0
	TabFrame.Position = UDim2.new(0, 0, 0, 20)
	TabFrame.Size = UDim2.new(0, 120, 0, 0)
	TabFrame.MouseEnter:Connect(function()
		TabFrameMouseLeft = false
	end)
	TabFrame.MouseLeave:Connect(function()
		TabFrameMouseLeft = true
		if TabMouseLeft and DropDownFrameMouseLeft then
			for i, v in pairs(TabFrame:GetChildren()) do
				if not v:IsA("UIListLayout") then
					v.Visible = false
				end
			end
			TabFrame:TweenSize(UDim2.new(0, 120, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.25, true)
		end
	end)

	ButtonListLayout.Name = "ButtonListLayout"
	ButtonListLayout.Parent = TabFrame
	ButtonListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	local TabLibrary = {}
	
	function TabLibrary:Button(text, func)
		TabFrameSize = TabFrameSize + 20
		local Button = Instance.new("TextButton")
		Button.Name = text
		Button.Parent = TabFrame
		Button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
		Button.BorderSizePixel = 0
		Button.Size = UDim2.new(0, 120, 0, 20)
		Button.Font = Enum.Font.SciFi
		Button.Text = " " .. text
		Button.TextColor3 = Color3.new(1, 1, 1)
		Button.TextSize = 14
		Button.TextXAlignment = Enum.TextXAlignment.Left
		Button.Visible = false
		Button.MouseButton1Click:Connect(func)
	end
	function TabLibrary:DropDown(text, drops, func)
		TabFrameSize = TabFrameSize + 20
		local DropDownButton = Instance.new("TextButton")
		local DropDownOpened = false
		local DropDownFrame = Instance.new("Frame")
		local DropDownFrameSize = 0
		local DropDownListLayout = Instance.new("UIListLayout")
		DropDownButton.Name = text
		DropDownButton.Parent = TabFrame
		DropDownButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
		DropDownButton.BorderSizePixel = 0
		DropDownButton.Size = UDim2.new(0, 120, 0, 20)
		DropDownButton.Font = Enum.Font.SciFi
		DropDownButton.Text = text
		DropDownButton.TextColor3 = Color3.new(1, 1, 1)
		DropDownButton.TextSize = 14
		DropDownButton.Visible = false
		DropDownButton.MouseButton1Click:Connect(function()
			if DropDownOpened then
			    for i, v in pairs(DropDownFrame:GetChildren()) do
					if v:IsA("TextButton") then
						v.Visible = false
					end
			    end
				DropDownFrame:TweenSize(UDim2.new(0, 120, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.25, true)
				DropDownOpened = false
				DropDownMouseLeft = true
			else
			    DropDownFrame:TweenSize(UDim2.new(0, 120, 0, DropDownFrameSize), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.25, true)
			    while DropDownFrame.Size ~= UDim2.new(0, 120, 0, DropDownFrameSize) do
		            wait()
		        end
				for i, v in pairs(DropDownFrame:GetChildren()) do
					if v:IsA("TextButton") then
						v.Visible = true
					end
				end
				DropDownOpened = true
			end
		end)

		DropDownFrame.Name = "DropDownFrame"
		DropDownFrame.Parent = DropDownButton
		DropDownFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		DropDownFrame.BorderSizePixel = 0
		DropDownFrame.Position = UDim2.new(0, 0, 0, 20)
		DropDownFrame.Size = UDim2.new(0, 120, 0, 0)
		Tab.MouseLeave:Connect(function()
			for i, v in pairs(DropDownFrame:GetChildren()) do
				if v:IsA("TextButton") then
					v.Visible = false
				end
			end
			DropDownFrame.Size = UDim2.new(0, 120, 0, 0)
			DropDownOpened = false
			DropDownMouseLeft = true
		end)
		TabFrame.MouseLeave:Connect(function()
			for i, v in pairs(DropDownFrame:GetChildren()) do
				if v:IsA("TextButton") then
					v.Visible = false
				end
			end
			DropDownFrame.Size = UDim2.new(0, 120, 0, 0)
			DropDownOpened = false
			DropDownMouseLeft = true
		end)
		DropDownFrame.MouseEnter:Connect(function()
		    DropDownFrameMouseLeft = false
		end)
		DropDownFrame.MouseLeave:Connect(function()
		    DropDownFrameMouseLeft = true
		    if TabMouseLeft and TabFrameMouseLeft then
	            for i, v in pairs(TabFrame:GetChildren()) do
	                if not v:IsA("UIListLayout") then
						v.Visible = true
					end
	            end
		        TabFrame:TweenSize(UDim2.new(0, 120, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.25, true)
	            for i, v in pairs(DropDownFrame:GetChildren()) do
				    if v:IsA("TextButton") then
					    v.Visible = false
				    end
			    end
			    DropDownFrame.Size = UDim2.new(0, 120, 0, 0)
			    DropDownOpened = false
			    DropDownMouseLeft = true
		    end
		end)
		
		DropDownListLayout.Name = "DropDownListLayout"
		DropDownListLayout.Parent = DropDownFrame
		DropDownListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		
		for i, v in pairs(drops) do
			DropDownFrameSize = DropDownFrameSize + 20
			DropDownFrame.Size = UDim2.new(0, 120, 0, DropDownFrameSize)
			local DropsButton = Instance.new("TextButton")
			DropsButton.Name = v
			DropsButton.Parent = DropDownFrame
			DropsButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
			DropsButton.BorderSizePixel = 0
			DropsButton.Size = UDim2.new(0, 120, 0, 20)
			DropsButton.Font = Enum.Font.SciFi
			DropsButton.Text = " " .. v
			DropsButton.TextColor3 = Color3.new(1, 1, 1)
			DropsButton.TextSize = 14
			DropsButton.Visible = false
			DropsButton.MouseButton1Click:Connect(function()
				for i, v in pairs(DropDownFrame:GetChildren()) do
				    if v:IsA("TextButton") then
					    v.Visible = false
				    end
			    end
			    DropDownFrame:TweenSize(UDim2.new(0, 120, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.25, true)
			    DropDownOpened = false
			    DropDownMouseLeft = true
				func(v)
			end)
		end
		DropDownFrame.Size = UDim2.new(0, 120, 0, 0)
	end
	function TabLibrary:Label(name, text)
		TabFrameSize = TabFrameSize + 20
		local Label = Instance.new("TextLabel")
		Label.Name = name
		Label.Parent = TabFrame
		Label.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
		Label.BorderSizePixel = 0
		Label.Size = UDim2.new(0, 120, 0, 20)
		Label.Font = Enum.Font.SciFi
		Label.Text = " " .. text
		Label.TextColor3 = Color3.new(1, 1, 1)
		Label.TextSize = 14
		Label.TextXAlignment = Enum.TextXAlignment.Left
		Label.Visible = false
	end
	function TabLibrary:TextBox(text, func)
		TabFrameSize = TabFrameSize + 20
		local TextBox = Instance.new("TextBox")
		TextBox.Name = text
		TextBox.Parent = TabFrame
		TextBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
		TextBox.BorderSizePixel = 0
		TextBox.Size = UDim2.new(0, 120, 0, 20)
		TextBox.Font = Enum.Font.SciFi
		TextBox.PlaceholderColor3 = Color3.fromRGB(128, 128, 128)
		TextBox.PlaceholderText = text
		TextBox.Text = ""
		TextBox.TextColor3 = Color3.new(1, 1, 1)
		TextBox.TextSize = 14
		TextBox.Visible = false
		TextBox.FocusLost:Connect(function(Enter)
			if Enter then
				func(TextBox.Text)
			end
		end)
	end
	function TabLibrary:Toggle(text, func)
		TabFrameSize = TabFrameSize + 20
		local ToggleLabel = Instance.new("TextLabel")
		local ToggleButton = Instance.new("TextButton")
		ToggleLabel.Name = text
		ToggleLabel.Parent = TabFrame
		ToggleLabel.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
		ToggleLabel.BorderSizePixel = 0
		ToggleLabel.Size = UDim2.new(0, 120, 0, 20)
		ToggleLabel.Font = Enum.Font.SciFi
		ToggleLabel.Text = " " .. text
		ToggleLabel.TextColor3 = Color3.new(1, 1, 1)
		ToggleLabel.TextSize = 14
		ToggleLabel.TextXAlignment = Enum.TextXAlignment.Left
		ToggleLabel.Visible = false
		
		ToggleButton.Name = "ToggleButton"
		ToggleButton.Parent = ToggleLabel
		ToggleButton.BackgroundColor3 = Color3.new(1, 0, 0)
		ToggleButton.Position = UDim2.new(0, 102, 0, 2)
		ToggleButton.Size = UDim2.new(0, 16, 0, 16)
		ToggleButton.Font = Enum.Font.SourceSans
		ToggleButton.Text = ""
		ToggleButton.TextColor3 = Color3.new(0, 0, 0)
		ToggleButton.TextSize = 14
		ToggleButton.Visible = false
		ToggleButton.MouseButton1Click:Connect(function()
			if ToggleButton.BackgroundColor3 == Color3.new(1, 0, 0) then
				ToggleButton.BackgroundColor3 = Color3.new(0, 1, 0)
				func(true)
			else
				ToggleButton.BackgroundColor3 = Color3.new(1, 0, 0)
				func(false)
			end
		end)
		Tab.MouseEnter:Connect(function()
			ToggleButton.Visible = true
		end)
		Tab.MouseLeave:Connect(function()
			if TabFrameMouseLeft and DropDownFrameMouseLeft then
				ToggleButton.Visible = false
			end
		end)
		TabFrame.MouseEnter:Connect(function()
			ToggleButton.Visible = true
		end)
		TabFrame.MouseLeave:Connect(function()
			if TabMouseLeft and DropDownFrameMouseLeft then
				ToggleButton.Visible = false
			end
		end)
	end
	
	return TabLibrary
end

return Library
