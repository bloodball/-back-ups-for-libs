-- Feel free to edit, modify, or do whatever!

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local exploit = (pebc_execute and "ProtoSmasher" or syn and "SynapseX")

local LibraryUI = Instance.new("ScreenGui")
if exploit == "SynapseX" then
    syn.protect_gui(LibraryUI)
elseif exploit == "ProtoSmasher" then
    get_hidden_gui(LibraryUI)
end

local Holder = Instance.new("Frame")
local TabPadding = Instance.new("UIPadding")
local TabLayout = Instance.new("UIListLayout")
-- Colors & Other Settings

local Library = {
    Colors = {
        Body = Color3.fromRGB(35, 35, 35);
        Section = Color3.fromRGB(40, 40, 40);
        CheckboxChecked = Color3.fromRGB(255, 255, 255);
        CheckboxUnchecked = Color3.fromRGB(50, 50, 50);
        Button = Color3.fromRGB(45, 45, 45);
        ColorPickerMarker = Color3.fromRGB(150, 150, 150);
        SliderBackground = Color3.fromRGB(50, 50, 50);
        Slider = Color3.fromRGB(255, 255, 255);
        Dropdown = Color3.fromRGB(45, 45, 45);
        DropdownButton = Color3.fromRGB(35, 35, 35);
        DropdownButtonHover = Color3.fromRGB(45, 45, 45);
        Underline = Color3.fromRGB(255, 255, 255);
        Border = Color3.fromRGB(0, 0, 0);
        Text = Color3.fromRGB(255, 255, 255);
        PlaceholderText = Color3.fromRGB(255, 255, 255);
    };

    Settings = {
        MainTextSize = 15;
        MainTweenTime = 1;
        RippleTweenTime = 1;
        CheckboxTweenTime = 0.5;
        ColorPickerTweenTime = 0.5;
        DropdownTweenTime = 0.5;
        DropdownButtonColorHoverTweenTime = 0.5;
        MainTextFont = Enum.Font.Code;
        UIToggleKey = Enum.KeyCode.RightControl;
        TweenEasingStyle = Enum.EasingStyle.Quart;
    }
}

LibraryUI.Name = "LibraryUI"
LibraryUI.Parent = game:GetService("CoreGui")
LibraryUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Holder.Name = "Holder"
Holder.Parent = LibraryUI
Holder.BackgroundColor3 = Color3.new(0, 0, 0)
Holder.BackgroundTransparency = 1
Holder.BorderColor3 = Color3.new(0, 0, 0)
Holder.BorderSizePixel = 0
Holder.Size = UDim2.new(0, 100, 0, 100)

TabPadding.Name = "TabPadding"
TabPadding.Parent = Holder
TabPadding.PaddingLeft = UDim.new(0, 25)
TabPadding.PaddingTop = UDim.new(0, 50)

TabLayout.Name = "TabLayout"
TabLayout.Parent = Holder
TabLayout.SortOrder = Enum.SortOrder.LayoutOrder
TabLayout.Padding = UDim.new(0, 5)

UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if gameProcessedEvent then return end

    if input.KeyCode == Library.Settings.UIToggleKey then
        LibraryUI.Enabled = not LibraryUI.Enabled
    end
end)

