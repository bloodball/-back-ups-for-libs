-- credits to wally for the resize function & math for windows <3
-- if you want to use this, credit me & wally :-)

-- if you don't credit us, i will personally come and find you

if game.CoreGui:FindFirstChild("gradient_lib") then
    game.CoreGui.gradient_lib:Destroy()
end

local library = {windows = 0}
local ScreenGui = Instance.new("ScreenGui")

function library:Window(name)
    local window = {toggled = false, flags = {}}
    local Frame = Instance.new("ImageLabel")
    local UIGradient = Instance.new("UIGradient")
    local Title = Instance.new("TextLabel")
    local Toggle = Instance.new("ImageButton")
    local Container = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")
    library.windows = library.windows + 1
    ScreenGui.Name = "gradient_lib"
    ScreenGui.Parent = game:GetService("CoreGui")

    Frame.Name = "Frame"
    Frame.Parent = ScreenGui
    Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame.BackgroundTransparency = 1.000
    Frame.Position = UDim2.new(0, (15 + ((190 * library.windows) - 190)), 0, 15)
    Frame.Size = UDim2.new(0, 180, 0, 227)
    Frame.Image = "rbxassetid://3570695787"
    Frame.ScaleType = Enum.ScaleType.Slice
    Frame.SliceCenter = Rect.new(100, 100, 100, 100)
    Frame.SliceScale = 0.06
    Frame.Active = true
    Frame.Draggable = true

    UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(29, 29, 29)), ColorSequenceKeypoint.new(1, Color3.fromRGB(66, 66, 66))}
    UIGradient.Rotation = 45
    UIGradient.Parent = Frame

    Title.Name = "Title"
    Title.Parent = Frame
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.Size = UDim2.new(0, 180, 0, 30)
    Title.Font = Enum.Font.Gotham
    Title.Text = " " .. name
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 20.000
    Title.TextWrapped = true
    Title.TextXAlignment = Enum.TextXAlignment.Left

    Toggle.Name = "Toggle"
    Toggle.Parent = Frame
    Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Toggle.BackgroundTransparency = 1.000
    Toggle.Position = UDim2.new(0, 152, 0, 2)
    Toggle.Size = UDim2.new(0, 22, 0, 22)
    Toggle.Image = "http://www.roblox.com/asset/?id=4845446011"
    local size = nil
    Toggle.MouseButton1Click:Connect(function()
        if not size then size = Frame.AbsoluteSize end
        if not window.toggled then Frame.ClipsDescendants = true end
        window.toggled = not window.toggled
        game:GetService("TweenService"):Create(Toggle, TweenInfo.new(0.35), {Rotation = window.toggled and 90 or 0}):Play()
        Frame:TweenSize(window.toggled and UDim2.new(0, 180, 0, 30) or UDim2.new(0, size.X, 0, size.Y), "Out", "Sine", .35, true)
        wait(.35)
        if window.toggled then Container.ClipsDescendants = false end
    end)

    Container.Name = "Container"
    Container.Parent = Frame
    Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Container.BackgroundTransparency = 1.000
    Container.Position = UDim2.new(0, 0, 0, 30)
    Container.Size = UDim2.new(0, 180, 0, 197)
    Container.ZIndex = 2

    UIListLayout.Parent = Container
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

    local function reSize()
        local y = 34
        for i, v in pairs(Container:GetChildren()) do
            if v:IsA("Frame") or v:IsA("TextButton") or v:IsA("TextLabel") or v:IsA("TextBox") then
                y = y + v.AbsoluteSize.Y
            end
        end
        Frame.Size = UDim2.new(0, 180, 0, y)
        Container.Size = UDim2.new(0, 180, 0, y)
    end

    function window:Toggle(name, callback)
        local t = (typeof(callback) == "string" and "flag") or (typeof(callback) == "function" and "func")
        local e = false

        local Toggle = Instance.new("Frame")
        local Title = Instance.new("TextLabel")
        local Main = Instance.new("ImageLabel")
        local Middle = Instance.new("ImageLabel")
        local TextButton = Instance.new("TextButton")
        local Checkmark = Instance.new("ImageLabel")

        Toggle.Name = "Toggle"
        Toggle.Parent = Container
        Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Toggle.BackgroundTransparency = 1.000
        Toggle.Size = UDim2.new(0, 180, 0, 30)

        Title.Name = "Title"
        Title.Parent = Toggle
        Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Title.BackgroundTransparency = 1.000
        Title.Size = UDim2.new(0, 180, 0, 30)
        Title.Font = Enum.Font.Gotham
        Title.Text = "  " .. name
        Title.TextColor3 = Color3.fromRGB(255, 255, 255)
        Title.TextSize = 16.000
        Title.TextXAlignment = Enum.TextXAlignment.Left

        Main.Name = "Main"
        Main.Parent = Toggle
        Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Main.BackgroundTransparency = 1.000
        Main.Position = UDim2.new(0.838888884, 0, 0.099999994, 0)
        Main.Size = UDim2.new(0, 23, 0, 23)
        Main.Image = "rbxassetid://3570695787"
        Main.ScaleType = Enum.ScaleType.Slice
        Main.SliceCenter = Rect.new(100, 100, 100, 100)
        Main.SliceScale = 0.02

        Middle.Name = "Middle"
        Middle.Parent = Main
        Middle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Middle.BackgroundTransparency = 1.000
        Middle.Position = UDim2.new(0.130434781, 0, 0.130434781, 0)
        Middle.Size = UDim2.new(0, 17, 0, 17)
        Middle.ZIndex = 2
        Middle.Image = "rbxassetid://3570695787"
        Middle.ImageColor3 = Color3.fromRGB(39, 39, 39)
        Middle.ScaleType = Enum.ScaleType.Slice
        Middle.SliceCenter = Rect.new(100, 100, 100, 100)
        Middle.SliceScale = 0.02

        TextButton.Parent = Middle
        TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.BackgroundTransparency = 1.000
        TextButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
        TextButton.Size = UDim2.new(1, 0, 1, 0)
        TextButton.Font = Enum.Font.SourceSans
        TextButton.Text = ""
        TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton.TextSize = 14.000

        Checkmark.Name = "Checkmark"
        Checkmark.Parent = Main
        Checkmark.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Checkmark.BackgroundTransparency = 1.000
        Checkmark.Position = UDim2.new(0.173913047, 0, 0.130434781, 0)
        Checkmark.Size = UDim2.new(0, 16, 0, 16)
        Checkmark.Image = "http://www.roblox.com/asset/?id=5039745830"

        TextButton.MouseButton1Click:Connect(function()
            e = not e
            if t == "flag" then
                window.flags[name] = e
            elseif t == "func" then
                callback(e)
            end
            
            game:GetService("TweenService"):Create(Middle, TweenInfo.new(0.35), {ImageTransparency = e and 1 or 0}):Play()
        end)
        reSize()
    end
    function window:Button(name, callback)
        local Button = Instance.new("TextButton")

        Button.Name = "Button"
        Button.Parent = Container
        Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Button.BackgroundTransparency = 1.000
        Button.Size = UDim2.new(0, 180, 0, 28)
        Button.Font = Enum.Font.Gotham
        Button.Text = "  " .. name
        Button.TextColor3 = Color3.fromRGB(255, 255, 255)
        Button.TextSize = 16.000
        Button.TextXAlignment = Enum.TextXAlignment.Left

        Button.MouseButton1Click:Connect(function()
            callback()
        end)
        reSize()
    end
    function window:Dropdown(name, objects, callback)
        local toggled = false
        local Dropdown = Instance.new("Frame")
        local Title = Instance.new("TextLabel")
        local Toggle = Instance.new("ImageButton")
        local Main = Instance.new("Frame")
        local UIListLayout = Instance.new("UIListLayout")
        local y = 2
        for i, v in pairs(objects) do y = y + 28 end

        --Properties:

        Dropdown.Name = "Dropdown"
        Dropdown.Parent = Container
        Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Dropdown.BackgroundTransparency = 1.000
        Dropdown.Size = UDim2.new(0, 180, 0, 30)

        Title.Name = "Title"
        Title.Parent = Dropdown
        Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Title.BackgroundTransparency = 1.000
        Title.Size = UDim2.new(0, 180, 0, 30)
        Title.Font = Enum.Font.Gotham
        Title.Text = "  " .. name
        Title.TextColor3 = Color3.fromRGB(255, 255, 255)
        Title.TextSize = 16.000
        Title.TextXAlignment = Enum.TextXAlignment.Left

        Toggle.Name = "Toggle"
        Toggle.Parent = Dropdown
        Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Toggle.BackgroundTransparency = 1.000
        Toggle.Position = UDim2.new(0, 152, 0, 5)
        Toggle.Size = UDim2.new(0, 22, 0, 22)
        Toggle.Image = "http://www.roblox.com/asset/?id=4845446011"

        Main.Name = "Main"
        Main.Parent = Dropdown
        Main.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
        Main.BorderSizePixel = 0
        Main.ClipsDescendants = true
        Main.Position = UDim2.new(0, 0, 0, 28)
        Main.Size = UDim2.new(0, 180, 0, 0)
        Main.ZIndex = 2

        UIListLayout.Parent = Main
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        
        Toggle.MouseButton1Click:Connect(function()
            toggled = not toggled
	        game:GetService("TweenService"):Create(Toggle, TweenInfo.new(0.35), {Rotation = toggled and 90 or 0}):Play()
	        Main:TweenSize(toggled and UDim2.new(0, 180, 0, y) or UDim2.new(0, 180, 0, 0), "Out", "Sine", 0.35, true)
            if toggled then
                Frame.ClipsDescendants = false
            else
                wait(.35)
                Frame.ClipsDescendants = true
            end
        end)

        for i, v in pairs(objects) do
            local TextButton = Instance.new("TextButton")
            TextButton.Parent = Main
            TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.BackgroundTransparency = 1.000
            TextButton.Size = UDim2.new(0, 180, 0, 28)
            TextButton.ZIndex = 2
            TextButton.Font = Enum.Font.Gotham
            TextButton.Text = "    " .. tostring(v)
            TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.TextSize = 16.000
            TextButton.TextXAlignment = Enum.TextXAlignment.Left

            TextButton.MouseButton1Click:Connect(function()
                callback(tostring(v))
            end)
        end
        reSize()
    end
    function window:Box(name, default, callback)
	local name = name or "Box"
	local callback = typeof(default) == "function" and default or callback
	local default = (callback and typeof(default) ~= "function") and default or "value"

        local Box = Instance.new("Frame")
        local Title = Instance.new("TextLabel")
        local Main = Instance.new("ImageLabel")
        local TextBox = Instance.new("TextBox")

        --Properties:

        Box.Name = "Box"
        Box.Parent = Container
        Box.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Box.BackgroundTransparency = 1.000
        Box.Size = UDim2.new(0, 180, 0, 30)

        Title.Name = "Title"
        Title.Parent = Box
        Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Title.BackgroundTransparency = 1.000
        Title.Size = UDim2.new(0, 180, 0, 30)
        Title.Font = Enum.Font.Gotham
        Title.Text = "  " .. name
        Title.TextColor3 = Color3.fromRGB(255, 255, 255)
        Title.TextSize = 16.000
        Title.TextXAlignment = Enum.TextXAlignment.Left

        Main.Name = "Main"
        Main.Parent = Box
        Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Main.BackgroundTransparency = 1.000
        Main.ClipsDescendants = true
        Main.Position = UDim2.new(0.538888872, 0, 0.13333334, 0)
        Main.Size = UDim2.new(0, 77, 0, 22)
        Main.Image = "rbxassetid://3570695787"
        Main.ImageColor3 = Color3.fromRGB(39, 39, 39)
        Main.ScaleType = Enum.ScaleType.Slice
        Main.SliceCenter = Rect.new(100, 100, 100, 100)
        Main.SliceScale = 0.02

        TextBox.Parent = Main
        TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextBox.BackgroundTransparency = 1.000
        TextBox.Position = UDim2.new(0.0909090936, 0, 0, 0)
        TextBox.Size = UDim2.new(0, 70, 0, 22)
        TextBox.Font = Enum.Font.Gotham
        TextBox.PlaceholderColor3 = Color3.fromRGB(225, 225, 225)
        TextBox.PlaceholderText = default
        TextBox.Text = ""
        TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextBox.TextSize = 14.000
        TextBox.TextXAlignment = Enum.TextXAlignment.Left

        local focused = false

        TextBox.Focused:connect(function()
            focused = true
        end)

        TextBox.FocusLost:connect(function()
            if focused then
                focused = false
                callback(tostring(TextBox.Text))
		TextBox.PlaceholderText.Text = TextBox.Text
                TextBox.Text = ""
            end
        end)

        reSize()
    end
    reSize()
    return window
end
return library
