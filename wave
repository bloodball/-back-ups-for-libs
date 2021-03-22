-- slider function by xTheAlex14 // ZypherUI

if game.CoreGui:FindFirstChild('PScreen') then game.CoreGui.PScreen:Destroy() end

local tween = game:GetService('TweenService')

local library = {}

library.UICorner = function(a, b) 
	local _instance = Instance.new('UICorner', b)
	_instance.CornerRadius = UDim.new(0, a)
end

library.Warn = function(title, desc)
	local screen = Instance.new('ScreenGui', game.Players.LocalPlayer.PlayerGui)
	
	local WarnFrame = Instance.new("Frame")
	WarnFrame.Name = "WarnFrame"
	WarnFrame.Parent = screen
	WarnFrame.BackgroundColor3 = Color3.new(0.101961, 0.101961, 0.101961)
	WarnFrame.BorderSizePixel = 0
	WarnFrame.Position = UDim2.new(0, -300, 0, 3)
	WarnFrame.Size = UDim2.new(0, 220, 0, 53)
	library.UICorner(4, WarnFrame)
	
	local Image = Instance.new("ImageLabel")
	Image.Name = "Image"
	Image.Parent = WarnFrame
	Image.BackgroundColor3 = Color3.new(1, 1, 1)
	Image.BackgroundTransparency = 1
	Image.BorderSizePixel = 0
	Image.Position = UDim2.new(0, 0, -0.0754716992, 0)
	Image.Size = UDim2.new(0, 29, 0, 29)
	Image.Image = "rbxassetid://3944704135"
	Image.ScaleType = Enum.ScaleType.Fit
	
	local Title = Instance.new("TextLabel")
	Title.Name = "Title"
	Title.Parent = WarnFrame
	Title.BackgroundColor3 = Color3.new(1, 1, 1)
	Title.BackgroundTransparency = 1
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0.168181822, 0, 0, 0)
	Title.Size = UDim2.new(0, 183, 0, 21)
	Title.Font = Enum.Font.GothamSemibold
	Title.Text = title
	Title.TextColor3 = Color3.new(1, 1, 1)
	Title.TextSize = 17
	Title.TextXAlignment = Enum.TextXAlignment.Left
	
	local Desc = Instance.new("TextLabel")
	Desc.Name = "Desc"
	Desc.Parent = WarnFrame
	Desc.BackgroundColor3 = Color3.new(1, 1, 1)
	Desc.BackgroundTransparency = 1
	Desc.BorderSizePixel = 0
	Desc.Position = UDim2.new(0.0136363637, 0, 0.396226406, 0)
	Desc.Size = UDim2.new(0, 214, 0, 30)
	Desc.Font = Enum.Font.Gotham
	Desc.Text = desc
	Desc.TextColor3 = Color3.new(1, 1, 1)
	Desc.TextSize = 14
	Desc.TextWrapped = true
	Desc.TextXAlignment = Enum.TextXAlignment.Left
	Desc.TextYAlignment = Enum.TextYAlignment.Top
	
	tween:Create(WarnFrame, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {Position = UDim2.new(0, 3, 0, 3)}):Play()
	wait(2)
	tween:Create(WarnFrame, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Position = UDim2.new(0, -300, 0, 3)}):Play()
	wait(0.5)
	screen:Destroy()
end

