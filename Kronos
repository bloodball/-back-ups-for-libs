local library = {}

local TweenService = game:GetService("TweenService")
local TextService = game:GetService("TextService")
local UserInputService = game:GetService("UserInputService")

function dragify(Frame)
    local dragToggle = nil
    local dragSpeed = .25
    local dragInput = nil
    local dragStart = nil
    local dragPos = nil

    function updateInput(input)
        Delta = input.Position - dragStart
        Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
        game:GetService("TweenService"):Create(Frame, TweenInfo.new(.25), {Position = Position}):Play()
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

for i,v in pairs(game.CoreGui:GetChildren()) do
    if v.Name == "Kronos" then 
        v:Destroy()
    end
end

function library:Window(options)
    local TitleUI = options.Title or "Kronos Lib"
    local Accent = options.Accent or Color3.fromRGB(69, 69, 207)
    local Logo = options.Logo or '3610245066'
    local Toggle_Key = options.ToggleKey or Enum.KeyCode.LeftBracket

    local Kronos = Instance.new("ScreenGui")
    Kronos.Name = "Kronos"
    Kronos.Parent = game.CoreGui
    Kronos.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    local Mover = Instance.new("Frame")
    Mover.Name = "Mover"
    Mover.Parent = Kronos
    Mover.BackgroundColor3 = Color3.fromRGB(44, 43, 48)
    Mover.BackgroundTransparency = 1.000
    Mover.BorderSizePixel = 0
    Mover.Position = UDim2.new(0.274229079, 0, 0.191011235, 0)
    Mover.Size = UDim2.new(0, 70, 0, 400)

    dragify(Mover)

    local Main = Instance.new("Frame")
    Main.Name = "Main"
    Main.Parent = Mover
    Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Main.BackgroundTransparency = 1.000
    Main.BorderSizePixel = 0
    Main.Size = UDim2.new(0, 500, 0, 400)
    Main.ClipsDescendants = false

    local Main_Layout = Instance.new("UIListLayout")
    Main_Layout.Name = "Main_Layout"
    Main_Layout.Parent = Main
    Main_Layout.FillDirection = Enum.FillDirection.Horizontal

    local _1LeftSide = Instance.new("Frame")
    _1LeftSide.Name = "1LeftSide"
    _1LeftSide.Parent = Main
    _1LeftSide.BackgroundColor3 = Color3.fromRGB(44, 43, 48)
    _1LeftSide.Size = UDim2.new(0, 70, 0, 400)
    _1LeftSide.ClipsDescendants = false

    local leftside_corner = Instance.new("UICorner")
    leftside_corner.CornerRadius = UDim.new(0, 6)
    leftside_corner.Name = "leftside_corner"
    leftside_corner.Parent = _1LeftSide

    local hider_2 = Instance.new("Frame")
    hider_2.Name = "hider"
    hider_2.Parent = _1LeftSide
    hider_2.BackgroundColor3 = Color3.fromRGB(44, 43, 48)
    hider_2.BorderSizePixel = 0
    hider_2.Position = UDim2.new(0.914285719, 0, 0, 0)
    hider_2.Size = UDim2.new(0, 6, 0, 400)

    local Main_Logo = Instance.new("ImageButton")
    Main_Logo.Name = "Main_Logo"
    Main_Logo.Parent = _1LeftSide
    Main_Logo.BackgroundTransparency = 1.000
    Main_Logo.Position = UDim2.new(0.242857158, 0, 0.0225000009, 0)
    Main_Logo.Size = UDim2.new(0, 35, 0, 35)
    Main_Logo.Image = "rbxassetid://" .. tostring(Logo)
    Main_Logo.ImageColor3 = Accent
    Main_Logo.ScaleType = Enum.ScaleType.Fit

    local Title = Instance.new("TextLabel")
    Title.Name = "Title"
    Title.Parent = Main_Logo
    Title.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    Title.BackgroundTransparency = 1.000
    Title.BorderSizePixel = 0
    Title.Position = UDim2.new(-0.485714316, 0, -1.08571434, 0)
    Title.Size = UDim2.new(0, 200, 0, 20)
    Title.Font = Enum.Font.Gotham
    Title.Text = TitleUI
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 14.000
    Title.TextTransparency = 1.000

    local TitleSize = TextService:GetTextSize(TitleUI, 12, Enum.Font.Gotham, Vector2.new(9e9, 20))
    Title.Size = UDim2.new(0, TitleSize.X + 70, 0, 20)

    Main_Logo.MouseEnter:Connect(function()
        TweenService:Create(Title, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 0}):Play()
        TweenService:Create(Title, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextTransparency = 0}):Play()
    end)

    Main_Logo.MouseLeave:Connect(function()
        TweenService:Create(Title, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()
        TweenService:Create(Title, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextTransparency = 1}):Play()
    end)

    local title_corner = Instance.new("UICorner")
    title_corner.Name = "title_corner"
    title_corner.Parent = Title

    local Tabs = Instance.new("ScrollingFrame")
    Tabs.Name = "Tabs"
    Tabs.Parent = _1LeftSide
    Tabs.Active = true
    Tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Tabs.BackgroundTransparency = 1.000
    Tabs.BorderSizePixel = 0
    Tabs.Position = UDim2.new(0.142857228, 0, 0.202500001, 0)
    Tabs.Size = UDim2.new(0, 50, 0, 280)
    Tabs.ScrollBarThickness = 0

    local tabs_layout = Instance.new("UIListLayout")
    tabs_layout.Name = "tabs_layout"
    tabs_layout.Parent = Tabs
    tabs_layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    tabs_layout.SortOrder = Enum.SortOrder.LayoutOrder
    tabs_layout.Padding = UDim.new(0, 3)

    local Toggle_Mid = Instance.new("ImageButton")
    Toggle_Mid.Name = "Toggle_Mid"
    Toggle_Mid.Parent = _1LeftSide
    Toggle_Mid.BackgroundTransparency = 1.000
    Toggle_Mid.Position = UDim2.new(0.319158435, 0, 0.914166689, 0)
    Toggle_Mid.Rotation = 180.000
    Toggle_Mid.Size = UDim2.new(0, 25, 0, 25)
    Toggle_Mid.Image = "rbxassetid://4370337241"
    Toggle_Mid.ScaleType = Enum.ScaleType.Fit

    local _2MiddleSide = Instance.new("Frame")
    _2MiddleSide.Name = "2MiddleSide"
    _2MiddleSide.Parent = Main
    _2MiddleSide.BackgroundColor3 = Color3.fromRGB(36, 36, 38)
    _2MiddleSide.BorderSizePixel = 0
    _2MiddleSide.Position = UDim2.new(0.140000001, 0, 0, 0)
    _2MiddleSide.Size = UDim2.new(0, 150, 0, 400)
    _2MiddleSide.ClipsDescendants = true

    local _3Container = Instance.new("Frame")
    _3Container.Parent = Main
    _3Container.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    _3Container.BorderSizePixel = 0
    _3Container.Position = UDim2.new(0.439999998, 0, 0, 0)
    _3Container.Size = UDim2.new(0, 280, 0, 400)
    _3Container.ClipsDescendants = true
    _3Container.Name = "3Container"

    local container_corner = Instance.new("UICorner")
    container_corner.CornerRadius = UDim.new(0, 6)
    container_corner.Name = "container_corner"
    container_corner.Parent = _3Container

    local hider = Instance.new("Frame")
    hider.Name = "hider"
    hider.Parent = _3Container
    hider.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    hider.BorderSizePixel = 0
    hider.Size = UDim2.new(0, 6, 0, 400)

    local mid_toggle = false
    Toggle_Mid.MouseButton1Click:Connect(function()
        if mid_toggle == false then 
            mid_toggle = true
            TweenService:Create(Toggle_Mid, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Rotation = 360}):Play()
            TweenService:Create(_2MiddleSide, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size = UDim2.new(0, 0, 0, 400)}):Play()
        else
            mid_toggle = false
            TweenService:Create(Toggle_Mid, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Rotation = 180}):Play()
            TweenService:Create(_2MiddleSide, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size = UDim2.new(0, 150, 0, 400)}):Play()
        end
    end)

    tabs_layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        Tabs.CanvasSize = UDim2.new(0,0,0,tabs_layout.AbsoluteContentSize.Y) 
    end)

    local ui_toggle = false
    UserInputService.InputBegan:connect(function(key)
        if key.KeyCode == Toggle_Key then
            if ui_toggle == false then 
                ui_toggle = true
                Main.Visible = false
            else
                ui_toggle = false
                Main.Visible = true
            end
        end
    end)

    local TabsFunc = {}

    function TabsFunc:NewTab(options)
        local Logo = options.Logo or '4483345998'

        local tab_shell = Instance.new("TextButton")
        tab_shell.Name = "tab_shell"
        tab_shell.Parent = Tabs
        tab_shell.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        tab_shell.BackgroundTransparency = 1
        tab_shell.Size = UDim2.new(0, 40, 0, 40)
        tab_shell.AutoButtonColor = false
        tab_shell.Font = Enum.Font.SourceSans
        tab_shell.Text = ""
        tab_shell.TextColor3 = Color3.fromRGB(0, 0, 0)
        tab_shell.TextSize = 14.000

        local tab_option = Instance.new("ImageLabel")
        tab_option.Name = "tab_option"
        tab_option.Parent = tab_shell
        tab_option.BackgroundTransparency = 1.000
        tab_option.Position = UDim2.new(0.174999997, 0, 0.174999997, 0)
        tab_option.Size = UDim2.new(0, 25, 0, 25)
        tab_option.Image = "rbxassetid://" .. tostring(Logo)
        tab_option.ScaleType = Enum.ScaleType.Fit

        local tabshell_corner = Instance.new("UICorner")
        tabshell_corner.Name = "tabshell_corner"
        tabshell_corner.Parent = tab_shell

        local middle_scroll = Instance.new("ScrollingFrame")
        middle_scroll.Name = "middle_scroll"
        middle_scroll.Parent = _2MiddleSide
        middle_scroll.Active = true
        middle_scroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        middle_scroll.BackgroundTransparency = 1.000
        middle_scroll.BorderSizePixel = 0
        middle_scroll.Position = UDim2.new(0.0799999982, 0, 0.0225000009, 0)
        middle_scroll.Size = UDim2.new(0, 125, 0, 380)
        middle_scroll.ScrollBarThickness = 0

        local middle_layout = Instance.new("UIListLayout")
        middle_layout.Name = "middle_layout"
        middle_layout.Parent = middle_scroll
        middle_layout.SortOrder = Enum.SortOrder.LayoutOrder
        middle_layout.Padding = UDim.new(0, 5)

        middle_layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            middle_scroll.CanvasSize = UDim2.new(0,0,0,middle_layout.AbsoluteContentSize.Y) 
        end)

        for i,v in pairs(_2MiddleSide:GetChildren()) do
            v.Size = UDim2.new(0,0,0,380)
        end

        tab_shell.MouseButton1Click:Connect(function()
            for i,v in next, Tabs:GetChildren() do 
                if v:IsA("TextButton") then 
                    TweenService:Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()
                end
            end
            TweenService:Create(tab_shell, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 0.950}):Play()

            for i,v in pairs(_2MiddleSide:GetChildren()) do
                TweenService:Create(v, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size = UDim2.new(0, 0, 0, 380)}):Play()
            end

            for i,v in pairs(_3Container:GetChildren()) do 
                if v.Name == "NewPage" then 
                    TweenService:Create(v, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size = UDim2.new(0, 0, 0, 400)}):Play()
                end
            end
            wait(.3)
            TweenService:Create(middle_scroll, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size = UDim2.new(0, 125, 0, 380)}):Play()
            Extend_page()
        end)

        local mid_sections = {}

        function mid_sections:TabSection(options)
            local Title = options.Title or 'Tab Section'

            local Section_Header = Instance.new("TextButton")
            Section_Header.Name = "Section_Header"
            Section_Header.Parent = middle_scroll
            Section_Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Section_Header.BackgroundTransparency = 1.000
            Section_Header.BorderSizePixel = 0
            Section_Header.Size = UDim2.new(0, 125, 0, 30)
            Section_Header.AutoButtonColor = false
            Section_Header.Font = Enum.Font.Gotham
            Section_Header.Text = Title
            Section_Header.TextColor3 = Color3.fromRGB(150, 150, 150)
            Section_Header.TextSize = 14.000
            Section_Header.TextXAlignment = Enum.TextXAlignment.Left
            Section_Header.Text = Title

            local Toggle_Section = Instance.new("ImageLabel")
            Toggle_Section.Name = "Toggle_Section"
            Toggle_Section.Parent = Section_Header
            Toggle_Section.BackgroundTransparency = 1.000
            Toggle_Section.Position = UDim2.new(0.800000072, 0, 0.0666666552, 0)
            Toggle_Section.Rotation = 270.000
            Toggle_Section.Size = UDim2.new(0, 25, 0, 25)
            Toggle_Section.Image = "rbxassetid://4370337241"
            Toggle_Section.ImageColor3 = Color3.fromRGB(150, 150, 150)
            Toggle_Section.ScaleType = Enum.ScaleType.Fit

            local Section_Frame = Instance.new("Frame")
            Section_Frame.Name = "Section_Frame"
            Section_Frame.Parent = middle_scroll
            Section_Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Section_Frame.BackgroundTransparency = 1
            Section_Frame.Size = UDim2.new(0, 125, 0, 0)
            Section_Frame.ClipsDescendants = true

            local Section_Layout = Instance.new("UIListLayout")
            Section_Layout.Name = "Section_Layout"
            Section_Layout.Parent = Section_Frame
            Section_Layout.SortOrder = Enum.SortOrder.LayoutOrder
            Section_Layout.Padding = UDim.new(0, 5)

            local tab_toggled = false
            Section_Header.MouseButton1Click:Connect(function()
                if tab_toggled == false then 
                    tab_toggled = true 
                    TweenService:Create(Toggle_Section, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Rotation = 90}):Play()
                    TweenService:Create(Toggle_Section, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                    TweenService:Create(Section_Header, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                    TweenService:Create(Section_Frame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size = UDim2.new(0,125,0,Section_Layout.AbsoluteContentSize.Y)}):Play()
                else
                    tab_toggled = false
                    TweenService:Create(Toggle_Section, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Rotation = 270}):Play()
                    TweenService:Create(Toggle_Section, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {ImageColor3 = Color3.fromRGB(150, 150, 150)}):Play()
                    TweenService:Create(Section_Header, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3 = Color3.fromRGB(150, 150, 150)}):Play()
                    TweenService:Create(Section_Frame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size = UDim2.new(0,125,0,0)}):Play()
                end
            end)

            local columns = {}

            function columns:AddColumn(options)
                local Title = options.Title or 'New Column'

                local Sec_Option = Instance.new("TextButton")
                Sec_Option.Name = "Sec_Option"
                Sec_Option.Parent = Section_Frame
                Sec_Option.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Sec_Option.BackgroundTransparency = 1.000
                Sec_Option.Size = UDim2.new(0, 125, 0, 20)
                Sec_Option.Font = Enum.Font.Gotham
                Sec_Option.Text = Title
                Sec_Option.TextColor3 = Color3.fromRGB(150, 150, 150)
                Sec_Option.TextSize = 14.000

                local Sec_Frame = Instance.new("Frame")
                Sec_Frame.Name = "Sec_Frame"
                Sec_Frame.Parent = Sec_Option
                Sec_Frame.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
                Sec_Frame.BorderSizePixel = 0
                Sec_Frame.Position = UDim2.new(0.128000006, 0, 0.400000006, 0)
                Sec_Frame.Size = UDim2.new(0, 5, 0, 5)

                local Sec_Frame_Corner = Instance.new("UICorner")
                Sec_Frame_Corner.Name = "Sec_Frame_Corner"
                Sec_Frame_Corner.Parent = Sec_Frame

                local NewPage = Instance.new("Frame")
                NewPage.Name = "NewPage"
                NewPage.Parent = _3Container
                NewPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                NewPage.BackgroundTransparency = 1.000
                NewPage.BorderSizePixel = 0
                NewPage.Size = UDim2.new(0, 280, 0, 400)
                NewPage.ClipsDescendants = true

                local page_name = Instance.new("TextLabel")
                page_name.Name = "page_name"
                page_name.Parent = NewPage
                page_name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                page_name.BackgroundTransparency = 1.000
                page_name.Position = UDim2.new(0.0428571478, 0, 0.0450000018, 0)
                page_name.Size = UDim2.new(0, 112, 0, 11)
                page_name.Font = Enum.Font.Gotham
                page_name.Text = Title
                page_name.TextColor3 = Color3.fromRGB(255, 255, 255)
                page_name.TextSize = 15.000
                page_name.TextXAlignment = Enum.TextXAlignment.Left

                local InnerPage = Instance.new("ScrollingFrame")
                InnerPage.Name = "InnerPage"
                InnerPage.Parent = NewPage
                InnerPage.Active = true
                InnerPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                InnerPage.BackgroundTransparency = 1.000
                InnerPage.BorderSizePixel = 0
                InnerPage.Position = UDim2.new(0, 0, 0.109999999, 0)
                InnerPage.Size = UDim2.new(0, 280, 0, 345)
                InnerPage.ScrollBarThickness = 3

                local innerpage_layout = Instance.new("UIListLayout")
                innerpage_layout.Name = "innerpage_layout"
                innerpage_layout.Parent = InnerPage
                innerpage_layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                innerpage_layout.SortOrder = Enum.SortOrder.LayoutOrder
                innerpage_layout.Padding = UDim.new(0, 5)

                for i,v in pairs(_3Container:GetChildren()) do 
                    if v.Name == "NewPage" then 
                        NewPage.Size = UDim2.new(0, 0, 0, 400)
                    end
                end

                getgenv().Extend_page = function()
                    wait(.3)
                    for i,v in next, Section_Frame:GetChildren() do
                        if v:IsA("TextButton") then
                            for i2, pname in next, _3Container:GetChildren() do 
                                if pname:FindFirstChild("page_name") then
                                    if v.Sec_Frame.BackgroundColor3 == Color3.fromRGB(255, 255, 255) and middle_scroll.Size == UDim2.new(0,125,0,380) then
                                        if v.Text == pname.page_name.Text and v.TextColor3 == Color3.fromRGB(255,255,255) then
                                            TweenService:Create(pname, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size = UDim2.new(0, 280, 0, 400)}):Play()
                                        end
                                    end
                                end
                            end
                        end
                    end
                end

                Sec_Option.MouseButton1Click:Connect(function()
                    for i,v in pairs(Section_Frame:GetChildren()) do
                        if v:IsA("TextButton") then 
                            TweenService:Create(v, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3 = Color3.fromRGB(150, 150, 150)}):Play()
                            TweenService:Create(v.Sec_Frame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(150, 150, 150)}):Play()
                        end
                    end
                    TweenService:Create(Sec_Option, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                    TweenService:Create(Sec_Frame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(255, 255, 255)}):Play()

                    for i,v in pairs(_3Container:GetChildren()) do 
                        if v.Name == "NewPage" then 
                            TweenService:Create(v, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size = UDim2.new(0, 0, 0, 400)}):Play()
                        end
                    end
                    wait(.3)
                    TweenService:Create(NewPage, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size = UDim2.new(0, 280, 0, 400)}):Play()
                end)

                innerpage_layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                    InnerPage.CanvasSize = UDim2.new(0,0,0,innerpage_layout.AbsoluteContentSize.Y) 
                end)

                local frame_sections = {}

                function frame_sections:Section(options)
                    local Title = options.Title or "New Section"

                    local Section_Frame_2 = Instance.new("Frame")
                    Section_Frame_2.Name = "Section_Frame"
                    Section_Frame_2.Parent = InnerPage
                    Section_Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Section_Frame_2.BackgroundTransparency = 1.000
                    Section_Frame_2.BorderSizePixel = 0
                    Section_Frame_2.Position = UDim2.new(0, 0, -0.0231884066, 0)
                    Section_Frame_2.Size = UDim2.new(0, 280, 0, 33)

                    local NewSecName = Instance.new("TextLabel")
                    NewSecName.Name = "NewSecName"
                    NewSecName.Parent = Section_Frame_2
                    NewSecName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    NewSecName.BackgroundTransparency = 1.000
                    NewSecName.BorderSizePixel = 0
                    NewSecName.Position = UDim2.new(0.142857228, 0, 0.212121218, 0)
                    NewSecName.Size = UDim2.new(0, 200, 0, 13)
                    NewSecName.Font = Enum.Font.Gotham
                    NewSecName.Text = Title
                    NewSecName.TextColor3 = Color3.fromRGB(50, 50, 50)
                    NewSecName.TextSize = 14.000

                    local SepFrame = Instance.new("Frame")
                    SepFrame.Name = "SepFrame"
                    SepFrame.Parent = Section_Frame_2
                    SepFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
                    SepFrame.BorderSizePixel = 0
                    SepFrame.Position = UDim2.new(0.042857144, 0, 0.724444449, 0)
                    SepFrame.Size = UDim2.new(0, 258, 0, 1)

                    local main_functions = {}

                    function main_functions:Button(options)
                        local Title = options.Text or "uiButton"
                        local callback = options.Callback or function() end

                        local uiButton = Instance.new("TextButton")
                        uiButton.Name = "uiButton"
                        uiButton.Parent = InnerPage
                        uiButton.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
                        uiButton.BorderSizePixel = 0
                        uiButton.Size = UDim2.new(0, 258, 0, 30)
                        uiButton.AutoButtonColor = false
                        uiButton.Font = Enum.Font.Gotham
                        uiButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                        uiButton.TextSize = 14.000
                        uiButton.Text = Title

                        local uibutton_corner = Instance.new("UICorner")
                        uibutton_corner.CornerRadius = UDim.new(0, 6)
                        uibutton_corner.Name = "uibutton_corner"
                        uibutton_corner.Parent = uiButton
                        
                        uiButton.MouseButton1Click:Connect(function()
                            callback()
                        end)

                        local button_functions = {}

                        function button_functions:Update(text)
                            uiButton.Text = text
                        end

                        return button_functions
                    end

                    function main_functions:Toggle(options)
                        local Title = options.Text 
                        local callback = options.Callback 
                        local State = options.State or false
                        if State == nil then State = false end

                        local uiToggle = Instance.new("TextButton")
                        uiToggle.Name = "uiToggle"
                        uiToggle.Parent = InnerPage
                        uiToggle.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
                        uiToggle.BackgroundTransparency = 1.000
                        uiToggle.BorderSizePixel = 0
                        uiToggle.Size = UDim2.new(0, 258, 0, 30)
                        uiToggle.AutoButtonColor = false
                        uiToggle.Font = Enum.Font.Gotham
                        uiToggle.Text = ""
                        uiToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
                        uiToggle.TextSize = 14.000

                        local uitoggle_corner = Instance.new("UICorner")
                        uitoggle_corner.CornerRadius = UDim.new(0, 6)
                        uitoggle_corner.Name = "uitoggle_corner"
                        uitoggle_corner.Parent = uiToggle

                        local T1 = Instance.new("Frame")
                        T1.Name = "T1"
                        T1.Parent = uiToggle
                        T1.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                        T1.BorderSizePixel = 0
                        T1.Position = UDim2.new(0.00387597084, 0, 0.166666672, 0)
                        T1.Size = UDim2.new(0, 20, 0, 20)

                        local UICorner = Instance.new("UICorner")
                        UICorner.CornerRadius = UDim.new(0, 4)
                        UICorner.Parent = T1

                        local T2 = Instance.new("Frame")
                        T2.Name = "T2"
                        T2.Parent = T1
                        T2.BackgroundColor3 = Accent
                        T2.BackgroundTransparency = 1
                        T2.BorderSizePixel = 0
                        T2.Position = UDim2.new(0.150000006, 0, 0.150000006, 0)
                        T2.Size = UDim2.new(0, 14, 0, 14)

                        local UICorner_2 = Instance.new("UICorner")
                        UICorner_2.CornerRadius = UDim.new(0, 4)
                        UICorner_2.Parent = T2

                        local TextLabel = Instance.new("TextLabel")
                        TextLabel.Parent = uiToggle
                        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel.BackgroundTransparency = 1.000
                        TextLabel.BorderSizePixel = 0
                        TextLabel.Position = UDim2.new(0.116279073, 0, 0.366666675, 0)
                        TextLabel.Size = UDim2.new(0, 200, 0, 8)
                        TextLabel.Font = Enum.Font.Gotham
                        TextLabel.Text = Title
                        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel.TextSize = 14.000
                        TextLabel.TextXAlignment = Enum.TextXAlignment.Left

                        local toggled = false 

                        if State == true then 
                            toggled = true
                            callback(toggled)
                            TweenService:Create(T2, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 0}):Play()
                        else
                            toggled = false
                            callback(toggled)
                            TweenService:Create(T2, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()
                        end

                        uiToggle.MouseButton1Click:Connect(function()
                            if toggled == false then 
                                toggled = true
                                callback(toggled)
                                TweenService:Create(T2, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 0}):Play()
                            else
                                toggled = false
                                callback(toggled)
                                TweenService:Create(T2, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()
                            end
                        end)

                        local toggle_functions = {}

                        function toggle_functions:SetState(State)
                            if State == true then 
                                toggled = true
                                callback(toggled)
                                TweenService:Create(T2, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 0}):Play()
                            else
                                toggled = false
                                callback(toggled)
                                TweenService:Create(T2, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()
                            end
                        end

                        return toggle_functions
                    end

                    function main_functions:TextLabel(options)
                        local Title = options.Text or  "TextLabel"

                        local uiTextlabel = Instance.new("TextLabel")
                        uiTextlabel.Name = "uiTextlabel"
                        uiTextlabel.Parent = InnerPage
                        uiTextlabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        uiTextlabel.BackgroundTransparency = 1.000
                        uiTextlabel.BorderSizePixel = 0
                        uiTextlabel.Size = UDim2.new(0, 258, 0, 30)
                        uiTextlabel.Font = Enum.Font.Gotham
                        uiTextlabel.Text = Title
                        uiTextlabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                        uiTextlabel.TextSize = 14.000
                        uiTextlabel.TextXAlignment = Enum.TextXAlignment.Left

                        local lable_functions = {}

                        function lable_functions:Update(Title)
                            uiTextlabel.Text = Title
                        end

                        return lable_functions
                    end

                    function main_functions:Divide()
                        local uiSep = Instance.new("Frame")
                        uiSep.Name = "uiSep"
                        uiSep.Parent = InnerPage
                        uiSep.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
                        uiSep.BorderSizePixel = 0
                        uiSep.Position = UDim2.new(0.042857144, 0, 0.724444449, 0)
                        uiSep.Size = UDim2.new(0, 258, 0, 1)
                    end

                    function main_functions:Keybind(options)
                        local Title = options.Text or "Keybind"
                        local Key = options.Key.Name
                        local callback = options.Callback or function() end 

                        local uiKeybind = Instance.new("TextButton")
                        uiKeybind.Name = "uiKeybind"
                        uiKeybind.Parent = InnerPage
                        uiKeybind.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
                        uiKeybind.BorderSizePixel = 0
                        uiKeybind.Size = UDim2.new(0, 258, 0, 30)
                        uiKeybind.AutoButtonColor = false
                        uiKeybind.Font = Enum.Font.Gotham
                        uiKeybind.Text = Title
                        uiKeybind.TextColor3 = Color3.fromRGB(255, 255, 255)
                        uiKeybind.TextSize = 14.000

                        local uikeybind = Instance.new("UICorner")
                        uikeybind.CornerRadius = UDim.new(0, 6)
                        uikeybind.Name = "uikeybind"
                        uikeybind.Parent = uiKeybind

                        local key_text = Instance.new("TextLabel")
                        key_text.Name = "key_text"
                        key_text.Parent = uiKeybind
                        key_text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        key_text.BackgroundTransparency = 1.000
                        key_text.BorderSizePixel = 0
                        key_text.Position = UDim2.new(0.86434108, 0, 0.0666666701, 0)
                        key_text.Size = UDim2.new(0, 25, 0, 25)
                        key_text.Font = Enum.Font.Gotham
                        key_text.Text = '[' .. Key .. ']'
                        key_text.TextColor3 = Color3.fromRGB(255, 255, 255)
                        key_text.TextSize = 14.000

                        uiKeybind.MouseButton1Click:Connect(function()
                            key_text.Text = '[. . .]'
                            local a, b = game:GetService('UserInputService').InputBegan:wait();
                            if a.KeyCode.Name ~= "Unknown" then
                                key_text.Text = '[' .. a.KeyCode.Name .. ']'
                                Key = a.KeyCode.Name;
                            end
                        end)
                        
                        game:GetService("UserInputService").InputBegan:connect(function(current, pressed)
                            if not pressed then
                                if current.KeyCode.Name == Key then
                                    callback(Key)
                                end
                            end
                        end)

                        local keybind_functions = {}

                        function keybind_functions:UpdateKey(option)
                            key_text.Text = '[' .. option.Name .. ']'
                            Key = option.Name;
                            callback(Key)
                        end

                        return keybind_functions
                    end

                    function main_functions:Textbox(options)
                        local Title = options.Text or "Textbox"
                        local callback = options.Callback or function() end 

                        local text_shell = Instance.new("TextButton")
                        text_shell.Name = "text_shell"
                        text_shell.Parent = InnerPage
                        text_shell.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
                        text_shell.BorderSizePixel = 0
                        text_shell.Size = UDim2.new(0, 258, 0, 30)
                        text_shell.AutoButtonColor = false
                        text_shell.Font = Enum.Font.Gotham
                        text_shell.Text = ""
                        text_shell.TextColor3 = Color3.fromRGB(255, 255, 255)
                        text_shell.TextSize = 14.000

                        local textshell_corner = Instance.new("UICorner")
                        textshell_corner.CornerRadius = UDim.new(0, 6)
                        textshell_corner.Name = "textshell_corner"
                        textshell_corner.Parent = text_shell

                        local TextBox = Instance.new("TextBox")
                        TextBox.Parent = text_shell
                        TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        TextBox.BackgroundTransparency = 1.000
                        TextBox.BorderSizePixel = 0
                        TextBox.Position = UDim2.new(0.0542635657, 0, 0.233333334, 0)
                        TextBox.Size = UDim2.new(0, 228, 0, 15)
                        TextBox.Font = Enum.Font.Gotham
                        TextBox.Text = Title
                        TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
                        TextBox.TextScaled = true
                        TextBox.TextSize = 12.000
                        TextBox.TextWrapped = true

                        TextBox.FocusLost:Connect(function(enterPressed)
                            callback(TextBox.Text)
                        end)

                        local textbox_functions = {}

                        function textbox_functions:Update(text)
                            TextBox.Text = text 
                            callback(TextBox.Text)
                        end

                        return textbox_functions
                    end

                    function main_functions:Dropdown(options)
                        local Title = options.Text or 'Dropdown'
                        local List = options.List or {}
                        local callback = options.Callback or function() end 

                        local uiDropdown = Instance.new("TextButton")
                        uiDropdown.Name = "uiDropdown"
                        uiDropdown.Parent = InnerPage
                        uiDropdown.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
                        uiDropdown.BorderSizePixel = 0
                        uiDropdown.Size = UDim2.new(0, 258, 0, 30)
                        uiDropdown.AutoButtonColor = false
                        uiDropdown.Font = Enum.Font.Gotham
                        uiDropdown.Text = Title
                        uiDropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
                        uiDropdown.TextSize = 14.000

                        local uidropdown_corner = Instance.new("UICorner")
                        uidropdown_corner.CornerRadius = UDim.new(0, 6)
                        uidropdown_corner.Name = "uidropdown_corner"
                        uidropdown_corner.Parent = uiDropdown

                        local Toggle_Section_2 = Instance.new("ImageLabel")
                        Toggle_Section_2.Name = "Toggle_Section"
                        Toggle_Section_2.Parent = uiDropdown
                        Toggle_Section_2.BackgroundTransparency = 1.000
                        Toggle_Section_2.Position = UDim2.new(0.862015605, 0, 0.0666666552, 0)
                        Toggle_Section_2.Rotation = 270.000
                        Toggle_Section_2.Size = UDim2.new(0, 25, 0, 25)
                        Toggle_Section_2.Image = "rbxassetid://4370337241"
                        Toggle_Section_2.ScaleType = Enum.ScaleType.Fit

                        local Dropdown_Container = Instance.new("ScrollingFrame")
                        Dropdown_Container.Name = "Dropdown_Container"
                        Dropdown_Container.Parent = InnerPage
                        Dropdown_Container.Active = true
                        Dropdown_Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        Dropdown_Container.BackgroundTransparency = 1
                        Dropdown_Container.BorderSizePixel = 0
                        Dropdown_Container.Position = UDim2.new(0.0392857157, 0, 0.515942037, 0)
                        Dropdown_Container.Size = UDim2.new(0, 258, 0, 0)
                        Dropdown_Container.ScrollBarThickness = 0
                        Dropdown_Container.ClipsDescendants = true
                        Dropdown_Container.Visible = false
                        
                        local drop_con_layout = Instance.new("UIListLayout")
                        drop_con_layout.Name = "drop_con_layout"
                        drop_con_layout.Parent = Dropdown_Container
                        drop_con_layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                        drop_con_layout.SortOrder = Enum.SortOrder.LayoutOrder
                        drop_con_layout.Padding = UDim.new(0, 4)

                        local droptog = false
                        uiDropdown.MouseButton1Click:Connect(function()
                            if droptog == false then 
                                droptog = true 
                                Dropdown_Container.Visible = true
                                TweenService:Create(Toggle_Section_2, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Rotation = 90}):Play()
                                TweenService:Create(Dropdown_Container, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size = UDim2.new(0, 258, 0, drop_con_layout.AbsoluteContentSize.Y)}):Play()
                            else
                                droptog = false 
                                TweenService:Create(Toggle_Section_2, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Rotation = 270}):Play()
                                local tween = TweenService:Create(Dropdown_Container, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size = UDim2.new(0, 258, 0, 0)})
                                tween:Play()
                                tween.Completed:Connect(function(playbackState)
                                    if playbackState == Enum.PlaybackState.Completed then
                                        Dropdown_Container.Visible = false
                                    end
                                end)
                            end
                        end)

                        
                        drop_con_layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                            Dropdown_Container.CanvasSize = UDim2.new(0,0,0,drop_con_layout.AbsoluteContentSize.Y) 
                        end)

                        for i,v in pairs(List) do
                            local option = Instance.new("TextButton")
                            option.Name = "option"
                            option.Parent = Dropdown_Container
                            option.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
                            option.BorderSizePixel = 0
                            option.Size = UDim2.new(0, 258, 0, 20)
                            option.AutoButtonColor = false
                            option.Font = Enum.Font.Gotham
                            option.Text = v
                            option.TextColor3 = Color3.fromRGB(255, 255, 255)
                            option.TextSize = 11.000

                            local option_corner = Instance.new("UICorner")
                            option_corner.Name = "option_corner"
                            option_corner.Parent = option

                            option.MouseButton1Click:Connect(function()
                                uiDropdown.Text = Title .. ' - ' .. option.Text
                                droptog = false
                                callback(option.Text)
                                TweenService:Create(Toggle_Section_2, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Rotation = 270}):Play()
                                local tween = TweenService:Create(Dropdown_Container, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size = UDim2.new(0, 258, 0, 0)})
                                tween:Play()
                                tween.Completed:Connect(function(playbackState)
                                    if playbackState == Enum.PlaybackState.Completed then
                                        wait()
                                        Dropdown_Container.Visible = false
                                    end
                                end)
                            end)
                        end

                        local dropdown_functions = {}

                        function dropdown_functions:UpdateList(List)
                            local List = List or {}

                            droptog = false
                            TweenService:Create(Toggle_Section_2, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Rotation = 270}):Play()
                            TweenService:Create(Dropdown_Container, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size = UDim2.new(0, 258, 0, 0)}):Play()

                            for i,v in pairs(Dropdown_Container:GetChildren()) do
                                if v.Name == "option" then 
                                    v:Destroy()
                                end
                            end

                            for i,v in pairs(List) do
                                local option = Instance.new("TextButton")
                                option.Name = "option"
                                option.Parent = Dropdown_Container
                                option.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
                                option.BorderSizePixel = 0
                                option.Size = UDim2.new(0, 258, 0, 20)
                                option.AutoButtonColor = false
                                option.Font = Enum.Font.Gotham
                                option.Text = v
                                option.TextColor3 = Color3.fromRGB(255, 255, 255)
                                option.TextSize = 11.000
    
                                local option_corner = Instance.new("UICorner")
                                option_corner.Name = "option_corner"
                                option_corner.Parent = option
    
                                option.MouseButton1Click:Connect(function()
                                    uiDropdown.Text = Title .. ' - ' .. option.Text
                                    droptog = false
                                    callback(option.Text)
                                    TweenService:Create(Toggle_Section_2, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Rotation = 270}):Play()
                                    local tween = TweenService:Create(Dropdown_Container, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size = UDim2.new(0, 258, 0, 0)})
                                    tween:Play()
                                    tween.Completed:Connect(function(playbackState)
                                        if playbackState == Enum.PlaybackState.Completed then
                                            wait()
                                            Dropdown_Container.Visible = false
                                        end
                                    end)
                                end)
                            end
                        end

                        return dropdown_functions
                    end

                    function main_functions:Slider(options)
                        local Title = options.Text or 'Slider'
                        local Min = options.Min or 0 
                        local Max = options.Max or 100 
                        local Def = options.Def or 50
                        local callback = options.Callback or function() end 

                        local slider_holder = Instance.new("TextButton")
                        slider_holder.Name = "slider_holder"
                        slider_holder.Parent = InnerPage
                        slider_holder.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
                        slider_holder.BorderSizePixel = 0
                        slider_holder.Size = UDim2.new(0, 258, 0, 50)
                        slider_holder.AutoButtonColor = false
                        slider_holder.Font = Enum.Font.Gotham
                        slider_holder.Text = ""
                        slider_holder.TextColor3 = Color3.fromRGB(255, 255, 255)
                        slider_holder.TextSize = 14.000

                        local uislider_corner = Instance.new("UICorner")
                        uislider_corner.CornerRadius = UDim.new(0, 6)
                        uislider_corner.Name = "uislider_corner"
                        uislider_corner.Parent = slider_holder

                        local slider_name = Instance.new("TextLabel")
                        slider_name.Name = "slider_name"
                        slider_name.Parent = slider_holder
                        slider_name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        slider_name.BackgroundTransparency = 1.000
                        slider_name.Position = UDim2.new(0.0503875986, 0, 0.159999996, 0)
                        slider_name.Size = UDim2.new(0, 100, 0, 10)
                        slider_name.Font = Enum.Font.Gotham
                        slider_name.Text = Title
                        slider_name.TextColor3 = Color3.fromRGB(255, 255, 255)
                        slider_name.TextSize = 14.000
                        slider_name.TextXAlignment = Enum.TextXAlignment.Left

                        local slider_shell = Instance.new("Frame")
                        slider_shell.Name = "slider_shell"
                        slider_shell.Parent = slider_holder
                        slider_shell.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                        slider_shell.Position = UDim2.new(0.0503875986, 0, 0.479999989, 0)
                        slider_shell.Size = UDim2.new(0, 230, 0, 20)

                        local slidershell_corner = Instance.new("UICorner")
                        slidershell_corner.CornerRadius = UDim.new(0, 6)
                        slidershell_corner.Name = "slidershell_corner"
                        slidershell_corner.Parent = slider_shell

                        local uiSlider = Instance.new("Frame")
                        uiSlider.Name = "uiSlider"
                        uiSlider.Parent = slider_shell
                        uiSlider.BackgroundColor3 = Accent
                        uiSlider.Position = UDim2.new(0.00434782589, 0, 0.0500000007, 0)
                        uiSlider.Size = UDim2.new((Def or 0) / Max, 0, 0, 18)
                        uiSlider.BorderSizePixel = 0

                        local uislider_corner_2 = Instance.new("UICorner")
                        uislider_corner_2.CornerRadius = UDim.new(0, 6)
                        uislider_corner_2.Name = "uislider_corner"
                        uislider_corner_2.Parent = uiSlider

                        local slider_text = Instance.new("TextLabel")
                        slider_text.Name = "slider_text"
                        slider_text.Parent = slider_shell
                        slider_text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        slider_text.BackgroundTransparency = 1.000
                        slider_text.Position = UDim2.new(0.02434782589, 0, 0.0500000007, 0)
                        slider_text.Size = UDim2.new(0, 228, 0, 18)
                        slider_text.Font = Enum.Font.Gotham
                        slider_text.Text = tostring(Def and math.floor((Def / Max) * (Max - Min) + Min) or 0) .. '/' .. tostring(Max)
                        slider_text.TextColor3 = Color3.fromRGB(200, 200, 200)
                        slider_text.TextSize = 10.000
                        slider_text.TextXAlignment = Enum.TextXAlignment.Left

                        -- // Slider by Dawid cause idk how to make them \\ -- 
                        local dragging = false 

                        local function slide(input)
                            local pos = UDim2.new(math.clamp((input.Position.X - slider_shell.AbsolutePosition.X) / slider_shell.AbsoluteSize.X, 0, 1), 0, 0, 18)
                            uiSlider:TweenSize(pos, Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
                            local value = math.floor(((pos.X.Scale * Max) / Max) * (Max - Min) + Min)
                            slider_text.Text = tostring(value) .. '/' .. Max
                            callback(value)
                        end

                        slider_shell.InputBegan:Connect(function(input)
                            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                slide(input)
                                dragging = true
                            end
                        end)
            
                        slider_shell.InputEnded:Connect(function(input)
                            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                dragging = false
                            end
                        end)
            
                        UserInputService.InputChanged:Connect(function(input)
                            if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                                slide(input)
                            end
                        end)

                        local slider_functions = {}

                        function slider_functions:UpdateSlider(Def)
                            local value = tostring(Def and math.floor((Def / Max) * (Max - Min) + Min) or 0) .. '/' .. tostring(Max)
                            slider_text.Text = value
                            callback(value)

                            local pos = UDim2.new((Def or 0) / Max, 0, 0, 18)
                            uiSlider:TweenSize(pos, Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
                        end

                        return slider_functions
                    end

                    return main_functions
                end

                return frame_sections
            end

            return columns
        end

        return mid_sections
    end

    return TabsFunc
end

return library