--Main Library
function Library:CreateTab(tabtitle, tabdescription)
    local TabName = Instance.new("TextButton")
    local TabNameBody = Instance.new("Frame")
    local BodyLayout = Instance.new("UIListLayout")
    local DescriptionHolder = Instance.new("Frame")
    local DescriptionText = Instance.new("TextLabel")
    local TabUnderline = Instance.new("Frame")

    local IsATabOpen = false
    local BodyYSize = 0

    TabName.Name = (tabtitle .. "Tab")
    TabName.Parent = Holder
    TabName.Text = tabtitle
    TabName.TextTransparency = 1
    TabName.BackgroundColor3 = Library.Colors.Body
    TabName.BackgroundTransparency = 1
    TabName.BorderColor3 = Library.Colors.Border
    TabName.BorderSizePixel = 0
    TabName.Position = UDim2.new(0.150000006, 0, 0.5, 0)
    TabName.Size = UDim2.new(0, 200, 0, 32)
    TabName.AutoButtonColor = false
    TabName.Font = Library.Settings.MainTextFont
    TabName.TextColor3 = Library.Colors.Text
    TabName.TextSize = Library.Settings.MainTextSize

    TabNameBody.Name = (tabtitle .. "TabBody")
    TabNameBody.Parent = TabName
    TabNameBody.BackgroundColor3 = Library.Colors.Body
    TabNameBody.BackgroundTransparency = 0
    TabNameBody.BorderColor3 = Library.Colors.Border
    TabNameBody.BorderSizePixel = 0
    TabNameBody.ClipsDescendants = true
    TabNameBody.Position = UDim2.new(1.08000004, 0, 0, 0)
    TabNameBody.Size = UDim2.new(1, 0, 0, BodyYSize)
    TabNameBody.Visible = false
    TabNameBody.ZIndex = 2

    local function ExtendBodySize(value)
        BodyYSize = BodyYSize + value

        TweenService:Create(TabNameBody, TweenInfo.new(0.5, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {Size = UDim2.new(1, 0, 0, BodyYSize)}):Play()
    end

    local function UnExtendBodySize(value)
        BodyYSize = BodyYSize - value

        TweenService:Create(TabNameBody, TweenInfo.new(0.5, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {Size = UDim2.new(1, 0, 0, BodyYSize)}):Play()
    end

    BodyLayout.Name = "BodyLayout"
    BodyLayout.Parent = TabNameBody
    BodyLayout.SortOrder = Enum.SortOrder.LayoutOrder

    local TextBounds = game:GetService("TextService"):GetTextSize(tabdescription, Library.Settings.MainTextSize, Library.Settings.MainTextFont, Vector2.new(math.huge, math.huge))

    DescriptionHolder.Name = (tabtitle .. "DescriptionHolder")
    DescriptionHolder.Parent = TabName
    DescriptionHolder.BackgroundColor3 = Library.Colors.Body
    DescriptionHolder.BorderColor3 = Library.Colors.Border
    DescriptionHolder.BorderSizePixel = 0
    DescriptionHolder.ClipsDescendants = true
    DescriptionHolder.Position = UDim2.new(1.08000004, 0, 0, 0)
    DescriptionHolder.Size = UDim2.new(0, 0, 0, 32)


    DescriptionText.Name = (tabtitle .. "Description")
    DescriptionText.Parent = DescriptionHolder
    DescriptionText.BackgroundColor3 = Library.Colors.Border
    DescriptionText.BackgroundTransparency = 1
    DescriptionText.BorderColor3 = Library.Colors.Border
    DescriptionText.BorderSizePixel = 0
    DescriptionText.Size = UDim2.new(0, 200, 0, 32)
    DescriptionText.Font = Library.Settings.MainTextFont
    DescriptionText.Text = (" " .. tabdescription)
    DescriptionText.TextColor3 = Library.Colors.Text
    DescriptionText.TextSize = Library.Settings.MainTextSize
    DescriptionText.TextXAlignment = Enum.TextXAlignment.Left
    
    TabUnderline.Name = (tabtitle .. "TabUnderline")
    TabUnderline.Parent = TabName
    TabUnderline.BackgroundColor3 = Library.Colors.Underline
    TabUnderline.BorderColor3 = Library.Colors.Border
    TabUnderline.BorderSizePixel = 0
    TabUnderline.Position = UDim2.new(0.5, 0, 0.938000023, 0)
    TabUnderline.Size = UDim2.new(0, 0, 0, 2)
    TabUnderline.ZIndex = 2

    function TabIntro()
        TweenService:Create(TabName, TweenInfo.new(1, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
        TweenService:Create(TabName, TweenInfo.new(1, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {BackgroundTransparency = 0}):Play()
    end


    TabName.MouseButton1Down:Connect(function()
        RippleEffect(TabName)
        TweenService:Create(TabUnderline, TweenInfo.new(0.50, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, 0, 0.938000023, 0), Size = UDim2.new(0, 0, 0, 2)}):Play()
        TweenService:Create(DescriptionHolder, TweenInfo.new(0.50, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {Position = UDim2.new(1.08000004, 0, 0, 0), Size = UDim2.new(0, 0, 0, 32)}):Play()

        if not IsATabOpen then
            IsATabOpen = true
            TabNameBody.Visible = true
        elseif IsATabOpen then
            IsATabOpen = false
        end
    end)

    TabName.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            if IsATabOpen then
                return false
            elseif not IsATabOpen then
                TweenService:Create(TabUnderline, TweenInfo.new(0.50, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {Position = UDim2.new(0, 0, 0.9375, 0), Size = UDim2.new(0, 200, 0, 2)}):Play()
                TweenService:Create(DescriptionHolder, TweenInfo.new(0.50, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {Position = UDim2.new(1.08000004, 0, 0, 0), Size = UDim2.new(0, TextBounds.X + 15, 0, 32)}):Play()
            end
        end
    end)

    TabName.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            TweenService:Create(TabUnderline, TweenInfo.new(0.50, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, 0, 0.938000023, 0), Size = UDim2.new(0, 0, 0, 2)}):Play()
            TweenService:Create(DescriptionHolder, TweenInfo.new(0.50, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {Position = UDim2.new(1.08000004, 0, 0, 0), Size = UDim2.new(0, 0, 0, 32)}):Play()
        end
    end)

    TabIntro()

    local CoastsLibrary = {}

    function RippleEffect(button)
        spawn(function()
            local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
            local RippleHolder = Instance.new("Frame")
            local RippleEffect = Instance.new("ImageLabel")

            RippleHolder.Name = "RippleHolder"
            RippleHolder.Parent = button
            RippleHolder.BackgroundColor3 = Library.Colors.Border
            RippleHolder.BackgroundTransparency = 1
            RippleHolder.BorderColor3 = Library.Colors.Border
            RippleHolder.BorderSizePixel = 0
            RippleHolder.ClipsDescendants = true
            RippleHolder.Size = UDim2.new(0, 200, 0, 32)

            RippleEffect.Name = "RippleEffect"
            RippleEffect.Parent = RippleHolder
            RippleEffect.BackgroundTransparency = 1
            RippleEffect.BorderSizePixel = 0
            RippleEffect.Image = "rbxassetid://2708891598"
            RippleEffect.ImageColor3 = Color3.fromRGB(255, 255, 255)
            RippleEffect.ImageTransparency = 0.8
            RippleEffect.ScaleType = Enum.ScaleType.Fit

            RippleEffect.Position = UDim2.new((Mouse.X - RippleEffect.AbsolutePosition.X) / button.AbsoluteSize.X, 0, (Mouse.Y - RippleEffect.AbsolutePosition.Y) / button.AbsoluteSize.Y, 0)
            TweenService:Create(RippleEffect, TweenInfo.new(Library.Settings.RippleTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {Position = UDim2.new(-5.5, 0, -5.5, 0), Size = UDim2.new(12, 0, 12, 0)}):Play()

            wait(0.5)
            TweenService:Create(RippleEffect, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {ImageTransparency = 1}):Play()

            wait(1)
            RippleHolder:Destroy()
        end)
    end

    function CoastsLibrary:CreateSection(sectionname)
        local SectionLabel = Instance.new("TextLabel")

        SectionLabel.Name = (tabtitle .. "TabSection" .. sectionname)
        SectionLabel.Parent = TabNameBody
        SectionLabel.BackgroundColor3 = Library.Colors.Section
        SectionLabel.BorderColor3 = Library.Colors.Border
        SectionLabel.BorderSizePixel = 0
        SectionLabel.Size = UDim2.new(0, 200, 0, 30)
        SectionLabel.Font = Library.Settings.MainTextFont
        SectionLabel.Text = sectionname
        SectionLabel.TextColor3 = Library.Colors.Text
        SectionLabel.TextSize = Library.Settings.MainTextSize

        TabName.MouseButton1Down:Connect(function()
            if not IsATabOpen then
                ExtendBodySize(30)

                TweenService:Create(SectionLabel, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {BackgroundTransparency = 0}):Play()
                TweenService:Create(SectionLabel, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
            elseif IsATabOpen then
                UnExtendBodySize(30)

                TweenService:Create(SectionLabel, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {BackgroundTransparency = 1}):Play()
                TweenService:Create(SectionLabel, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {TextTransparency = 1}):Play()
            end
        end)
    end

    function CoastsLibrary:CreateCheckbox(checkboxname, action)
        local CheckboxHolder = Instance.new("Frame")
        local CheckboxTitleText = Instance.new("TextLabel")
        local CheckboxButton = Instance.new("ImageButton")
        local ToggleAnimation = Instance.new("Frame")


        CheckboxHolder.Name = (checkboxname .. "CheckboxHolder")
        CheckboxHolder.Parent = TabNameBody
        CheckboxHolder.BackgroundColor3 = Library.Colors.Border
        CheckboxHolder.BackgroundTransparency = 1
        CheckboxHolder.BorderColor3 = Library.Colors.Border
        CheckboxHolder.BorderSizePixel = 0
        CheckboxHolder.Size = UDim2.new(0, 200, 0, 30)

        CheckboxTitleText.Name = "CheckboxTitleText"
        CheckboxTitleText.Parent = CheckboxHolder
        CheckboxTitleText.BackgroundColor3 = Library.Colors.Border
        CheckboxTitleText.BackgroundTransparency = 1
        CheckboxTitleText.BorderColor3 = Library.Colors.Border
        CheckboxTitleText.BorderSizePixel = 0
        CheckboxTitleText.Position = UDim2.new(0.0350000001, 0, 0.112999983, 0)
        CheckboxTitleText.Size = UDim2.new(0, 146, 0, 25)
        CheckboxTitleText.Font = Library.Settings.MainTextFont
        CheckboxTitleText.Text = checkboxname
        CheckboxTitleText.TextColor3 = Color3.new(1, 1, 1)
        CheckboxTitleText.TextSize = Library.Settings.MainTextSize
        CheckboxTitleText.TextXAlignment = Enum.TextXAlignment.Left

        CheckboxButton.Name = "CheckboxButton"
        CheckboxButton.Parent = CheckboxHolder
        CheckboxButton.BackgroundColor3 = Library.Colors.Body
        CheckboxButton.BorderColor3 = Color3.new(0.164706, 0.164706, 0.164706)
        CheckboxButton.Position = UDim2.new(0.829999983, 0, 0.116999999, 0)
        CheckboxButton.Size = UDim2.new(0, 25, 0, 24)
        CheckboxButton.AutoButtonColor = false
        CheckboxButton.Image = "rbxassetid://1202200114"

        ToggleAnimation.Name = "ToggleAnimation"
        ToggleAnimation.Parent = CheckboxHolder
        ToggleAnimation.BackgroundColor3 = Library.Colors.Body
        ToggleAnimation.BorderColor3 = Library.Colors.Border
        ToggleAnimation.BorderSizePixel = 0
        ToggleAnimation.Position = UDim2.new(0.829999983, 0, 0.116999999, 0)
        ToggleAnimation.Size = UDim2.new(0, 25, 0, 24)

        CheckboxButton.MouseButton1Down:Connect(function()
            Enabled = not Enabled

            if Enabled then
                TweenService:Create(ToggleAnimation, TweenInfo.new(Library.Settings.CheckboxTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {Position =  UDim2.new(0.955, 0 , 0.117, 0), Size = UDim2.new(0, 0, 0, 24)}):Play()
            elseif not Enabled then
                TweenService:Create(ToggleAnimation, TweenInfo.new(Library.Settings.CheckboxTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {Position =  UDim2.new(0.83, 0 , 0.117, 0), Size = UDim2.new(0, 25, 0, 24)}):Play()
            end

            action(Enabled)
        end)

        TabName.MouseButton1Down:Connect(function()
            if not IsATabOpen then
                ExtendBodySize(30)

                TweenService:Create(ToggleAnimation, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {BackgroundTransparency = 0}):Play()
                TweenService:Create(CheckboxTitleText, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
                TweenService:Create(CheckboxButton, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {BackgroundTransparency = 0}):Play()
                TweenService:Create(CheckboxButton, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
                TweenService:Create(CheckboxButton, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
            elseif IsATabOpen then
                UnExtendBodySize(30)

                TweenService:Create(ToggleAnimation, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {BackgroundTransparency = 1}):Play()
                TweenService:Create(CheckboxTitleText, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {TextTransparency = 1}):Play()
                TweenService:Create(CheckboxButton, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {BackgroundTransparency = 1}):Play()
                TweenService:Create(CheckboxButton, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {ImageTransparency = 1}):Play()
            end
        end)
    end

    function CoastsLibrary:CreateButton(buttonname, action)
        local Button = Instance.new("TextButton")

        Button.Name = (buttonname .. "Button")
        Button.Parent = TabNameBody
        Button.BackgroundColor3 = Library.Colors.Button
        Button.BorderColor3 = Library.Colors.Border
        Button.BorderSizePixel = 0
        Button.ClipsDescendants = true
        Button.Size = UDim2.new(0, 200, 0, 30)
        Button.AutoButtonColor = false
        Button.Font = Library.Settings.MainTextFont
        Button.Text = buttonname
        Button.TextColor3 = Library.Colors.Text
        Button.TextSize = Library.Settings.MainTextSize

        Button.MouseButton1Down:Connect(function()
            action()
            RippleEffect(Button)
        end)

        TabName.MouseButton1Down:Connect(function()
            if not IsATabOpen then
                ExtendBodySize(30)

                TweenService:Create(Button, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
                TweenService:Create(Button, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {BackgroundTransparency = 0}):Play()
            elseif IsATabOpen then
                UnExtendBodySize(30)

                TweenService:Create(Button, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {TextTransparency = 1}):Play()
                TweenService:Create(Button, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {BackgroundTransparency = 1}):Play()
            end
        end)
    end

    function CoastsLibrary:CreateColorPicker(colorpickername, colorpickerpresetcolor, action)
        local ColorPickerHolder = Instance.new("Frame")
        local ColorPickerTitleText = Instance.new("TextLabel")
        local ColorPickerButton = Instance.new("TextButton")
        local ColorPickerMain = Instance.new("Frame")
        local ColorPallete = Instance.new("ImageLabel")
        local ColorPalleteMarker = Instance.new("ImageLabel")
        local ColorBrightness = Instance.new("ImageLabel")
        local ColorBrightnessMarker = Instance.new("Frame")
        local ColorRed = Instance.new("TextLabel")
        local ColorGreen = Instance.new("TextLabel")
        local ColorBlue = Instance.new("TextLabel")

        local HSD = false
        local VD = false
        local ColorPickerMainOpen = false

        ColorPickerHolder.Name = (colorpickername .. "ColorPickerHolder")
        ColorPickerHolder.Parent = TabNameBody
        ColorPickerHolder.BackgroundColor3 = Library.Colors.Border
        ColorPickerHolder.BackgroundTransparency = 1
        ColorPickerHolder.BorderColor3 = Library.Colors.Border
        ColorPickerHolder.BorderSizePixel = 0
        ColorPickerHolder.Size = UDim2.new(0, 200, 0, 30)

        ColorPickerTitleText.Name = "ColorPickerTitleText"
        ColorPickerTitleText.Parent = ColorPickerHolder
        ColorPickerTitleText.BackgroundColor3 = Library.Colors.Border
        ColorPickerTitleText.BackgroundTransparency = 1
        ColorPickerTitleText.BorderColor3 = Library.Colors.Border
        ColorPickerTitleText.BorderSizePixel = 0
        ColorPickerTitleText.Position = UDim2.new(0.0350000001, 0, 0.112999983, 0)
        ColorPickerTitleText.Size = UDim2.new(0, 146, 0, 25)
        ColorPickerTitleText.Font = Library.Settings.MainTextFont
        ColorPickerTitleText.Text = colorpickername
        ColorPickerTitleText.TextColor3 = Color3.new(1, 1, 1)
        ColorPickerTitleText.TextSize = Library.Settings.MainTextSize
        ColorPickerTitleText.TextXAlignment = Enum.TextXAlignment.Left

        ColorPickerButton.Name = "ColorPickerButton"
        ColorPickerButton.Parent = ColorPickerHolder
        ColorPickerButton.BackgroundColor3 = colorpickerpresetcolor or Color3.fromRGB(255, 255, 255);
        ColorPickerButton.BorderColor3 = Library.Colors.Border
        ColorPickerButton.BorderSizePixel = 0
        ColorPickerButton.Position = UDim2.new(0.829999983, 0, 0.116999999, 0)
        ColorPickerButton.Size = UDim2.new(0, 25, 0, 24)
        ColorPickerButton.AutoButtonColor = false
        ColorPickerButton.Font = Library.Settings.MainTextFont
        ColorPickerButton.Text = ""
        ColorPickerButton.TextColor3 = Color3.new(255, 255, 255)
        ColorPickerButton.TextSize = Library.Settings.MainTextSize

        local Red, Green, Blue = ColorPickerButton.BackgroundColor3.r * 255, ColorPickerButton.BackgroundColor3.g * 255, ColorPickerButton.BackgroundColor3.b * 255;

        ColorPickerMain.Name = "ColorPickerMain"
        ColorPickerMain.Parent = ColorPickerHolder
        ColorPickerMain.BackgroundColor3 = Library.Colors.Body
        ColorPickerMain.BorderColor3 = Library.Colors.Border
        ColorPickerMain.BorderSizePixel = 0
        ColorPickerMain.ClipsDescendants = true
        ColorPickerMain.Position = UDim2.new(0.995000005, 1, 0.116666667, 0)
        ColorPickerMain.Size = UDim2.new(0, 200, 0, 0)

        ColorPallete.Name = "ColorPallete"
        ColorPallete.Parent = ColorPickerMain
        ColorPallete.BackgroundColor3 = Library.Colors.Border
        ColorPallete.BackgroundTransparency = 1
        ColorPallete.BorderColor3 = Library.Colors.Border
        ColorPallete.BorderSizePixel = 0
        ColorPallete.Position = UDim2.new(0, 5, 0, 4)
        ColorPallete.Size = UDim2.new(0, 149, 0, 151)
        ColorPallete.ZIndex = 2
        ColorPallete.Image = "rbxassetid://4477380641"

        ColorPalleteMarker.Name = "ColorPalleteMarker"
        ColorPalleteMarker.Parent = ColorPallete
        ColorPalleteMarker.BackgroundColor3 = Library.Colors.Border
        ColorPalleteMarker.BackgroundTransparency = 1
        ColorPalleteMarker.BorderColor3 = Library.Colors.Border
        ColorPalleteMarker.BorderSizePixel = 0
        ColorPalleteMarker.Position = UDim2.new(colorpickerpresetcolor and select(1, Color3.toHSV(colorpickerpresetcolor)) or 0, 0, colorpickerpresetcolor and 1 - select(2, Color3.toHSV(colorpickerpresetcolor)) or 0, 0)
        ColorPalleteMarker.Size = UDim2.new(0, 0, 0.200000003, 0)
        ColorPalleteMarker.ZIndex = 2
        ColorPalleteMarker.Image = "rbxassetid://4409133510"
        ColorPalleteMarker.ScaleType = Enum.ScaleType.Crop

        ColorBrightness.Name = "ColorBrightness"
        ColorBrightness.Parent = ColorPickerMain
        ColorBrightness.AnchorPoint = Vector2.new(1, 0)
        ColorBrightness.BackgroundColor3 = Library.Colors.Border
        ColorBrightness.BorderColor3 = Library.Colors.Border
        ColorBrightness.BorderSizePixel = 0
        ColorBrightness.Position = UDim2.new(0, 195, 0, 4)
        ColorBrightness.Size = UDim2.new(0, 34, 0, 151)
        ColorBrightness.ZIndex = 2
        ColorBrightness.Image = "rbxassetid://4477380092"
        ColorBrightness.ScaleType = Enum.ScaleType.Crop

        ColorBrightnessMarker.Name = "ColorBrightnessMarker"
        ColorBrightnessMarker.Parent = ColorBrightness
        ColorBrightnessMarker.AnchorPoint = Vector2.new(0, 0.5)
        ColorBrightnessMarker.BackgroundColor3 = Library.Colors.ColorPickerMarker
        ColorBrightnessMarker.BorderColor3 = Library.Colors.Border
        ColorBrightnessMarker.BorderSizePixel = 0
        ColorBrightnessMarker.Position = UDim2.new(0, 0, 0.013245035, 0)
        ColorBrightnessMarker.Size = UDim2.new(1, 0, 0.0280000009, 0)
        ColorBrightnessMarker.ZIndex = 2

        ColorRed.Name = "ColorRed"
        ColorRed.Parent = ColorPickerMain
        ColorRed.BackgroundColor3 = Library.Colors.Border
        ColorRed.BackgroundTransparency = 1
        ColorRed.BorderColor3 = Library.Colors.Border
        ColorRed.BorderSizePixel = 0
        ColorRed.Position = UDim2.new(0, 5, 0, 155)
        ColorRed.Size = UDim2.new(0, 55, 0, 20)
        ColorRed.Font = Library.Settings.MainTextFont
        ColorRed.Text = ("R: " .. math.floor(Red))
        ColorRed.TextColor3 = Color3.new(1, 1, 1)
        ColorRed.TextSize = Library.Settings.MainTextSize
        ColorRed.TextXAlignment = Enum.TextXAlignment.Left

        ColorGreen.Name = "ColorGreen"
        ColorGreen.Parent = ColorPickerMain
        ColorGreen.BackgroundColor3 = Library.Colors.Border
        ColorGreen.BackgroundTransparency = 1
        ColorGreen.BorderColor3 = Library.Colors.Border
        ColorGreen.BorderSizePixel = 0
        ColorGreen.Position = UDim2.new(0, 72, 0, 155)
        ColorGreen.Size = UDim2.new(0, 55, 0, 20)
        ColorGreen.Font = Library.Settings.MainTextFont
        ColorGreen.Text = ("G: " .. math.floor(Green))
        ColorGreen.TextColor3 = Color3.new(1, 1, 1)
        ColorGreen.TextSize = Library.Settings.MainTextSize
        ColorGreen.TextXAlignment = Enum.TextXAlignment.Left

        ColorBlue.Name = "ColorBlue"
        ColorBlue.Parent = ColorPickerMain
        ColorBlue.BackgroundColor3 = Library.Colors.Border
        ColorBlue.BackgroundTransparency = 1
        ColorBlue.BorderColor3 = Library.Colors.Border
        ColorBlue.BorderSizePixel = 0
        ColorBlue.Position = UDim2.new(0, 145, 0, 155)
        ColorBlue.Size = UDim2.new(0, 55, 0, 20)
        ColorBlue.Font = Library.Settings.MainTextFont
        ColorBlue.Text = ("B: " .. math.floor(Blue))
        ColorBlue.TextColor3 = Color3.new(1, 1, 1)
        ColorBlue.TextSize = Library.Settings.MainTextSize
        ColorBlue.TextXAlignment = Enum.TextXAlignment.Left

        ColorPickerButton.MouseButton1Click:Connect(function()
            if not ColorPickerMainOpen then
                TabNameBody.ClipsDescendants = false
                ColorPickerMainOpen = true

                TweenService:Create(ColorPickerMain, TweenInfo.new(Library.Settings.ColorPickerTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {Size = UDim2.new(0, 200, 0, 175)}):Play()
            elseif ColorPickerMainOpen then
                ColorPickerMainOpen = false
                HSD = false
                VD = false

                TweenService:Create(ColorPickerMain, TweenInfo.new(Library.Settings.ColorPickerTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {Size = UDim2.new(0, 200, 0, 0)}):Play()
            end
        end)

        ColorPallete.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                HSD = true
            end
        end)

        ColorPallete.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                HSD = false
            end
        end)

        ColorBrightness.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                VD = true
            end
        end)

        ColorBrightness.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                VD = false
            end
        end)

        game:GetService("UserInputService").InputChanged:Connect(function(input)
            if HSD and input.UserInputType == Enum.UserInputType.MouseMovement then
                Red, Green, Blue = ColorPickerButton.BackgroundColor3.r * 255, ColorPickerButton.BackgroundColor3.g * 255, ColorPickerButton.BackgroundColor3.b * 255;

                ColorRed.Text = ("R: " .. math.floor(Red))
                ColorGreen.Text = ("G: " .. math.floor(Green))
                ColorBlue.Text = ("B: " .. math.floor(Blue))

                ColorPalleteMarker.Position = UDim2.new(math.clamp((input.Position.X - ColorPallete.AbsolutePosition.X) / ColorPallete.AbsoluteSize.X, 0, 1), 0, math.clamp((input.Position.Y - ColorPallete.AbsolutePosition.Y) / ColorPallete.AbsoluteSize.Y, 0, 1), 0)

                ColorPickerButton.BackgroundColor3 = Color3.fromHSV(ColorPalleteMarker.Position.X.Scale, 1 - ColorPalleteMarker.Position.Y.Scale, 1 - ColorBrightnessMarker.Position.Y.Scale)

                action(ColorPickerButton.BackgroundColor3)
            elseif VD and input.UserInputType == Enum.UserInputType.MouseMovement then
                Red, Green, Blue = ColorPickerButton.BackgroundColor3.r * 255, ColorPickerButton.BackgroundColor3.g * 255, ColorPickerButton.BackgroundColor3.b * 255;

                ColorRed.Text = ("R: " .. math.floor(Red))
                ColorGreen.Text = ("G: " .. math.floor(Green))
                ColorBlue.Text = ("B: " .. math.floor(Blue))

                ColorBrightnessMarker.Position = UDim2.new(0, 0, math.clamp((input.Position.Y - ColorBrightness.AbsolutePosition.Y) / ColorBrightness.AbsoluteSize.Y, 0, 1), 0)

                ColorPickerButton.BackgroundColor3 = Color3.fromHSV(ColorPalleteMarker.Position.X.Scale, 1 - ColorPalleteMarker.Position.Y.Scale, 1 - ColorBrightnessMarker.Position.Y.Scale)

                action(ColorPickerButton.BackgroundColor3)
            end
        end)

        TabName.MouseButton1Down:Connect(function()
            if not IsATabOpen then
                ExtendBodySize(30)

                TweenService:Create(ColorPickerTitleText, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
                TweenService:Create(ColorPickerButton, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {BackgroundTransparency = 0}):Play()
            elseif IsATabOpen then
                UnExtendBodySize(30)

                ColorPickerMainOpen = false
                HSD = false
                VD = false
                TabNameBody.ClipsDescendants = true

                TweenService:Create(ColorPickerMain, TweenInfo.new(Library.Settings.ColorPickerTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {Size = UDim2.new(0, 200, 0, 0)}):Play()
                TweenService:Create(ColorPickerTitleText, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {TextTransparency = 1}):Play()
                TweenService:Create(ColorPickerButton, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {BackgroundTransparency = 1}):Play()
            end
        end)
    end

    function CoastsLibrary:CreateSlider(slidername, minimumvalue, maximumvalue, startvalue, precisevalue, action)
        local SliderHolder = Instance.new("Frame")
        local SliderBackground = Instance.new("Frame")
        local SlidingSlider = Instance.new("Frame")
        local SliderTitleText = Instance.new("TextLabel")
        local SliderValueText = Instance.new("TextLabel")

        local Dragging = false
        local PreciseSliderValue = precisevalue

        SliderHolder.Name = (slidername .. "SliderHolder")
        SliderHolder.Parent = TabNameBody
        SliderHolder.BackgroundColor3 = Library.Colors.Border
        SliderHolder.BackgroundTransparency = 1
        SliderHolder.BorderColor3 = Library.Colors.Border
        SliderHolder.BorderSizePixel = 0
        SliderHolder.Size = UDim2.new(0, 200, 0, 35)

        SliderBackground.Name = (slidername .. "SliderBackground")
        SliderBackground.Parent = SliderHolder
        SliderBackground.BackgroundColor3 = Library.Colors.SliderBackground
        SliderBackground.BorderColor3 = Library.Colors.Border
        SliderBackground.BorderSizePixel = 0
        SliderBackground.ClipsDescendants = true
        SliderBackground.Position = UDim2.new(0.0450000018, 0, 0.646000028, 0)
        SliderBackground.Size = UDim2.new(0, 182, 0, 5)

        SlidingSlider.Name = (slidername .. "SlidingSlider")
        SlidingSlider.Parent = SliderBackground
        SlidingSlider.BackgroundColor3 = Library.Colors.Slider
        SlidingSlider.BorderColor3 = Library.Colors.Border
        SlidingSlider.BorderSizePixel = 0
        SlidingSlider.Position = UDim2.new(-0.00445053587, 0, 0, 0)
        SlidingSlider.Size = UDim2.new((startvalue or 0) / maximumvalue, 0, 0, 5)

        SliderTitleText.Name = (slidername .. "SliderTitleText")
        SliderTitleText.Parent = SliderHolder
        SliderTitleText.BackgroundColor3 = Library.Colors.Border
        SliderTitleText.BackgroundTransparency = 1
        SliderTitleText.BorderColor3 = Library.Colors.Border
        SliderTitleText.BorderSizePixel = 0
        SliderTitleText.Position = UDim2.new(0.0350000001, 0, 0.112999983, 0)
        SliderTitleText.Size = UDim2.new(0, 146, 0, 14)
        SliderTitleText.Font = Library.Settings.MainTextFont
        SliderTitleText.Text = slidername
        SliderTitleText.TextColor3 = Library.Colors.Text
        SliderTitleText.TextSize = Library.Settings.MainTextSize
        SliderTitleText.TextXAlignment = Enum.TextXAlignment.Left

        SliderValueText.Name = (slidername .. "SliderValueText")
        SliderValueText.Parent = SliderHolder
        SliderValueText.BackgroundColor3 = Library.Colors.Border
        SliderValueText.BackgroundTransparency = 1
        SliderValueText.BorderColor3 = Library.Colors.Border
        SliderValueText.BorderSizePixel = 0
        SliderValueText.Position = UDim2.new(0.829999983, 0, 0.11300005, 0)
        SliderValueText.Size = UDim2.new(0, 25, 0, 14)
        SliderValueText.Font = Library.Settings.MainTextFont
        SliderValueText.Text = tostring(startvalue or PreciseSliderValue and tonumber(string.format("%.2f", startvalue)))
        SliderValueText.TextColor3 = Library.Colors.Text
        SliderValueText.TextSize = Library.Settings.MainTextSize
        SliderValueText.TextXAlignment = Enum.TextXAlignment.Right

        local function Sliding(input)
            local Pos = UDim2.new(math.clamp((input.Position.X - SliderBackground.AbsolutePosition.X) / SliderBackground.AbsoluteSize.X, 0, 1), 0, 1, 0)
            SlidingSlider.Size = Pos

            local NonSliderPreciseValue = math.floor(((Pos.X.Scale * maximumvalue) / maximumvalue) * (maximumvalue - minimumvalue) + minimumvalue)
            local SliderPreciseValue = ((Pos.X.Scale * maximumvalue) / maximumvalue) * (maximumvalue - minimumvalue) + minimumvalue

            local Value = (PreciseSliderValue and SliderPreciseValue or NonSliderPreciseValue)
            Value = tonumber(string.format("%.2f", Value))

			SliderValueText.Text = tostring(Value)
			action(Value)
		end;
	
		SliderBackground.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				Dragging = true
			end
		end)
		
		SliderBackground.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				Dragging = false
			end
        end)
		
		SliderBackground.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				Sliding(input)
			end
		end)
	
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if Dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
				Sliding(input)
			end
        end)
        
        TabName.MouseButton1Down:Connect(function()
            if not IsATabOpen then
                ExtendBodySize(35)

                TweenService:Create(SliderTitleText, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
                TweenService:Create(SliderValueText, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
                TweenService:Create(SliderBackground, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {BackgroundTransparency = 0}):Play()
                TweenService:Create(SlidingSlider, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {BackgroundTransparency = 0}):Play()
            elseif IsATabOpen then
                UnExtendBodySize(35)

                TweenService:Create(SliderTitleText, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {TextTransparency = 1}):Play()
                TweenService:Create(SliderValueText, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {TextTransparency = 1}):Play()
                TweenService:Create(SliderBackground, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {BackgroundTransparency = 1}):Play()
                TweenService:Create(SlidingSlider, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {BackgroundTransparency = 1}):Play()
            end
        end)
    end
    
    function CoastsLibrary:CreateDropdown(dropdownname, dropdownlistoptions, dropdownlistpresetnumber, action)
        local DropdownHolder = Instance.new("Frame")
        local SelectedOption = Instance.new("TextLabel")
        local DropdownButton = Instance.new("TextButton")
        local DropdownMain = Instance.new("Frame")
        local SelectionOrganizer = Instance.new("UIListLayout")

        local DropdownYSize = 0
        local IsDropdownOpen = false

        DropdownHolder.Name = (dropdownname .. "DropdownHolder")
        DropdownHolder.Parent = TabNameBody
        DropdownHolder.BackgroundColor3 = Library.Colors.Border
        DropdownHolder.BackgroundTransparency = 1
        DropdownHolder.BorderColor3 = Library.Colors.Border
        DropdownHolder.BorderSizePixel = 0
        DropdownHolder.Size = UDim2.new(0, 200, 0, 30)

        SelectedOption.Name = (dropdownname .. "SelectedOption")
        SelectedOption.Parent = DropdownHolder
        SelectedOption.BackgroundColor3 = Library.Colors.Dropdown
        SelectedOption.BorderColor3 = Library.Colors.Border
        SelectedOption.BorderSizePixel = 0
        SelectedOption.Size = UDim2.new(0, 200, 0, 30)
        SelectedOption.Font = Library.Settings.MainTextFont
        SelectedOption.Text = dropdownlistoptions[dropdownlistpresetnumber]
        SelectedOption.TextColor3 = Library.Colors.Text
        SelectedOption.TextSize = Library.Settings.MainTextSize

        DropdownButton.Name = (dropdownname .. "DropdownButton")
        DropdownButton.Parent = DropdownHolder
        DropdownButton.BackgroundColor3 = Library.Colors.Border
        DropdownButton.BackgroundTransparency = 1
        DropdownButton.BorderColor3 = Library.Colors.Border
        DropdownButton.BorderSizePixel = 0
        DropdownButton.Position = UDim2.new(0.829999983, 0, 0, 0)
        DropdownButton.Size = UDim2.new(0, 34, 0, 30)
        DropdownButton.ZIndex = 2
        DropdownButton.Font = Library.Settings.MainTextFont
        DropdownButton.Text = "v"
        DropdownButton.TextColor3 = Library.Colors.Text
        DropdownButton.TextSize = Library.Settings.MainTextSize

        DropdownMain.Name = (dropdownname .. "DropdownMain")
        DropdownMain.Parent = DropdownHolder
        DropdownMain.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
        DropdownMain.BorderColor3 = Library.Colors.Border
        DropdownMain.BorderSizePixel = 0
        DropdownMain.ClipsDescendants = true
        DropdownMain.Position = UDim2.new(0.995000005, 1, -0.0166666675, 0)
        DropdownMain.Size = UDim2.new(0, 185, 0, DropdownYSize)

        SelectionOrganizer.Name = (dropdownname .. "SelectionOrganizer")
        SelectionOrganizer.Parent = DropdownMain
        SelectionOrganizer.SortOrder = Enum.SortOrder.LayoutOrder

        for i, v in pairs(dropdownlistoptions) do
            local DropdownListOptionButton = Instance.new("TextButton")

            DropdownListOptionButton.Name = (v .. "DropdownButton")
            DropdownListOptionButton.Parent = DropdownMain
            DropdownListOptionButton.BackgroundColor3 = Library.Colors.DropdownButton
            DropdownListOptionButton.BorderColor3 = Library.Colors.Border
            DropdownListOptionButton.BorderSizePixel = 0
            DropdownListOptionButton.Size = UDim2.new(0, 185, 0, 30)
            DropdownListOptionButton.AutoButtonColor = false
            DropdownListOptionButton.Font = Library.Settings.MainTextFont
            DropdownListOptionButton.Text = v;
            DropdownListOptionButton.TextColor3 = Library.Colors.Text
            DropdownListOptionButton.TextSize = Library.Settings.MainTextSize

            DropdownYSize = DropdownYSize + 30

            DropdownListOptionButton.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseMovement then
                    TweenService:Create(DropdownListOptionButton, TweenInfo.new(Library.Settings.DropdownButtonColorHoverTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {BackgroundColor3 = Library.Colors.DropdownButtonHover}):Play()
                end
            end)
                
            DropdownListOptionButton.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseMovement then
                    TweenService:Create(DropdownListOptionButton, TweenInfo.new(Library.Settings.DropdownButtonColorHoverTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {BackgroundColor3 = Library.Colors.DropdownButton}):Play()
                end
            end)

            DropdownListOptionButton.MouseButton1Click:Connect(function()
                action(v)

                SelectedOption.Text = v;
                
                TweenService:Create(DropdownMain, TweenInfo.new(Library.Settings.DropdownTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {Size = UDim2.new(0, 185, 0, 0)}):Play()
                TweenService:Create(DropdownButton, TweenInfo.new(Library.Settings.DropdownTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {Rotation = 0}):Play()
                TweenService:Create(SelectedOption, TweenInfo.new(Library.Settings.DropdownTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {TextColor3 = Library.Colors.Text}):Play()
    
                IsDropdownOpen = false
                end) 
        end

        DropdownButton.MouseButton1Click:Connect(function()
            if IsDropdownOpen then
                TweenService:Create(DropdownMain, TweenInfo.new(Library.Settings.DropdownTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {Size = UDim2.new(0, 185, 0, 0)}):Play()
                TweenService:Create(DropdownButton, TweenInfo.new(Library.Settings.DropdownTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {Rotation = 0}):Play()
                TweenService:Create(SelectedOption, TweenInfo.new(Library.Settings.DropdownTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {TextColor3 = Library.Colors.Text}):Play()
    
                IsDropdownOpen = false
            elseif not IsDropdownOpen then
                TabNameBody.ClipsDescendants = false

                TweenService:Create(DropdownMain, TweenInfo.new(Library.Settings.DropdownTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {Size = UDim2.new(0, 185, 0, DropdownYSize)}):Play()
                TweenService:Create(DropdownButton, TweenInfo.new(Library.Settings.DropdownTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {Rotation = -90}):Play()
                TweenService:Create(SelectedOption, TweenInfo.new(Library.Settings.DropdownTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(150, 150, 150)}):Play() 
    
                IsDropdownOpen = true   
            end
        end)

        TabName.MouseButton1Down:Connect(function()
            if not IsATabOpen then
                ExtendBodySize(30)

                TweenService:Create(SelectedOption, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
                TweenService:Create(SelectedOption, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {BackgroundTransparency = 0}):Play()
                TweenService:Create(DropdownButton, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
            elseif IsATabOpen then
                UnExtendBodySize(30)

                TabNameBody.ClipsDescendants = true
                IsDropdownOpen = false

                TweenService:Create(DropdownMain, TweenInfo.new(Library.Settings.DropdownTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {Size = UDim2.new(0, 185, 0, 0)}):Play()
                TweenService:Create(DropdownButton, TweenInfo.new(Library.Settings.DropdownTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {Rotation = 0}):Play()
                TweenService:Create(SelectedOption, TweenInfo.new(Library.Settings.DropdownTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {TextColor3 = Library.Colors.Text}):Play()
                TweenService:Create(SelectedOption, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {TextTransparency = 1}):Play()
                TweenService:Create(SelectedOption, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {BackgroundTransparency = 1}):Play()
                TweenService:Create(DropdownButton, TweenInfo.new(Library.Settings.MainTweenTime, Library.Settings.TweenEasingStyle, Enum.EasingDirection.Out), {TextTransparency = 1}):Play()
            end
        end)
    end

    return CoastsLibrary;
end

return Library; 
