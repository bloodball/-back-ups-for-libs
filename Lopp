local Library = {}

function Library:CreateUI(uiname,scrollenabled,elementspacing,framesize,TextAllignment)
    local Dko = Instance.new("ScreenGui")
    local MainFrame = Instance.new("Frame")
    local Dashboard = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local MainFrameCorner = Instance.new("UICorner")


    Dko.Name = uiname
    Dko.Parent = game.CoreGui
    Dko.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Dko.ResetOnSpawn = false
    
    MainFrame.Name = "MainFrame"
    MainFrame.Parent = Dko
    MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    MainFrame.BorderColor3 = Color3.fromRGB(25, 25, 25)
    MainFrame.BorderSizePixel = 0
    MainFrame.Position = UDim2.new(0.346445292, 0, 0.247718394, 0)
    MainFrame.Size = UDim2.new(0, 335, 0, 314)
    
    Dashboard.Name = "Dashboard"
    Dashboard.Parent = MainFrame
    Dashboard.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
    Dashboard.BackgroundTransparency = 1.000
    Dashboard.BorderColor3 = Color3.fromRGB(25, 25, 25)
    Dashboard.BorderSizePixel = 0
    Dashboard.Size = UDim2.new(0, 335, 0, 48)
    
    Title.Name = "Title"
    Title.Parent = Dashboard
    Title.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Title.BackgroundTransparency = 1.000
    Title.BorderColor3 = Color3.fromRGB(25, 25, 25)
    Title.BorderSizePixel = 0
    Title.Position = UDim2.new(0.0263467859, 0, 0.0625, 0)
    Title.Size = UDim2.new(0, 317, 0, 41)
    Title.Font = Enum.Font.GothamBold
    Title.Text = uiname
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 14.000
    Title.TextXAlignment = Enum.TextXAlignment[TextAllignment]
    print("Bytes cool tho")
    MainFrameCorner.CornerRadius = UDim.new(0, 6)
    MainFrameCorner.Name = "MainFrameCorner"
    MainFrameCorner.Parent = MainFrame
    

    local UserInputService = game:GetService("UserInputService")
   
           local gui = MainFrame
   
           local dragging
           local dragInput
           local dragStart
           local startPos
   
           local function update(input)
               local delta = input.Position - dragStart
               gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
           end
   
           gui.InputBegan:Connect(function(input)
               if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                   dragging = true
                   dragStart = input.Position
                   startPos = gui.Position
                   
                   input.Changed:Connect(function()
                       if input.UserInputState == Enum.UserInputState.End then
                           dragging = false
                       end
                   end)
               end
           end)
   
           gui.InputChanged:Connect(function(input)
               if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                   dragInput = input
               end
           end)
   
           UserInputService.InputChanged:Connect(function(input)
               if input == dragInput and dragging then
                   update(input)
               end
           end)

    local Page = Instance.new("ScrollingFrame")
    local PageLayout = Instance.new("UIListLayout")

    Page.Name = "Page"
    Page.Parent = MainFrame
    Page.Active = true
    Page.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Page.BackgroundTransparency = 1.000
    Page.BorderColor3 = Color3.fromRGB(25, 25, 25)
    Page.BorderSizePixel = 0
    Page.Position = UDim2.new(0, 0, 0.173846006, 0)
    Page.Size = UDim2.new(0, 335, 0, 250)
    Page.CanvasSize = UDim2.new(0,0,framesize,0)
    Page.ScrollBarThickness = 3
    Page.ScrollingEnabled = scrollenabled
    
    PageLayout.Name = "PageLayout"
    PageLayout.Parent = Page
    PageLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    PageLayout.SortOrder = Enum.SortOrder.LayoutOrder
    PageLayout.Padding = UDim.new(0, elementspacing) or UDim.new(0,20)

    if scrollenabled == true then 
        Page.ScrollBarThickness = 3
    else
        Page.ScrollBarThickness = 0
    end

    local UIElements = {}

    function UIElements:addButton(buttonname,buttoninfo,callback)
        local ButtonHolder = Instance.new("Frame")
        local Button = Instance.new("TextButton")
        local ButtonTitle = Instance.new("TextLabel")
        local ButtonInfo = Instance.new("TextLabel")

        local callback = callback or function () end
         
        ButtonHolder.Name = "ButtonHolder"
        ButtonHolder.Parent = Page
        ButtonHolder.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        ButtonHolder.BackgroundTransparency = 1.000
        ButtonHolder.BorderColor3 = Color3.fromRGB(25, 25, 25)
        ButtonHolder.BorderSizePixel = 0
        ButtonHolder.Position = UDim2.new(0.0597014911, 0, 9.72671842e-07, 0)
        ButtonHolder.Size = UDim2.new(0, 317, 0, 36)
        
        Button.Name = "Button"
        Button.Parent = ButtonHolder
        Button.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        Button.BackgroundTransparency = 1.000
        Button.BorderColor3 = Color3.fromRGB(25, 25, 25)
        Button.Size = UDim2.new(0, 317, 0, 36)
        Button.AutoButtonColor = false
        Button.Font = Enum.Font.SourceSans
        Button.Text = ""
        Button.TextColor3 = Color3.fromRGB(0, 0, 0)
        Button.TextSize = 14.000
        print("Bytes is cool")
        ButtonTitle.Name = "ButtonTitle"
        ButtonTitle.Parent = Button
        ButtonTitle.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        ButtonTitle.BackgroundTransparency = 1.000
        ButtonTitle.BorderColor3 = Color3.fromRGB(25, 25, 525)
        ButtonTitle.Size = UDim2.new(0, 317, 0, 20)
        ButtonTitle.Font = Enum.Font.Gotham
        ButtonTitle.Text = buttonname
        ButtonTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
        ButtonTitle.TextSize = 12.000
        ButtonTitle.TextXAlignment = Enum.TextXAlignment.Left
        
        ButtonInfo.Name = "ButtonInfo"
        ButtonInfo.Parent = Button
        ButtonInfo.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        ButtonInfo.BackgroundTransparency = 1.000
        ButtonInfo.BorderColor3 = Color3.fromRGB(25, 25, 525)
        ButtonInfo.Position = UDim2.new(0, 0, 0.555555582, 0)
        ButtonInfo.Size = UDim2.new(0, 317, 0, 16)
        ButtonInfo.Font = Enum.Font.GothamSemibold
        ButtonInfo.Text = buttoninfo
        ButtonInfo.TextColor3 = Color3.fromRGB(255, 255, 255)
        ButtonInfo.TextSize = 11.000
        ButtonInfo.TextTransparency = 0.500
        ButtonInfo.TextXAlignment = Enum.TextXAlignment.Left

        Button.MouseButton1Down:Connect(function()
            ButtonTitle.TextSize = 11
            ButtonInfo.TextSize = 10
            wait(0.1)
            pcall(callback)
            ButtonTitle.TextSize = 12
            ButtonInfo.TextSize = 11
        end)
        -- end of button
    end

    function UIElements:addToggle(togglename,toggleinfo,callback)
        local ToggleHolder = Instance.new("Frame")
        local ToggleButton = Instance.new("TextButton")
        local ToggleTItle = Instance.new("TextLabel")
        local ToggleInfo = Instance.new("TextLabel")
        local TogglePart = Instance.new("Frame")
        local TogglePartCorner = Instance.new("UICorner")
        local ToggleBall = Instance.new("Frame")
        local ToggleBallCorner = Instance.new("UICorner")

        local callback = callback or function() end
        local ToggleEnabled = false

        ToggleHolder.Name = "ToggleHolder"
        ToggleHolder.Parent = Page
        ToggleHolder.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        ToggleHolder.BackgroundTransparency = 1.000
        ToggleHolder.BorderColor3 = Color3.fromRGB(25, 25, 25)
        ToggleHolder.BorderSizePixel = 0
        ToggleHolder.Position = UDim2.new(0.0278551541, 0, 0, 0)
        ToggleHolder.Size = UDim2.new(0, 317, 0, 36)
        
        ToggleButton.Name = "ToggleButton"
        ToggleButton.Parent = ToggleHolder
        ToggleButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        ToggleButton.BackgroundTransparency = 1.000
        ToggleButton.BorderColor3 = Color3.fromRGB(25, 25, 25)
        ToggleButton.Size = UDim2.new(0, 317, 0, 36)
        ToggleButton.AutoButtonColor = false
        ToggleButton.Font = Enum.Font.SourceSans
        ToggleButton.Text = ""
        ToggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
        ToggleButton.TextSize = 14.000
        
        ToggleTItle.Name = "ToggleTItle"
        ToggleTItle.Parent = ToggleButton
        ToggleTItle.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        ToggleTItle.BackgroundTransparency = 1.000
        ToggleTItle.BorderColor3 = Color3.fromRGB(25, 25, 525)
        ToggleTItle.Size = UDim2.new(0, 317, 0, 20)
        ToggleTItle.Font = Enum.Font.Gotham
        ToggleTItle.Text = togglename
        ToggleTItle.TextColor3 = Color3.fromRGB(255, 255, 255)
        ToggleTItle.TextSize = 12.000
        ToggleTItle.TextXAlignment = Enum.TextXAlignment.Left
        
        ToggleInfo.Name = "ToggleInfo"
        ToggleInfo.Parent = ToggleButton
        ToggleInfo.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        ToggleInfo.BackgroundTransparency = 1.000
        ToggleInfo.BorderColor3 = Color3.fromRGB(25, 25, 525)
        ToggleInfo.Position = UDim2.new(0, 0, 0.555555582, 0)
        ToggleInfo.Size = UDim2.new(0, 317, 0, 16)
        ToggleInfo.Font = Enum.Font.GothamSemibold
        ToggleInfo.Text = toggleinfo
        ToggleInfo.TextColor3 = Color3.fromRGB(255, 255, 255)
        ToggleInfo.TextSize = 11.000
        ToggleInfo.TextTransparency = 0.500
        ToggleInfo.TextXAlignment = Enum.TextXAlignment.Left
        
        TogglePart.Name = "TogglePart"
        TogglePart.Parent = ToggleButton
        TogglePart.BackgroundColor3 = Color3.fromRGB(114, 118, 125)
        TogglePart.Position = UDim2.new(0.88643533, 0, 0.25, 0)
        TogglePart.Size = UDim2.new(0, 36, 0, 18)
        
        TogglePartCorner.CornerRadius = UDim.new(0, 45)
        TogglePartCorner.Name = "TogglePartCorner"
        TogglePartCorner.Parent = TogglePart
        
        ToggleBall.Name = "ToggleBall"
        ToggleBall.Parent = TogglePart
        ToggleBall.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ToggleBall.Position = UDim2.new(0.101999998, 0, 0.111000001, 0)
        ToggleBall.Size = UDim2.new(0, 16, 0, 14)
        
        ToggleBallCorner.CornerRadius = UDim.new(0, 45)
        ToggleBallCorner.Name = "ToggleBallCorner"
        ToggleBallCorner.Parent = ToggleBall

        ToggleButton.MouseButton1Down:Connect(function()
            ToggleEnabled = not ToggleEnabled
            if ToggleEnabled then
                ToggleBall:TweenPosition(UDim2.new(0.441, 0,0.111, 0),"Out","Linear",0.1)
                wait(0.1)
                TogglePart.BackgroundColor3 = Color3.fromRGB(114, 137, 218)
                ToggleBall:TweenPosition(UDim2.new(0.441, 0,0.111, 0),"Out","Linear",0.1)
                wait(0.099)
                TogglePart.BackgroundColor3 = Color3.fromRGB(114, 137, 218)
            else
                ToggleEnabled = false
                ToggleBall:TweenPosition(UDim2.new(0.102, 0,0.111, 0),"Out","Linear",0.1)
                wait(0.1)
                TogglePart.BackgroundColor3 = Color3.fromRGB(114,118,125)
                ToggleBall:TweenPosition(UDim2.new(0.102, 0,0.111, 0),"Out","Linear",0.1)	
                wait(0.099)
                TogglePart.BackgroundColor3 = Color3.fromRGB(114,118,125)
            end
            pcall(callback,ToggleEnabled)
        end)
        -- Toggle Ended
    end
    function UIElements:addSlider(slidername,minvalue,maxvalue,callback)
        local SliderHolder = Instance.new("Frame")
        local SliderTitle = Instance.new("TextLabel")
        local SliderButton = Instance.new("TextButton")
        local SliderCorner = Instance.new("UICorner")
        local SliderTrail = Instance.new("Frame")
        local SliderTrailCorner = Instance.new("UICorner")
        local SliderNumber = Instance.new("TextLabel")

        local callback = callback or function() end
        local minvalue = minvalue or 0
        local maxvalue = maxvalue or 1 

        SliderHolder.Name = "SliderHolder"
        SliderHolder.Parent = Page
        SliderHolder.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        SliderHolder.BackgroundTransparency = 1.000
        SliderHolder.BorderColor3 = Color3.fromRGB(25, 25, 25)
        SliderHolder.BorderSizePixel = 0
        SliderHolder.Position = UDim2.new(0.0597014911, 0, 9.72671842e-07, 0)
        SliderHolder.Size = UDim2.new(0, 317, 0, 36)
        
        SliderTitle.Name = "SliderTitle"
        SliderTitle.Parent = SliderHolder
        SliderTitle.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        SliderTitle.BackgroundTransparency = 1.000
        SliderTitle.BorderColor3 = Color3.fromRGB(25, 25, 525)
        SliderTitle.Size = UDim2.new(0, 317, 0, 20)
        SliderTitle.Font = Enum.Font.Gotham
        SliderTitle.Text = slidername
        SliderTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
        SliderTitle.TextSize = 12.000
        SliderTitle.TextXAlignment = Enum.TextXAlignment.Left
        
        SliderButton.Name = "SliderButton"
        SliderButton.Parent = SliderHolder
        SliderButton.BackgroundColor3 = Color3.fromRGB(79, 84, 92)
        SliderButton.BorderColor3 = Color3.fromRGB(79, 84, 92)
        SliderButton.BorderSizePixel = 0
        SliderButton.Position = UDim2.new(0, 0, 0.670000017, 0)
        SliderButton.Size = UDim2.new(0, 317, 0, 7)
        SliderButton.AutoButtonColor = false
        SliderButton.Font = Enum.Font.SourceSans
        SliderButton.Text = ""
        SliderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
        SliderButton.TextSize = 14.000
        
        SliderCorner.CornerRadius = UDim.new(0, 15)
        SliderCorner.Name = "SliderCorner"
        SliderCorner.Parent = SliderButton
        
        SliderTrail.Name = "SliderTrail"
        SliderTrail.Parent = SliderButton
        SliderTrail.BackgroundColor3 = Color3.fromRGB(114, 137, 218)
        SliderTrail.BorderColor3 = Color3.fromRGB(114, 137, 218)
        SliderTrail.BorderSizePixel = 0
        SliderTrail.Size = UDim2.new(0, 8, 0, 7)
        
        SliderTrailCorner.CornerRadius = UDim.new(0, 15)
        SliderTrailCorner.Name = "SliderTrailCorner"
        SliderTrailCorner.Parent = SliderTrail
        
        SliderNumber.Name = "SliderNumber"
        SliderNumber.Parent = SliderHolder
        SliderNumber.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        SliderNumber.BackgroundTransparency = 1.000
        SliderNumber.BorderColor3 = Color3.fromRGB(25, 25, 525)
        SliderNumber.Position = UDim2.new(0.911000013, 2, 0, 0)
        SliderNumber.Size = UDim2.new(0, 28, 0, 20)
        SliderNumber.Font = Enum.Font.Gotham
        SliderNumber.Text = minvalue
        SliderNumber.TextColor3 = Color3.fromRGB(255, 255, 255)
        SliderNumber.TextSize = 11.000

        local mouse = game.Players.LocalPlayer:GetMouse()
        local uis = game:GetService("UserInputService")
        local Value;
        
        SliderButton.MouseButton1Down:Connect(function()
            Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 317) * SliderTrail.AbsoluteSize.X) + tonumber(minvalue)) or 0
            pcall(function()
                callback(SliderNumber.Text)
            end)
            SliderTrail.Size = UDim2.new(0, math.clamp(mouse.X - SliderTrail.AbsolutePosition.X, 0, 317), 0,7)
            moveconnection = mouse.Move:Connect(function()
                SliderNumber.Text = Value
                Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 317) * SliderTrail.AbsoluteSize.X) + tonumber(minvalue))
                pcall(function()
                    callback(SliderNumber.Text)
                end)
                SliderTrail.Size = UDim2.new(0, math.clamp(mouse.X - SliderTrail.AbsolutePosition.X, 0, 317), 0,7)
            end)
            releaseconnection = uis.InputEnded:Connect(function(Mouse)
                if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                    Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 317) * SliderTrail.AbsoluteSize.X) + tonumber(minvalue))
                    pcall(function()
                        callback(SliderNumber.Text)
                    end)
                    SliderTrail.Size = UDim2.new(0, math.clamp(mouse.X - SliderTrail.AbsolutePosition.X, 0, 317), 0, 7)
                    moveconnection:Disconnect()
                    releaseconnection:Disconnect()
                end
            end)
        end)
        -- Slider end
    end

    function UIElements:addTextBox(textboxname,textboxinfo,defaulttext,callback)    
        local TextBoxHolder = Instance.new("Frame")
        local TextboxInfo = Instance.new("TextLabel")
        local TextboxTitle = Instance.new("TextLabel")
        local TextBox = Instance.new("TextBox")
        
        local callback = callback or function () end

        TextBoxHolder.Name = "TextBoxHolder"
        TextBoxHolder.Parent = Page
        TextBoxHolder.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        TextBoxHolder.BackgroundTransparency = 1.000
        TextBoxHolder.BorderColor3 = Color3.fromRGB(25, 25, 25)
        TextBoxHolder.BorderSizePixel = 0
        TextBoxHolder.Position = UDim2.new(0.0597014911, 0, 9.72671842e-07, 0)
        TextBoxHolder.Size = UDim2.new(0, 317, 0, 36)
        
        TextboxInfo.Name = "TextboxInfo"
        TextboxInfo.Parent = TextBoxHolder
        TextboxInfo.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        TextboxInfo.BackgroundTransparency = 1.000
        TextboxInfo.BorderColor3 = Color3.fromRGB(25, 25, 525)
        TextboxInfo.Position = UDim2.new(0, 0, 0.555555582, 0)
        TextboxInfo.Size = UDim2.new(0, 317, 0, 16)
        TextboxInfo.Font = Enum.Font.GothamSemibold
        TextboxInfo.Text = textboxinfo
        TextboxInfo.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextboxInfo.TextSize = 11.000
        TextboxInfo.TextTransparency = 0.500
        TextboxInfo.TextXAlignment = Enum.TextXAlignment.Left
        
        TextboxTitle.Name = "TextboxTitle"
        TextboxTitle.Parent = TextBoxHolder
        TextboxTitle.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        TextboxTitle.BackgroundTransparency = 1.000
        TextboxTitle.BorderColor3 = Color3.fromRGB(25, 25, 525)
        TextboxTitle.Size = UDim2.new(0, 317, 0, 20)
        TextboxTitle.Font = Enum.Font.Gotham
        TextboxTitle.Text = textboxname
        TextboxTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextboxTitle.TextSize = 12.000
        TextboxTitle.TextXAlignment = Enum.TextXAlignment.Left
        
        TextBox.Parent = TextBoxHolder
        TextBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        TextBox.BorderColor3 = Color3.fromRGB(20, 20, 20)
        TextBox.Position = UDim2.new(0.753943205, 0, 0.166666672, 0)
        TextBox.Size = UDim2.new(0, 71, 0, 24)
        TextBox.Font = Enum.Font.GothamSemibold
        TextBox.Text = defaulttext
        TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextBox.TextSize = 10.000
        TextBox.TextTransparency = 0.300

        TextBox.Focused:Connect(function()
            TextBox.BorderColor3 = Color3.fromRGB(114, 137, 218)
        end)
        
        TextBox.FocusLost:Connect(function()
            TextBox.BorderColor3 = Color3.fromRGB(20, 20, 20)
            callback(TextBox.Text)
        end)
        -- Textbox Ended
    end

    function UIElements:addDropdown(dropdownname,list,callback)

        local DropdownHolder = Instance.new("Frame")
        local DropdownButton = Instance.new("TextButton")
        local DropdownTitle = Instance.new("TextLabel")
        local DropdownSelected = Instance.new("TextLabel")
        local DropdownFalse = Instance.new("ImageLabel")
        local DropdownTrue = Instance.new("ImageLabel")
        local DropdownContainer = Instance.new("Frame")
        local DropdownContainerCorner = Instance.new("UICorner")
        local DropdownOptionContainer = Instance.new("ScrollingFrame")
        local DropdownOptionLayout = Instance.new("UIListLayout")

        local Option = Instance.new("TextButton")
        local OptionCorner = Instance.new("UICorner")
        
        
        local DropdownEnabled = false
        local callback = callback or function() end
        local list = list or {}
        
        DropdownHolder.Name = "DropdownHolder"
        DropdownHolder.Parent = Page
        DropdownHolder.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        DropdownHolder.BackgroundTransparency = 1.000
        DropdownHolder.BorderColor3 = Color3.fromRGB(25, 25, 25)
        DropdownHolder.BorderSizePixel = 0
        DropdownHolder.Position = UDim2.new(0.0597014911, 0, 9.72671842e-07, 0)
        DropdownHolder.Size = UDim2.new(0, 317, 0, 36)
        
        DropdownButton.Name = "DropdownButton"
        DropdownButton.Parent = DropdownHolder
        DropdownButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        DropdownButton.BackgroundTransparency = 1.000
        DropdownButton.BorderColor3 = Color3.fromRGB(25, 25, 25)
        DropdownButton.Size = UDim2.new(0, 317, 0, 36)
        DropdownButton.AutoButtonColor = false
        DropdownButton.Font = Enum.Font.SourceSans
        DropdownButton.Text = ""
        DropdownButton.TextColor3 = Color3.fromRGB(0, 0, 0)
        DropdownButton.TextSize = 14.000
        
        DropdownTitle.Name = "DropdownTitle"
        DropdownTitle.Parent = DropdownButton
        DropdownTitle.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        DropdownTitle.BackgroundTransparency = 1.000
        DropdownTitle.BorderColor3 = Color3.fromRGB(25, 25, 525)
        DropdownTitle.Size = UDim2.new(0, 317, 0, 20)
        DropdownTitle.Font = Enum.Font.Gotham
        DropdownTitle.Text = dropdownname
        DropdownTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
        DropdownTitle.TextSize = 12.000
        DropdownTitle.TextXAlignment = Enum.TextXAlignment.Left
        
        DropdownSelected.Name = "DropdownSelected"
        DropdownSelected.Parent = DropdownButton
        DropdownSelected.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        DropdownSelected.BackgroundTransparency = 1.000
        DropdownSelected.BorderColor3 = Color3.fromRGB(25, 25, 525)
        DropdownSelected.Position = UDim2.new(0, 0, 0.555555582, 0)
        DropdownSelected.Size = UDim2.new(0, 239, 0, 16)
        DropdownSelected.Font = Enum.Font.GothamSemibold
        DropdownSelected.Text = "Selected : "
        DropdownSelected.TextColor3 = Color3.fromRGB(255, 255, 255)
        DropdownSelected.TextSize = 11.000
        DropdownSelected.TextTransparency = 0.500
        DropdownSelected.TextXAlignment = Enum.TextXAlignment.Left
        
        DropdownFalse.Name = "DropdownFalse"
        DropdownFalse.Parent = DropdownHolder
        DropdownFalse.BackgroundTransparency = 1.000
        DropdownFalse.Position = UDim2.new(0.88643533, 0, 0.194444448, 0)
        DropdownFalse.Rotation = 270.000
        DropdownFalse.Size = UDim2.new(0, 33, 0, 20)
        DropdownFalse.Image = "rbxassetid://4370337241"
        DropdownFalse.ScaleType = Enum.ScaleType.Fit
        DropdownFalse.Visible = true
        
        DropdownTrue.Name = "DropdownTrue"
        DropdownTrue.Parent = DropdownHolder
        DropdownTrue.BackgroundTransparency = 1.000
        DropdownTrue.Position = UDim2.new(0.88643533, 0, 0.194444448, 0)
        DropdownTrue.Rotation = 90.000
        DropdownTrue.Size = UDim2.new(0, 33, 0, 20)
        DropdownTrue.Visible = false
        DropdownTrue.Image = "rbxassetid://4370337241"
        DropdownTrue.ScaleType = Enum.ScaleType.Fit
        
        DropdownContainer.Name = "DropdownContainer"
        DropdownContainer.Parent = DropdownHolder
        DropdownContainer.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        DropdownContainer.BorderColor3 = Color3.fromRGB(25, 25, 25)
        DropdownContainer.Position = UDim2.new(0.00315457419, 0, 1.61111116, 0)
        DropdownContainer.Size = UDim2.new(0, 317, 0, 2)
        DropdownContainer.Visible = false
        
        DropdownOptionContainer.Name = "DropdownOptionContainer"
        DropdownOptionContainer.Parent = DropdownContainer
        DropdownOptionContainer.Active = true
        DropdownOptionContainer.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        DropdownOptionContainer.BorderColor3 = Color3.fromRGB(25, 25, 25)
        DropdownOptionContainer.BorderSizePixel = 0
        DropdownOptionContainer.Position = UDim2.new(0, 0, 0.0943969339, 0)
        DropdownOptionContainer.Size = UDim2.new(0, 317, 0, 4)
        DropdownOptionContainer.ScrollBarThickness = 4
        DropdownOptionContainer.CanvasSize = UDim2.new(0, 0, 35, 0)

        DropdownContainerCorner.CornerRadius = UDim.new(0, 5)
        DropdownContainerCorner.Name = "OptionCorner"
        DropdownContainerCorner.Parent = DropdownContainer
        
        DropdownOptionLayout.Name = "DropdownOptionLayout"
        DropdownOptionLayout.Parent = DropdownOptionContainer
        DropdownOptionLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        DropdownOptionLayout.SortOrder = Enum.SortOrder.LayoutOrder
        DropdownOptionLayout.Padding = UDim.new(0, 5)

        DropdownButton.MouseButton1Down:Connect(function()
            if DropdownEnabled == false then 
                DropdownEnabled = true
                DropdownContainer.Visible = true
                wait(0.1)
                DropdownFalse.Visible = false
                DropdownTrue.Visible = true
                for i,v in pairs(Page:GetChildren()) do
                    if v:IsA("Frame") and v ~= DropdownHolder then 
                        v.Visible = false
                    end
                end
                
                DropdownContainer:TweenSize(UDim2.new(0, 317,0, 166),"Out","Linear",0.4)
                wait(0.4)
                DropdownContainer:TweenSize(UDim2.new(0, 317,0, 166),"Out","Linear",0.4) 
                DropdownOptionContainer.Visible = true
                DropdownOptionContainer:TweenSize(UDim2.new(0, 317,0, 146),"Out","Linear",0.4)
                wait(0.4)
                DropdownOptionContainer:TweenSize(UDim2.new(0, 317,0, 146),"Out","Linear",0.4)
                
            else
                DropdownEnabled = false
                DropdownFalse.Visible = true 
                DropdownTrue.Visible = false
                DropdownOptionContainer:TweenSize(UDim2.new(0, 317,0, 4),"Out","Linear",0.3)
                wait(0.4)
                DropdownOptionContainer:TweenSize(UDim2.new(0, 317,0, 4),"Out","Linear",0.2)
                DropdownOptionContainer.Visible = false
                DropdownContainer:TweenSize(UDim2.new(0, 317,0, 2),"Out","Linear",0.2)
                wait(0.3)
                DropdownContainer.Visible = false
                for i,v in pairs(Page:GetChildren()) do
                    if v:IsA("Frame") and v ~= DropdownHolder then 
                        v.Visible = true
                    end
                end
                
            end
        end)

        for i,v in pairs(list) do 
            local Option = Instance.new("TextButton")
            local OptionCorner = Instance.new("UICorner")

            Option.Name = "Option"
            Option.Parent = DropdownOptionContainer
            Option.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
            Option.BorderColor3 = Color3.fromRGB(26, 26, 26)
            Option.BorderSizePixel = 0
            Option.Position = UDim2.new(0.0126182968, 0, 2.31193781e-07, 0)
            Option.Size = UDim2.new(0, 309, 0, 32)
            Option.AutoButtonColor = false
            Option.Font = Enum.Font.GothamSemibold
            Option.Text = v
            Option.TextColor3 = Color3.fromRGB(255, 255, 255)
            Option.TextSize = 12.000
            
            OptionCorner.CornerRadius = UDim.new(0, 5)
            OptionCorner.Name = "OptionCorner"
            OptionCorner.Parent = Option

            Option.MouseButton1Down:Connect(function()
                DropdownEnabled = false
                DropdownFalse.Visible = true 
                DropdownTrue.Visible = false
                DropdownOptionContainer:TweenSize(UDim2.new(0, 317,0, 4),"Out","Linear",0.2)
                wait(0.2)
                DropdownOptionContainer:TweenSize(UDim2.new(0, 317,0, 4),"Out","Linear",0.2)
                DropdownOptionContainer.Visible = false
                DropdownContainer:TweenSize(UDim2.new(0, 317,0, 2),"Out","Linear",0.1)
                wait(0.1)
                DropdownContainer.Visible = false
                for i,v in pairs(Page:GetChildren()) do
                    if v:IsA("Frame") and v ~= DropdownHolder then 
                        v.Visible = true
                    end
                end
                DropdownSelected.Text = "Selected : "..v
                callback(v)
            end)

        end
        -- Dropdown Ended
    end

    function UIElements:addLabel(labelname,labelinfo)
        local LabelHolder = Instance.new("Frame")
        local LabelInfo = Instance.new("TextLabel")
        local LabelTitle = Instance.new("TextLabel")
        
        LabelHolder.Name = "LabelHolder"
        LabelHolder.Parent = Page
        LabelHolder.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        LabelHolder.BackgroundTransparency = 1.000
        LabelHolder.BorderColor3 = Color3.fromRGB(25, 25, 25)
        LabelHolder.BorderSizePixel = 0
        LabelHolder.Position = UDim2.new(0.0597014911, 0, 9.72671842e-07, 0)
        LabelHolder.Size = UDim2.new(0, 317, 0, 36)
        
        LabelInfo.Name = "LabelInfo"
        LabelInfo.Parent = LabelHolder
        LabelInfo.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        LabelInfo.BackgroundTransparency = 1.000
        LabelInfo.BorderColor3 = Color3.fromRGB(25, 25, 525)
        LabelInfo.Position = UDim2.new(0, 0, 0.555555582, 0)
        LabelInfo.Size = UDim2.new(0, 317, 0, 16)
        LabelInfo.Font = Enum.Font.GothamSemibold
        LabelInfo.Text = labelinfo or ""
        LabelInfo.TextColor3 = Color3.fromRGB(255, 255, 255)
        LabelInfo.TextSize = 11.000
        LabelInfo.TextTransparency = 0.500
        LabelInfo.TextXAlignment = Enum.TextXAlignment.Center
        
        LabelTitle.Name = "LabelTitle"
        LabelTitle.Parent = LabelHolder
        LabelTitle.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        LabelTitle.BackgroundTransparency = 1.000
        LabelTitle.BorderColor3 = Color3.fromRGB(25, 25, 525)
        LabelTitle.Size = UDim2.new(0, 317, 0, 20)
        LabelTitle.Font = Enum.Font.Gotham
        LabelTitle.Text = labelname
        LabelTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
        LabelTitle.TextSize = 12.000
        LabelTitle.TextXAlignment = Enum.TextXAlignment.Center
    end

    function UIElements:noti(title,text,duration)
        -- Making own soon
        game.StarterGui:SetCore("SendNotification",{
            Title = title or "";
            Text = text or "";
            Duration = duration or 5;
        })
        
    end

    return UIElements
end
return Library