function library:Main()
    local main = {}
    local screen = Instance.new('ScreenGui', game.CoreGui)
    screen.Name = 'PScreen'

    local PanelContainer = Instance.new("Frame")
    PanelContainer.Name = "PanelContainer"
    PanelContainer.Parent = screen
    PanelContainer.BackgroundColor3 = Color3.new(0.0352941, 0.0352941, 0.0352941)
    PanelContainer.BorderSizePixel = 0
    PanelContainer.Position = UDim2.new(0, 3, 0, 3)
    PanelContainer.Size = UDim2.new(0, 353, 0, 206)
    library.UICorner(4, PanelContainer)

    local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		PanelContainer:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y), 'Out', 'Linear', 0.01, true)
	end

	PanelContainer.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			dragStart = input.Position
			startPos = PanelContainer.Position
			repeat
				wait()
			until input.UserInputState == Enum.UserInputState.End
			dragging = false
		end
	end)

	PanelContainer.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			dragInput = input
		end
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)

    local Panel = Instance.new("Frame")
    Panel.Name = "Panel"
    Panel.Parent = PanelContainer
    Panel.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.0941176)
    Panel.BorderSizePixel = 0
    Panel.Position = UDim2.new(0, 3, 0, 3)
    Panel.Size = UDim2.new(0, 126, 0, 200)
    library.UICorner(4, Panel)

    local ContentContainer = Instance.new("Frame")
    ContentContainer.Name = "ContentContainer"
    ContentContainer.Parent = Panel
    ContentContainer.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.0941176)
    ContentContainer.BorderSizePixel = 0
    ContentContainer.Position = UDim2.new(0, 130, 0, 0)
    ContentContainer.Size = UDim2.new(0, 217, 0, 200)
    library.UICorner(4, ContentContainer)

    local ContentScrollContainer = Instance.new("Frame")
    ContentScrollContainer.Name = "ContentScrollContainer"
    ContentScrollContainer.Parent = ContentContainer
    ContentScrollContainer.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
    ContentScrollContainer.BorderSizePixel = 0
    ContentScrollContainer.Position = UDim2.new(0, 3, 0, 3)
    ContentScrollContainer.Size = UDim2.new(0, 211, 0, 194)
    library.UICorner(4, ContentScrollContainer)

    local TabScrollContainer = Instance.new("Frame")
    TabScrollContainer.Name = "TabScrollContainer"
    TabScrollContainer.Parent = Panel
    TabScrollContainer.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
    TabScrollContainer.BorderSizePixel = 0
    TabScrollContainer.Position = UDim2.new(0, 3, 0, 3)
    TabScrollContainer.Size = UDim2.new(0, 120, 0, 194)
    
    library.UICorner(4, TabScrollContainer)
    
    local TabContainer = Instance.new("ScrollingFrame")
    TabContainer.Name = "TabContainer"
    TabContainer.Parent = TabScrollContainer
    TabContainer.Active = true
    TabContainer.BackgroundColor3 = Color3.new(1, 0, 0)
    TabContainer.BackgroundTransparency = 1
    TabContainer.BorderSizePixel = 0
    TabContainer.Size = UDim2.new(0, 120, 0, 194)
    TabContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
    TabContainer.ScrollBarThickness = 0
    library.UICorner(4, TabContainer)

    local UIListLayout_3 = Instance.new("UIListLayout")
    UIListLayout_3.Parent = TabContainer
    UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_3.Padding = UDim.new(0, 1)

    local UIPadding_2 = Instance.new("UIPadding")
    UIPadding_2.Parent = TabContainer
    UIPadding_2.PaddingLeft = UDim.new(0, 6)
    UIPadding_2.PaddingTop = UDim.new(0, 2)

    local folder1 = Instance.new('Folder', ContentScrollContainer)

    local firstTab = true

    function main:Tab(name)
        local tab = {}
        local selected = false

        local Content = Instance.new("ScrollingFrame")
        Content.Name = "Content"
        Content.Parent = folder1
        Content.Active = true
        Content.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
        Content.BackgroundTransparency = 1
        Content.BorderSizePixel = 0
        Content.Size = UDim2.new(0, 211, 0, 194)
        Content.CanvasSize = UDim2.new(0, 0, 0, 0)
        Content.ScrollBarThickness = 0
        Content.Visible = false

        local UIListLayout = Instance.new("UIListLayout")
        UIListLayout.Parent = Content
        UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 2)

        local UIPadding = Instance.new("UIPadding")
        UIPadding.Parent = Content
        UIPadding.PaddingBottom = UDim.new(0, 2)

        local TabButton = Instance.new("TextButton")
        TabButton.Name = "TabButton"
        TabButton.Parent = TabContainer
        TabButton.BackgroundColor3 = Color3.new(1, 1, 1)
        TabButton.BackgroundTransparency = 1
        TabButton.BorderSizePixel = 0
        TabButton.Size = UDim2.new(0, 120, 0, 18)
        TabButton.Font = Enum.Font.Gotham
        TabButton.Text = name
        TabButton.TextColor3 = Color3.new(0.898039, 0.898039, 0.898039)
        TabButton.TextSize = 16
        TabButton.TextXAlignment = Enum.TextXAlignment.Left
        TabButton.TextStrokeColor3 = Color3.fromRGB(71, 177, 230)
        library.UICorner(4, TabButton)

        if firstTab then selected = true
            firstTab = false
            TabButton.TextStrokeTransparency = 0.8
            Content.Visible = true
        end

        TabButton.MouseButton1Down:Connect(function()
            for i, v in pairs(TabContainer:GetChildren()) do
                if v:IsA('TextButton') then
                    tween:Create(v, TweenInfo.new(0.2), {TextStrokeTransparency = 1}):Play()
                end
            end
            for i, v in pairs(folder1:GetChildren()) do
                v.Visible = false
            end
            tween:Create(TabButton, TweenInfo.new(0.3), {TextStrokeTransparency = 0.8}):Play()
            Content.Visible = true
        end)

        function tab:Section(name)
            local section = {}

            local Section = Instance.new("TextLabel")
            Section.Name = "Section"
            Section.Parent = Content
            Section.BackgroundColor3 = Color3.new(1, 1, 1)
            Section.BackgroundTransparency = 1
            Section.BorderSizePixel = 0
            Section.Size = UDim2.new(0, 203, 0, 22)
            Section.Font = Enum.Font.GothamSemibold
            Section.Text = name
            Section.TextColor3 = Color3.new(1, 1, 1)
            Section.TextSize = 17
            Section.TextXAlignment = Enum.TextXAlignment.Left

            function section:Item(type, name, callback, options)
                local item = {}

                if type:lower() == 'label' then
                    local Label = Instance.new("TextLabel")
                    Label.Name = "Label"
                    Label.Parent = Content
                    Label.BackgroundColor3 = Color3.new(1, 1, 1)
                    Label.BackgroundTransparency = 1
                    Label.BorderSizePixel = 0
                    Label.Size = UDim2.new(0, 203, 0, 20)
                    Label.Font = Enum.Font.Gotham
                    Label.Text = name
                    Label.TextColor3 = Color3.new(1, 1, 1)
                    Label.TextSize = 14
                    Label.TextXAlignment = Enum.TextXAlignment.Left

                elseif type:lower() == 'button' then
                    local Button = Instance.new("TextButton")
                    Button.Name = "Button"
                    Button.Parent = Content
                    Button.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
                    Button.BorderSizePixel = 0
                    Button.Position = UDim2.new(0.0284360182, 0, 0.128865972, 0)
                    Button.Size = UDim2.new(0, 203, 0, 20)
                    Button.AutoButtonColor = false
                    Button.Font = Enum.Font.Gotham
                    Button.TextColor3 = Color3.new(0.905882, 0.905882, 0.905882)
                    Button.TextSize = 14
                    Button.Text = name
                    library.UICorner(4, Button)

                    Button.MouseButton1Down:Connect(function()
                        tween:Create(Button, TweenInfo.new(0.3), {TextColor3 = Color3.fromRGB(71, 177, 230)}):Play()
                        wait(0.1)
                        tween:Create(Button, TweenInfo.new(0.3), {TextColor3 = Color3.new(0.905882, 0.905882, 0.905882)}):Play()
                        if callback then
                            callback()
                        end
                    end)

                elseif type:lower() == 'textbox' then
                    local TextBox = Instance.new("TextLabel")
                    TextBox.Name = "TextBox"
                    TextBox.Parent = Content
                    TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
                    TextBox.BackgroundTransparency = 1
                    TextBox.BorderSizePixel = 0
                    TextBox.Size = UDim2.new(0, 203, 0, 20)
                    TextBox.Font = Enum.Font.Gotham
                    TextBox.Text = name
                    TextBox.TextColor3 = Color3.new(1, 1, 1)
                    TextBox.TextSize = 14
                    TextBox.TextXAlignment = Enum.TextXAlignment.Left

                    local TextBoxText = Instance.new("TextBox")
                    TextBoxText.Name = "TextBoxText"
                    TextBoxText.Parent = TextBox
                    TextBoxText.BackgroundColor3 = Color3.new(0.0352941, 0.0352941, 0.0352941)
                    TextBoxText.BackgroundTransparency = 1
                    TextBoxText.BorderSizePixel = 0
                    TextBoxText.Position = UDim2.new(0.49702251, 0, 0, 0)
                    TextBoxText.Size = UDim2.new(0, 100, 0, 20)
                    TextBoxText.ZIndex = 500
                    TextBoxText.ClearTextOnFocus = true
                    TextBoxText.Font = Enum.Font.Gotham
                    TextBoxText.PlaceholderColor3 = Color3.new(0.862745, 0.862745, 0.862745)
                    TextBoxText.PlaceholderText = "TextBox"
                    TextBoxText.Text = ""
                    TextBoxText.TextColor3 = Color3.new(1, 1, 1)
                    TextBoxText.TextSize = 14
                    TextBoxText.TextWrapped = true
                    TextBoxText.TextXAlignment = Enum.TextXAlignment.Right

                    local BG = Instance.new("Frame")
                    BG.Name = "BG"
                    BG.Parent = TextBoxText
                    BG.BackgroundColor3 = Color3.new(0.0352941, 0.0352941, 0.0352941)
                    BG.BorderSizePixel = 0
                    BG.Size = UDim2.new(0, 102, 0, 20)
                    library.UICorner(4, BG)
                    
                    if options and options.Placeholder then
                        TextBoxText.PlaceholderText = options.Placeholder
                    end

                    TextBoxText.FocusLost:Connect(function() 
                        tween:Create(TextBoxText, TweenInfo.new(0.3), {TextColor3 = Color3.fromRGB(71, 177, 230)}):Play()
                        if callback then
                            callback(TextBoxText.Text)
                        end
                        wait(0.1)
                        tween:Create(TextBoxText, TweenInfo.new(0.3), {TextColor3 = Color3.new(0.905882, 0.905882, 0.905882)}):Play()
                    end)
                elseif type:lower() == 'slider' then
                    local Min = 0
                    local Max = 100
                    local Value

                    if options then
                        if options.Max then
                            Max = options.Max
                        end
                        if options.Min then
                            Min = options.Min
                        end
                    end

                    local SliderHigh = Instance.new("TextLabel")
                    SliderHigh.Name = "Slider - High"
                    SliderHigh.Parent = Content
                    SliderHigh.BackgroundColor3 = Color3.new(1, 1, 1)
                    SliderHigh.BackgroundTransparency = 1
                    SliderHigh.BorderSizePixel = 0
                    SliderHigh.Position = UDim2.new(-0.132701427, 0, 0.0180412363, 0)
                    SliderHigh.Size = UDim2.new(0, 203, 0, 20)
                    SliderHigh.Font = Enum.Font.Gotham
                    SliderHigh.Text = name
                    SliderHigh.TextColor3 = Color3.new(1, 1, 1)
                    SliderHigh.TextSize = 14
                    SliderHigh.TextXAlignment = Enum.TextXAlignment.Left

                    local SliderButton = Instance.new("TextButton")
                    SliderButton.Name = "SliderButton"
                    SliderButton.Parent = SliderHigh
                    SliderButton.BackgroundColor3 = Color3.new(0.0352941, 0.0352941, 0.0352941)
                    SliderButton.BorderSizePixel = 0
                    SliderButton.Size = UDim2.new(0, 102, 0, 8)
                    SliderButton.AutoButtonColor = false
                    SliderButton.Font = Enum.Font.SourceSans
                    SliderButton.Text = ""
                    SliderButton.TextColor3 = Color3.new(0, 0, 0)
                    SliderButton.TextSize = 14
                    SliderButton.Position =  UDim2.new(0.49702251, 0, 0.349999994, 0)
                    library.UICorner(4, SliderButton)

                    local SliderFrame = Instance.new("Frame")
                    SliderFrame.Name = "SliderFrame"
                    SliderFrame.Parent = SliderButton
                    SliderFrame.BackgroundColor3 = Color3.new(0.301961, 0.847059, 0.180392)
                    SliderFrame.BorderSizePixel = 0
                    SliderFrame.Size = UDim2.new(0, 16, 0, 8)
                    library.UICorner(4, SliderFrame)

                    local t = Instance.new("TextLabel")
                    t.Name = ""
                    t.Parent = SliderFrame
                    t.BackgroundColor3 = Color3.new(1, 1, 1)
                    t.BackgroundTransparency = 1
                    t.TextStrokeTransparency = 0
                    t.BorderSizePixel = 0
                    t.Position = UDim2.new(0, 100, 0, -5)
                    t.Size = UDim2.new(0, 20, 0, 20)
                    t.Font = Enum.Font.Gotham
                    t.Text = '0'
                    t.TextColor3 = Color3.new(1, 1, 1)
                    t.TextSize = 14
                    t.TextXAlignment = Enum.TextXAlignment.Left
                    tween:Create(t, TweenInfo.new(0), {TextTransparency = 10}):Play()

                    SliderButton.MouseButton1Down:Connect(function()
						MoveConnection = game:GetService('RunService').Heartbeat:Connect(function()
                            tween:Create(t, TweenInfo.new(0.1), {TextTransparency = 0}):Play()
							local Scale = math.clamp(game:GetService('Players').LocalPlayer:GetMouse().X - SliderButton.AbsolutePosition.X, 0, SliderButton.AbsoluteSize.X) /  SliderButton.AbsoluteSize.X
							Value = math.floor(Min + ((Max - Min) * Scale))
                            t.Text = Value
                            local rgbcolor = math.floor(0 + ((255 - 0) * Scale))
                            tween:Create(SliderFrame, TweenInfo.new(0.05), {BackgroundColor3 = Color3.fromRGB(255 - Value, rgbcolor, 0)}):Play()
							tween:Create(SliderFrame, TweenInfo.new(0.05), {Size = UDim2.new(Scale, 0, 0, 8)}):Play()
                            if Value > 87 then
                                Value = 87
                            end
                            tween:Create(t, TweenInfo.new(0.05), {Position = UDim2.new(0, (Value - 5), 0, -10)}):Play()
                            if callback then
                                callback(Value)
                            end
						end)
						game:GetService('UserInputService').InputEnded:Connect(function(Check)
							if Check.UserInputType == Enum.UserInputType.MouseButton1 then
								if MoveConnection then
                                    tween:Create(t, TweenInfo.new(0.1), {TextTransparency = 1}):Play()
									MoveConnection:Disconnect()
									MoveConnection = nil
								end
							end
						end)
					end)
                elseif type:lower() == 'toggle' then
                    local on = false

                    local Toggle = Instance.new("TextLabel")
                    Toggle.Name = "Toggle"
                    Toggle.Parent = Content
                    Toggle.BackgroundColor3 = Color3.new(1, 1, 1)
                    Toggle.BackgroundTransparency = 1
                    Toggle.BorderSizePixel = 0
                    Toggle.Size = UDim2.new(0, 203, 0, 20)
                    Toggle.Font = Enum.Font.Gotham
                    Toggle.Text = name
                    Toggle.TextColor3 = Color3.new(1, 1, 1)
                    Toggle.TextSize = 14
                    Toggle.TextXAlignment = Enum.TextXAlignment.Left

                    local ToggleFrame = Instance.new("Frame")
                    ToggleFrame.Name = "ToggleFrame"
                    ToggleFrame.Parent = Toggle
                    ToggleFrame.BackgroundColor3 = Color3.new(0.847059, 0, 0)
                    ToggleFrame.BorderSizePixel = 0
                    ToggleFrame.Position = UDim2.new(0.802955687, 0, 0, 0)
                    ToggleFrame.Size = UDim2.new(0, 40, 0, 20)
                    library.UICorner(25, ToggleFrame)

                    local ToggleButton = Instance.new("TextButton")
                    ToggleButton.Name = "ToggleButton"
                    ToggleButton.Parent = ToggleFrame
                    ToggleButton.BackgroundColor3 = Color3.new(1, 1, 1)
                    ToggleButton.BorderSizePixel = 0
                    -- ON
                    -- ToggleButton.Position = UDim2.new(0, 21, 0.100000001, 0)
                    ToggleButton.Position = UDim2.new(0, 2, 0.100000001, 0)
                    ToggleButton.Size = UDim2.new(0, 16, 0, 16)
                    ToggleButton.AutoButtonColor = false
                    ToggleButton.Font = Enum.Font.SourceSans
                    ToggleButton.Text = ""
                    ToggleButton.TextColor3 = Color3.new(0, 0, 0)
                    ToggleButton.TextSize = 14

                    if options and options.Default then
                        on = true
                        ToggleButton.Position = UDim2.new(0, 21, 0.100000001, 0)
                        tween:Create(ToggleButton, TweenInfo.new(0), {Position = UDim2.new(0, 21, 0.100000001, 0)}):Play()
                    end

                    ToggleButton.MouseButton1Down:Connect(function()
                        on = not on
                        if on then
                            tween:Create(ToggleFrame, TweenInfo.new(0.3), {BackgroundColor3 = Color3.new(0.301961, 0.847059, 0.180392)}):Play()
                            tween:Create(ToggleButton, TweenInfo.new(0.3), {Position = UDim2.new(0, 21, 0.100000001, 0)}):Play()
                            if callback then
                                callback(tostring(on))
                            end
                        else
                            tween:Create(ToggleFrame, TweenInfo.new(0.3), {BackgroundColor3 = Color3.new(0.847059, 0, 0)}):Play()
                            tween:Create(ToggleButton, TweenInfo.new(0.3), {Position = UDim2.new(0, 2, 0.100000001, 0)}):Play()
                            if callback then
                                callback(tostring(on))
                            end
                        end
                    end)

                    library.UICorner(25, ToggleButton)

                elseif type:lower() == 'dropdown' then
                    local open = false

                    local DropdownOn = Instance.new("TextLabel")
                    DropdownOn.Name = "Dropdown"
                    DropdownOn.Parent = Content
                    DropdownOn.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
                    DropdownOn.BorderSizePixel = 0
                    DropdownOn.Position = UDim2.new(0.0189573467, 0, 0.314432979, 0)
                    DropdownOn.Size = UDim2.new(0, 203, 0, 20)
                    DropdownOn.Font = Enum.Font.Gotham
                    DropdownOn.Text = ""
                    DropdownOn.TextColor3 = Color3.new(1, 1, 1)
                    DropdownOn.TextSize = 14
                    DropdownOn.TextXAlignment = Enum.TextXAlignment.Left
                    library.UICorner(4, DropdownOn)

                    local Text = Instance.new("TextLabel")
                    Text.Name = "Text"
                    Text.Parent = DropdownOn
                    Text.BackgroundColor3 = Color3.new(1, 1, 1)
                    Text.BackgroundTransparency = 1
                    Text.BorderSizePixel = 0
                    Text.Size = UDim2.new(0, 203, 0, 20)
                    Text.Font = Enum.Font.Gotham
                    Text.Text = name
                    Text.TextColor3 = Color3.new(1, 1, 1)
                    Text.TextSize = 14
                    Text.Position = UDim2.new(0, 0, 0, 0)

                    local Arrow = Instance.new("TextButton")
                    Arrow.Name = "Arrow"
                    Arrow.Parent = DropdownOn
                    Arrow.BackgroundColor3 = Color3.new(1, 1, 1)
                    Arrow.BackgroundTransparency = 1
                    Arrow.BorderSizePixel = 0
                    Arrow.Position = UDim2.new(0.886699557, 0, 0, 0)
                    Arrow.Size = UDim2.new(0, 20, 0, 20)
                    Arrow.Font = Enum.Font.Gotham
                    Arrow.Text = "+"
                    Arrow.TextColor3 = Color3.new(1, 1, 1)
                    Arrow.TextSize = 17

                    local ScrollContainer = Instance.new("Frame")
                    ScrollContainer.Name = "ScrollContainer"
                    ScrollContainer.Parent = DropdownOn
                    ScrollContainer.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
                    ScrollContainer.BorderSizePixel = 0
                    ScrollContainer.BackgroundTransparency = 1
                    ScrollContainer.Position = UDim2.new(0.0197044332, 0, 0.194174752, 0)
                    ScrollContainer.Size = UDim2.new(0, 195, 0, 80)
                    ScrollContainer.Visible = false
                    library.UICorner(4, ScrollContainer)

                    local Contents = Instance.new("ScrollingFrame")
                    Contents.Name = "Contents"
                    Contents.Parent = ScrollContainer
                    Contents.Active = true
                    Contents.BackgroundColor3 = Color3.new(1, 1, 1)
                    Contents.BackgroundTransparency = 1
                    Contents.BorderSizePixel = 0
                    Contents.Size = UDim2.new(0, 195, 0, 80)
                    Contents.CanvasSize = UDim2.new(0, 0, 0, 0)
                    Contents.ScrollBarThickness = 0
                    Contents.AutomaticCanvasSize = Enum.AutomaticSize.Y

                    local UIListLayout = Instance.new("UIListLayout")
                    UIListLayout.Parent = Contents
                    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

                    if options and options.items then
                        for i,v in pairs(options.items) do
                            local ContentItem = Instance.new("TextButton")
                            ContentItem.Name = "ContentItem"
                            ContentItem.Parent = Contents
                            ContentItem.BackgroundColor3 = Color3.new(1, 1, 1)
                            ContentItem.BackgroundTransparency = 1
                            ContentItem.BorderSizePixel = 0
                            ContentItem.Size = UDim2.new(0, 195, 0, 17)
                            ContentItem.Font = Enum.Font.Gotham
                            ContentItem.Text = v
                            ContentItem.TextColor3 = Color3.new(1, 1, 1)
                            ContentItem.TextSize = 14
                            ContentItem.TextTransparency = 1
                            
                            library.UICorner(4, ContentItem)

                            ContentItem.MouseButton1Down:Connect(function()
                                Text.Text = v
                                Arrow.Text = "+"
                                tween:Create(DropdownOn, TweenInfo.new(0.2), {Size = UDim2.new(0, 203, 0, 20)}):Play()
                                tween:Create(Content, TweenInfo.new(0.2), {CanvasSize = Content.CanvasSize - UDim2.new(0, 0, 0, 107)}):Play()
                                tween:Create(ScrollContainer, TweenInfo.new(0.1), {BackgroundTransparency = 1}):Play()
                                for i,v in pairs(Contents:GetChildren()) do
                                    if v:IsA('TextButton') then
                                        tween:Create(v, TweenInfo.new(0.1), {TextTransparency = 1}):Play()
                                    end
                                end
                                wait(0.1)
                                ScrollContainer.Visible = false
                                open = not open
                                if callback then
                                    callback(v)
                                end
                            end)
                        end
                    end

                    Arrow.MouseButton1Down:Connect(function()
                        if not open then
                            Arrow.Text = "-"
                            open = not open
                            tween:Create(Content, TweenInfo.new(0.2), {CanvasSize = Content.CanvasSize + UDim2.new(0, 0, 0, 107)}):Play()
                            tween:Create(DropdownOn, TweenInfo.new(0.2), {Size = UDim2.new(0, 203, 0, 103)}):Play()
                            wait(0.1)
                            ScrollContainer.Visible = true
                            tween:Create(ScrollContainer, TweenInfo.new(0.5), {BackgroundTransparency = 0}):Play()
                            for i,v in pairs(Contents:GetChildren()) do
                                if v:IsA('TextButton') then
                                    tween:Create(v, TweenInfo.new(0.5), {TextTransparency = 0}):Play()
                                end
                            end
                        else
                            Arrow.Text = "+"
                            tween:Create(DropdownOn, TweenInfo.new(0.2), {Size = UDim2.new(0, 203, 0, 20)}):Play()
                            tween:Create(Content, TweenInfo.new(0.2), {CanvasSize = Content.CanvasSize - UDim2.new(0, 0, 0, 107)}):Play()
                            tween:Create(ScrollContainer, TweenInfo.new(0.1), {BackgroundTransparency = 1}):Play()
                            for i,v in pairs(Contents:GetChildren()) do
                                if v:IsA('TextButton') then
                                    tween:Create(v, TweenInfo.new(0.1), {TextTransparency = 1}):Play()
                                end
                            end
                            wait(0.1)
                            ScrollContainer.Visible = false
                            open = not open
                        end
                    end)

                end

                Content.CanvasSize = Content.CanvasSize + UDim2.new(0, 0, 0, 24)
                return item
            end
            return section
        end
        return tab
    end
    return main
end

return library
