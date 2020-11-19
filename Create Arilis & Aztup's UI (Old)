local uiParent = game:GetService("RunService"):IsStudio() and game:GetService("Players").LocalPlayer.PlayerGui or game:GetService('CoreGui');
    local Heartbeat = game:GetService("RunService").Heartbeat;
    local TweenService = game:GetService("TweenService");
    local UIS = game:GetService("UserInputService");

    if shared.ran then shared.ran:Destroy() end;

    if shared.Cursor then
        local Old_Cursor = shared.Cursor;
    
        shared.Cursor = nil;
        Old_Cursor:Remove();
    end;
    
    if Drawing then
        local Cursor = Drawing.new("Circle");
        Cursor.Filled = true;
        Cursor.Color = Color3.fromRGB(255, 255, 255);
        Cursor.Transparency = 1;
        Cursor.Visible = true;
        Cursor.Radius = 5;
        Cursor.Thickness = 1;
        shared.Cursor = Cursor;

        local connection;

        connection = Heartbeat:Connect(function()
            if not shared.Cursor then
                connection:disconnect();
            else
                shared.Cursor.Position = UIS:GetMouseLocation();
            end;
        end);
    end;

    local library = {};
    library.flags = {};
    library.toggled = true;
    
    if _G.Theme then
        library.Settings = {
            textColor = _G.textColor;
            buttonColor = _G.buttonColor;
            buttonOutlineColor = _G.buttonOutlineColor;
            buttonOutlineSize = _G.buttonOutlineSize;
            buttonHoverEnabled = false;
            buttonModal = true;
            defaultColorPickerColor = Color3.fromRGB(255, 255, 255);
            sliderColor = _G.sliderColor;
            sectionBackgroundTransparency = _G.sectionBackgroundTransparency;
            toggleImage = "rbxassetid://1202200114";
            rippleImage = "rbxassetid://2708891598";
            borderRainbow = _G.borderRainbow;
        };
    else
        library.Settings = {
            textColor = Color3.fromRGB(255, 255, 255);
            buttonColor = Color3.fromRGB(35, 35, 35);
            buttonOutlineColor = Color3.fromRGB(50, 50, 50);
            buttonOutlineSize = 1;
            buttonHoverEnabled = false;
            buttonModal = true;
            defaultColorPickerColor = Color3.fromRGB(255, 255, 255);
            sliderColor = Color3.new(0.0862745, 0.0862745, 0.0862745);
            sectionBackgroundTransparency = 1;
            toggleImage = "rbxassetid://1202200114";
            rippleImage = "rbxassetid://2708891598";
            borderRainbow = false;
        };
    end

    library.gui = Instance.new("ScreenGui");
    library.gui.Name = game:GetService("HttpService"):GenerateGUID(false):lower():sub(1, 10);
    library.gui.ResetOnSpawn = false;
    library.gui.Parent = uiParent;
    library.gui.Enabled = library.toggled;
    library.WindowCount = 0;
    library.ColorPickerToggle = false;

    local Modal = Instance.new("TextButton", library.gui);
    Modal.Modal = library.Settings.buttonModal;
    Modal.BackgroundTransparency = 1;
    Modal.Text = "";

    shared.ran = library.gui;

    local dragger = {};

    do
        local mouse        = game:GetService("Players").LocalPlayer:GetMouse();
        local inputService = game:GetService('UserInputService');
        local heartbeat    = game:GetService("RunService").Heartbeat;

        -- // credits to Ririchi / Inori for this cute drag function :)
        function dragger.new(frame, secondlol)
            frame.Active = true;
            secondlol.Active = true;
            
            secondlol.MouseLeave:connect(function()
                IsInFrame = false;
            end)

            secondlol.MouseEnter:connect(function()
                IsInFrame = true;
            end)

            local input = secondlol.InputBegan:connect(function(key)
                if key.UserInputType == Enum.UserInputType.MouseButton1 and IsInFrame then
                    local objectPosition = Vector2.new(mouse.X - frame.AbsolutePosition.X, mouse.Y - frame.AbsolutePosition.Y);
                    while heartbeat:wait() and inputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                        pcall(function()
                            frame:TweenPosition(UDim2.new(0, mouse.X - objectPosition.X + (frame.Size.X.Offset * frame.AnchorPoint.X), 0, mouse.Y - objectPosition.Y + (frame.Size.Y.Offset * frame.AnchorPoint.Y)), 'Out', 'Linear', 0.01, true);
                        end)
                    end
                end
            end)
        end

        game:GetService('UserInputService').InputBegan:connect(function(key, gpe)
            --if (not gpe) then
                if key.KeyCode == Enum.KeyCode.RightShift and library.gui then
                    library.toggled = not library.toggled;
                    library.gui.Enabled = library.toggled;
                    if library.Settings.buttonModal then
                        Modal.Visible = library.toggled;
                    end;
                    shared.Cursor.Visible = library.toggled;
                end
            --end
        end)

        local connection;

        connection = heartbeat:Connect(function()
            if not shared.Cursor then
                connection:disconnect();
            else
                shared.Cursor.Position = inputService:GetMouseLocation();
            end;
        end);
    end;

    function library:CreateWindow(name)
        assert(type(name) == "string", "You need to input a name. (string)");

        local Window = Instance.new("Frame")
        local WindowName = Instance.new("TextLabel")

        Window.Name = "Window"
        Window.Parent = library.gui
        Window.AnchorPoint = Vector2.new(0.5, 0.5)
        Window.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
        Window.BorderColor3 = Color3.new(0.337255, 0.337255, 0.337255)
        Window.Position = UDim2.new(0, 150 + (190 * self.WindowCount), 0, (Window.Size.Y.Offset / 2) + 50)
        Window.Size = UDim2.new(0, 180, 0, 0)
        
        WindowName.Name = "WindowName"
        WindowName.Parent = Window
        WindowName.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
        WindowName.BorderColor3 = Color3.new(0.337255, 0.337255, 0.337255)
        WindowName.Position = UDim2.new(0, 0, 0, -35)
        WindowName.Size = UDim2.new(1, 0, 0, 35)
        WindowName.Font = Enum.Font.SourceSans
        WindowName.Text = name
        WindowName.TextColor3 = library.Settings.textColor
        WindowName.TextSize = 25

        dragger.new(Window, WindowName);

        local Container = Instance.new("ScrollingFrame")
        local Toggle = Instance.new("Frame")
        local TextLabel = Instance.new("TextLabel")
        local TestButton = Instance.new("ImageButton")
        local TestFrame = Instance.new("Frame")
        local UIListLayout = Instance.new("UIListLayout")
        local UIPadding = Instance.new("UIPadding");
        local Slider = Instance.new("TextButton")
        local Frame = Instance.new("Frame")
        local TextLabel_2 = Instance.new("TextLabel")
        local Section = Instance.new("TextButton")
        local Button = Instance.new("TextButton")
        
        Container.Name = "Container"
        Container.Parent = Window
        Container.BackgroundColor3 = Color3.new(1, 1, 1)
        Container.BackgroundTransparency = 1
        Container.Position = UDim2.new(0, 0, 0, 5)
        Container.Size = UDim2.new(1, 0, 0.95, 15)
        Container.ScrollBarThickness = 2;
        Container.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png";
        Container.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png";
        Container.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png";
        Container.CanvasSize = UDim2.new(0, 0, 0, 0);
        
        UIListLayout.Parent = Container
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.HorizontalAlignment = "Center";
        UIListLayout.Padding = UDim.new(0, 8);

        UIPadding.Parent = Container;
        UIPadding.PaddingTop = UDim.new(0, 5);

        local window = {};
        window.Count = self.WindowCount;
        window.Container = Container;

        self.WindowCount = self.WindowCount + 1;
        
        spawn(function()
            while true do
                if library.Settings.borderRainbow then
                    for i = 0, 1, 0.001 do
                        local Rainbow = Color3.fromHSV(i, 1, 1);
                        Window.BorderColor3 = Rainbow;
                        WindowName.BorderColor3 = Rainbow;
                        wait();
                    end;
                else
                    Window.BorderColor3 = library.Settings.buttonOutlineColor
                    WindowName.BorderColor3 = library.Settings.buttonOutlineColor
                end
                Heartbeat:Wait()
            end;
        end);

        function window:btnRipple(btn)
            spawn(function()
                local mouse = game:GetService("Players").LocalPlayer:GetMouse();
                local rippleEffect = Instance.new("ImageLabel", btn);
                local rippleEffectInner = Instance.new("ImageLabel", rippleEffect);
                rippleEffect.Name = "rippleEffect";
                rippleEffect.BackgroundTransparency = 1;
                rippleEffect.BorderSizePixel = 0;
                rippleEffect.Image = library.Settings.rippleImage;
                rippleEffect.ImageColor3 = Color3.fromRGB(244, 244, 244);
                rippleEffect.ImageTransparency = 0.7;
                rippleEffect.ScaleType = Enum.ScaleType.Fit;
                rippleEffectInner.Name = "rippleEffect";
                rippleEffectInner.AnchorPoint = Vector2.new(0.5, 0.5);
                rippleEffectInner.BackgroundTransparency = 1;
                rippleEffectInner.BorderSizePixel = 0;
                rippleEffectInner.Position = UDim2.new(0.5, 0, 0.5, 0);
                rippleEffectInner.Size = UDim2.new(0.93, 0, 0.93, 0);
                rippleEffectInner.Image = library.Settings.rippleImage;
                rippleEffectInner.ImageColor3 = Color3.fromRGB(45, 45, 45);
                rippleEffectInner.ImageTransparency = 0.7;
                rippleEffectInner.ScaleType = Enum.ScaleType.Fit;
                rippleEffect.Position = UDim2.new((mouse.X - rippleEffect.AbsolutePosition.X) / btn.AbsoluteSize.X, 0, (mouse.Y - rippleEffect.AbsolutePosition.Y) / btn.AbsoluteSize.Y, 0);
                local Animation = TweenService:Create(rippleEffect, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    Position = UDim2.new(-4.5, 0, -4.5, 0);
                    Size = UDim2.new(10, 0, 10, 0);
                    ImageTransparency = 1;
                })
                Animation:Play();

                Animation.Completed:Connect(function()
                    rippleEffect:Destroy();
                end);
            end)
        end

        function window:Resize()
            local count = 0;

            for i, v in pairs(Container:GetChildren()) do
                if not v:IsA("UIListLayout") then
                    count = count + 1;
                end;
            end;

            local Size = UDim2.new(0, 180, 0, (count * 33) - 25);

            if Size.Y.Offset >= 400 then
                Container.CanvasSize = UDim2.new(0, 0, 0, Size.Y.Offset);
                Window.Size = UDim2.new(0, 180, 0, 400);
            else
                Window.Size = Size;
            end;

            for i, v in pairs(library.gui:GetChildren()) do
                if v == self.Container.Parent then
                    v.Position = UDim2.new(0, 150 + (self.Count * 190), 0, (v.Size.Y.Offset / 2) + 50);
                    break;
                end;
            end;
        end;

        function window:Button(name, callback)
            assert(type(name) == "string", "You need to input a name. (string)");
            local callback = callback or function() end;
            
            local Button = Instance.new("TextButton")


            if #name >= 28 then
                Button.TextScaled = true;
            else
                Button.TextScaled = false;
            end

            Button.Name = "Button"
            Button.Parent = self.Container
            Button.BackgroundColor3 = library.Settings.buttonColor
            Button.BorderColor3 = library.Settings.buttonOutlineColor
            Button.BorderSizePixel = library.Settings.buttonOutlineSize
            Button.AutoButtonColor = library.Settings.buttonHoverEnabled
            Button.Position = UDim2.new(0, 0, 0, 0)
            Button.Size = UDim2.new(0.90, 0, 0, 25)
            Button.ClipsDescendants = true
            Button.Font = Enum.Font.SourceSans
            Button.Text = name;
            Button.TextColor3 = library.Settings.textColor
            Button.TextSize = 14

            Button.MouseButton1Click:Connect(function() window:btnRipple(Button) end)
            Button.MouseButton1Click:Connect(callback);

            self:Resize();
            return Button;
        end;
        
        function window:Box(name, boxtext, callback)
            assert(type(name) == "string", "You need to input a name. (string)");
            local callback = callback or function() end;
            
            local BoxContainer = Instance.new("Frame")
            local BoxName = Instance.new("TextLabel")
            local Box = Instance.new("TextBox")
            
            BoxContainer.Name = "BoxContainer"
            BoxContainer.Parent = Container
            BoxContainer.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            BoxContainer.BorderSizePixel = 0
            BoxContainer.Size = UDim2.new(1, 0, 0, 25)
            
            BoxName.Name = "BoxName"
            BoxName.Parent = BoxContainer
            BoxName.BackgroundColor3 = Color3.new(1, 1, 1)
            BoxName.BackgroundTransparency = 1
            BoxName.Position = UDim2.new(0.05, 3, 0.2, 0)
            BoxName.Size = UDim2.new(0, 81, 1, -5)
            BoxName.Font = Enum.Font.SourceSans
            BoxName.TextColor3 = library.Settings.textColor
            BoxName.Text = name;
            BoxName.TextSize = 14
            BoxName.TextXAlignment = "Left"
            
            Box.Name = "Box"
            Box.Parent = BoxContainer
            Box.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            Box.BorderColor3 = Color3.new(0.196078, 0.196078, 0.196078)
            Box.Position = UDim2.new(1, -75, 0.157000005, 0)
            Box.Size = UDim2.new(0, 65, 1, -5)
            Box.Font = Enum.Font.SourceSans
            Box.Text = boxtext;
            Box.TextScaled = true;
            Box.TextColor3 = library.Settings.textColor
            Box.TextSize = 14

            Box.FocusLost:Connect(function()
                library.flags[name] = Box.Text;
                callback(Box.Text);
            end);

            self:Resize();
            return Box;
        end;
        
        function window:Toggle(name, callback)
            assert(type(name) == "string", "You need to input a name. (string)");
            local callback = callback or function() end;
            
            local ToggleContainer = Instance.new("Frame")
            local ToggleName = Instance.new("TextLabel")
            local Toggle = Instance.new("ImageButton")
            local Frame = Instance.new("Frame")
            
            ToggleContainer.Name = "ToggleContainer"
            ToggleContainer.Parent = Container
            ToggleContainer.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            ToggleContainer.BorderSizePixel = 0
            ToggleContainer.Size = UDim2.new(1, 0, 0, 25)
            
            ToggleName.Name = "ToggleName"
            ToggleName.Parent = ToggleContainer
            ToggleName.BackgroundColor3 = Color3.new(1, 1, 1)
            ToggleName.BackgroundTransparency = 1
            ToggleName.Position = UDim2.new(0.05, 3, 0.2, 0)
            ToggleName.Size = UDim2.new(0, 100, 0, 15)
            ToggleName.Font = Enum.Font.SourceSans
            ToggleName.TextColor3 = library.Settings.textColor
            ToggleName.TextSize = 14
            ToggleName.Text = name;
            ToggleName.TextXAlignment = "Left"


            
            Toggle.Name = "Toggle"
            Toggle.Parent = ToggleContainer
            Toggle.BackgroundColor3 = Color3.new(0.13, 0.13, 0.13)
            Toggle.BorderColor3 = Color3.new(0.196078, 0.196078, 0.196078)
            Toggle.ClipsDescendants = true
            Toggle.Position = UDim2.new(1, -34, 0, 0)
            Toggle.Size = UDim2.new(0, 25, 0, 25)
            Toggle.AutoButtonColor = false
            Toggle.Image = library.Settings.toggleImage;
            
            Frame.Name = " "
            Frame.Parent = Toggle
            Frame.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            Frame.BorderSizePixel = 0
            Frame.Size = UDim2.new(0, 25, 0, 25)
            
            local toggle = false;

            Toggle.MouseButton1Click:Connect(function()
                toggle = not toggle;

                if toggle then
                    Frame:TweenPosition(UDim2.new(0, 10, 0, -25), 'Out', 'Linear', .3, true)
                else
                    Frame:TweenPosition(UDim2.new(0, 0,0, 0), 'Out', 'Linear', .3, true)
                end;

                library.flags[name] = toggle;
                callback(toggle);
            end);

            self:Resize();
        end;
        
        function window:Section(name)
            assert(type(name) == "string", "You need to input a name. (string)");
            
            local Section = Instance.new("TextLabel")

            if #name >= 25 then
                Section.TextScaled = true;
            else
                Section.TextScaled = false;
            end

            Section.Name = "Section"
            Section.Parent = Container
            Section.BackgroundTransparency = library.Settings.sectionBackgroundTransparency
            Section.BackgroundColor3 = Color3.new(0.0862745, 0.0862745, 0.0862745)
            Section.BorderSizePixel = 0
            Section.Position = UDim2.new(0, 0, 0.765384614, 0)
            Section.Size = UDim2.new(1, 0, 0, 25)
            Section.Font = Enum.Font.SourceSans
            Section.Text = name
            Section.TextColor3 = library.Settings.textColor
            Section.TextSize = 14     
            
            self:Resize();
        end;
        
        function window:ColorPicker(name, default, callback)
            assert(type(name) == "string", "You need to input a name. (string)");
            
            local default = default or Color3.fromRGB(255, 255, 255);
            local callback = callback or function() end;

            local ColorPickerContainer = Instance.new("Frame")
            local ColorPickerName = Instance.new("TextLabel")
            local CP = Instance.new("ImageButton")
            local Container = Instance.new("Frame")
            local Color = Instance.new("ImageLabel")
            local UIPadding = Instance.new("UIPadding")
            local liveColor = Instance.new('TextLabel')
            local Picker = Instance.new("Frame")

            Picker.Name = "Picker"
            Picker.Parent = Color
            Picker.BackgroundColor3 = Color3.new(1, 1, 1)
            Picker.BorderSizePixel = 0
            Picker.Size = UDim2.new(0, 5, 0, 5)
            Picker.BorderSizePixel = 1;
            Picker.BorderColor3 = Color3.fromRGB(0, 0, 0);
            Picker.AnchorPoint = Vector2.new(0.5, 0.5);
            Picker.ZIndex = 11;

            ColorPickerContainer.Name = "ColorPickerContainer"
            ColorPickerContainer.Parent = self.Container;
            ColorPickerContainer.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            ColorPickerContainer.BorderSizePixel = 0
            ColorPickerContainer.Size = UDim2.new(1, 0, 0, 25)
            ColorPickerContainer.Visible = true;
            
            ColorPickerName.Name = "ColorPickerName"
            ColorPickerName.Parent = ColorPickerContainer
            ColorPickerName.BackgroundColor3 = Color3.new(1, 1, 1)
            ColorPickerName.BackgroundTransparency = 1
            ColorPickerName.Position = UDim2.new(0.05, 3, 0.2, 0)
            ColorPickerName.Size = UDim2.new(0, 100, 0, 15)
            ColorPickerName.Font = Enum.Font.SourceSans
            ColorPickerName.TextColor3 = library.Settings.textColor
            ColorPickerName.TextSize = 14
            ColorPickerName.Text = name;
            ColorPickerName.TextXAlignment = "Left";
            
            CP.Name = "CP"
            CP.Parent = ColorPickerContainer
            CP.BackgroundColor3 = default;
            CP.BorderColor3 = Color3.new(0.196078, 0.196078, 0.196078)
            CP.BorderSizePixel = 0
            CP.ClipsDescendants = true
            CP.Position = UDim2.new(1, -34, 0, 0)
            CP.Size = UDim2.new(0, 25, 0, 25)
            CP.AutoButtonColor = false
            
            Container.Name = "Container"
            Container.Parent = Window;
            Container.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            Container.BorderColor3 = Color3.new(0.196078, 0.196078, 0.196078)
            Container.Position = CP.Position + UDim2.new(0.3, 0, 0, 0)
            Container.Size = UDim2.new(0, 175, 0, 200)
            Container.Visible = false;
            Container.ZIndex = 10;
            
            Color.Name = "Color"
            Color.Parent = Container
            Color.BackgroundColor3 = Color3.new(1, 1, 1)
            Color.BorderSizePixel = 0
            Color.Position = UDim2.new(0.0149999997, 0, 0.0250000004, 0)
            Color.Size = UDim2.new(0, 160, 0, 160)
            Color.Image = "rbxassetid://1433361550"
            Color.ZIndex = 11;
            
            UIPadding.Parent = Container
            UIPadding.PaddingBottom = UDim.new(0, 5)
            UIPadding.PaddingLeft = UDim.new(0, 5)
            UIPadding.PaddingRight = UDim.new(0, 5)
            UIPadding.PaddingTop = UDim.new(0, 5)
            
            liveColor.Name = "G"
            liveColor.Parent = Container
            liveColor.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            liveColor.BorderColor3 = Color3.new(0.196078, 0.196078, 0.196078)
            liveColor.Position = UDim2.new(0, 2.5, 0, 168)
            liveColor.Size = UDim2.new(0, 160, 0, 25)
            liveColor.Font = Enum.Font.SourceSans
            liveColor.Text = "R: 255 G: 255 B: 255"
            liveColor.TextColor3 = library.Settings.textColor
            liveColor.TextSize = 20
            liveColor.ZIndex = 11;
           

            local MouseDown = false;
            local Current_Color = default;
            
            local Mouse = game:GetService("Players").LocalPlayer:GetMouse();

            local function GetHSV(frame)
                local x,y = Mouse.X - frame.AbsolutePosition.X, Mouse.Y - frame.AbsolutePosition.Y
                
                local maxX,maxY = frame.AbsoluteSize.X,frame.AbsoluteSize.Y
                x = math.clamp(x, 0, maxX);
                y = math.clamp(y, 0, maxY);
                return x/maxX,y/maxY,1
            end

            CP.MouseButton1Down:Connect(function()
                
                if library.ColorPicker and library.ColorPicker ~= Container then
                    
                    library.ColorPicker.Visible = false;
                    library.ColorPickerToggle = false;
                end;

                library.ColorPickerToggle = not library.ColorPickerToggle;

                
                library.ColorPicker = Container;
                library.ColorPicker.Visible = library.ColorPickerToggle;
            end);

            UIS.InputEnded:Connect(function(i)
                if i.UserInputType == Enum.UserInputType.MouseButton1 then
                    MouseDown = false;
                end;
            end);

            Color.InputBegan:Connect(function(i)
                if i.UserInputType == Enum.UserInputType.MouseButton1 then
                    MouseDown = true;
                end;
            end);

            Heartbeat:Connect(function()
                if MouseDown then
                    local H, S, V = GetHSV(Color);
                    if H and S and V then
                        local Color = Color3.fromHSV(1 - H, 1 - S, V);

                        Picker:TweenPosition(UDim2.new(H, 0, S, 0), "Out", "Quad", 0.15, true);
                        TweenService:Create(CP, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            BackgroundColor3 = Color;
                        }):Play();
                        Picker.BackgroundColor3 = Color
                        liveColor.Text = 'R: '..tostring(math.floor(Color.R * 255))..' G: '..tostring(math.floor(Color.G * 255))..' B: '..tostring(math.floor(Color.B * 255))
                        Current_Color = Color;
                    end;
                    library.ColorPickerToggle = false;
                    library.ColorPicker = nil;
                    
                    callback(Current_Color);
                    library.flags[name] = Current_Color;
                end;
            end);
            self:Resize();
        end;
        
        function window:Slider(name, option, callback)
            local callback = callback or function() end;
            local MouseDown = false;

            assert(type(name) == "string", "You need to input a name. (string)");
            assert(option.min and option.max and option.default, "You need to put a min value and a max value and a default value!");
            
            local Slider = Instance.new("TextButton")
            local SliderBar = Instance.new("Frame")
            local SliderName = Instance.new("TextLabel")
            
            Slider.Name = "Slider"
            Slider.Parent = Container
            Slider.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            Slider.BorderColor3 = library.Settings.buttonOutlineColor
            Slider.BorderSizePixel = library.Settings.buttonOutlineSize
            Slider.Size = UDim2.new(0.90, 0, 0, 25)
            Slider.Font = Enum.Font.SourceSans
            Slider.Text = ""
            Slider.TextColor3 = library.Settings.textColor
            Slider.TextSize = 14
            Slider.AutoButtonColor = library.Settings.buttonHoverEnabled;
            
            SliderBar.Name = "SliderBar"
            SliderBar.Parent = Slider
            SliderBar.BackgroundColor3 = library.Settings.sliderColor;
            SliderBar.BorderColor3 = library.Settings.buttonOutlineColor
            SliderBar.BorderSizePixel = 0
            SliderBar.Position = UDim2.new(0, 0, 0, 0)
            SliderBar.Size = UDim2.new(0, 0, 1, 0)
            
            SliderName.Name = "SliderName"
            SliderName.Parent = Slider
            SliderName.BackgroundColor3 = Color3.new(1, 1, 1)
            SliderName.BackgroundTransparency = 1
            SliderName.Size = UDim2.new(1, 0, 1, 0)
            SliderName.Font = Enum.Font.SourceSans
            SliderName.Text = ("%s: %s"):format(name, option.default)
            SliderName.TextColor3 = library.Settings.textColor
            SliderName.TextSize = 14
            SliderName.TextWrapped = true
            
            UIS.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseButton1 then MouseDown = false end end)
            Slider.MouseButton1Down:Connect(function() MouseDown = true end);
            Slider.MouseButton1Up:Connect(function() MouseDown = false end);

            Heartbeat:Connect(function()
                if MouseDown then
                    local mouse = game:GetService("UserInputService"):GetMouseLocation();
                    local percent = (mouse.X - Slider.AbsolutePosition.X) / (Slider.AbsoluteSize.X);
                    percent = math.clamp(percent, 0, 1);
                    local Value = option.min + (option.max - option.min) * percent;

                    if option.floor then
                        Value = math.floor(Value);
                    end;

                    SliderBar:TweenSize(UDim2.new(percent, 0, 1, 0), "Out", "Quad", 0.1, true);
                    Value = tonumber(string.format("%.2f", Value));
                    SliderName.Text = ("%s: %s"):format(name, Value);

                    library.flags[name] = Value;
                    callback(Value);
                end;
            end);

            self:Resize();
        end;
        
        function window:Bind(name, default, callback)
            assert(type(name) == "string" and type(default) == "userdata", "You need to input a name and a default value. (string, KeyCode)");
            local callback = callback or function() end;
            local keycodename = default;

            local default = default;
            library.flags[name] = default;
            
            local WhitelistedType = {
                [Enum.UserInputType.MouseButton1] = "Mouse1";
                [Enum.UserInputType.MouseButton2] = "Mouse2";
                [Enum.UserInputType.MouseButton3] = "Mouse3";
            };

            local Type = tostring(default):match("UserInputType") and "UserInputType" or "KeyCode";

            keycodename = tostring(keycodename):gsub("Enum.UserInputType.", "");
            keycodename = tostring(keycodename):gsub("Enum.KeyCode.", "");

            local BindContainer = Instance.new("Frame")
            local BoxName = Instance.new("TextLabel")
            local Box = Instance.new("TextButton")
            
            BindContainer.Name = "BoxContainer"
            BindContainer.Parent = Container
            BindContainer.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            BindContainer.BorderSizePixel = 0
            BindContainer.Size = UDim2.new(1, 0, 0, 25)
            
            BoxName.Name = "BoxName"
            BoxName.Parent = BindContainer
            BoxName.BackgroundColor3 = Color3.new(1, 1, 1)
            BoxName.BackgroundTransparency = 1
            BoxName.Position = UDim2.new(0.05, 3, 0.2, 0)
            BoxName.Size = UDim2.new(0, 81, 1, -5)
            BoxName.Font = Enum.Font.SourceSans
            BoxName.TextColor3 = library.Settings.textColor
            BoxName.Text = name;
            BoxName.TextSize = 14
            BoxName.TextXAlignment = "Left"
            
            Box.Name = "Box"
            Box.Parent = BindContainer
            Box.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            Box.BorderColor3 = Color3.new(0.196078, 0.196078, 0.196078)
            Box.Position = UDim2.new(1, -75, 0.157000005, 0)
            Box.Size = UDim2.new(0, 65, 1, -5)
            Box.Font = Enum.Font.SourceSans
            Box.Text = keycodename;
            Box.TextScaled = true;
            Box.TextColor3 = library.Settings.textColor
            Box.TextSize = 14

            Box.MouseButton1Click:Connect(function()
                local Connection;

                Box.Text = ". . .";

                Connection = UIS.InputBegan:Connect(function(i)
                    if WhitelistedType[i.UserInputType] then
                        Box.Text = WhitelistedType[i.UserInputType];
                        spawn(function()
                            wait(0.1)
                            default = i.UserInputType;
                            Type = "UserInputType";
                        end);
                    elseif i.KeyCode ~= Enum.KeyCode.Unknown then
                        Box.Text = tostring(i.KeyCode):gsub("Enum.KeyCode.", "");
                        spawn(function()
                            wait(0.1)
                            default = i.KeyCode;
                            Type = "KeyCode";
                        end);
                    else
                        warn("Exception: " .. i.UserInputType .. " " .. i.KeyCode);
                    end;

                    spawn(function()
                        wait(0.1);
                        library.flags[name] = default;
                    end);
                    
                    Connection:Disconnect();
                end);
            end);

            UIS.InputBegan:Connect(function(i)
                if (default == i.UserInputType or default == i.KeyCode) then
                    callback(default);
                end;
            end);

            self:Resize();
        end;

        return window;
    end;

    return library;
