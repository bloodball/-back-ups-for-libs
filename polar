do
	local i = game:GetService("CoreGui"):FindFirstChild("ScreenGui")
	if i then i:Destroy() end
end
local libraryv3={
windowcount = 0
}
local dragger = {}; 
local resizer = {};

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

do
	local mouse = game:GetService("Players").LocalPlayer:GetMouse();
	local inputService = game:GetService('UserInputService');
	local heartbeat = game:GetService("RunService").Heartbeat;
	
	function dragger.new(frame)
	    local s, event = pcall(function()
	    	return frame.MouseEnter
	    end)

	    if s then
	    	frame.Active = true;

	    	event:connect(function()
	    		local input = frame.InputBegan:connect(function(key)
	    			if key.UserInputType == Enum.UserInputType.MouseButton1 then
	    				local objectPosition = Vector2.new(mouse.X - frame.AbsolutePosition.X, mouse.Y - frame.AbsolutePosition.Y);
	    				while heartbeat:wait() and inputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
	    					frame:TweenPosition(UDim2.new(0, mouse.X - objectPosition.X + (frame.Size.X.Offset * frame.AnchorPoint.X), 0, mouse.Y - objectPosition.Y + (frame.Size.Y.Offset * frame.AnchorPoint.Y)), 'Out', 'Quad', 0.1, true);
	    				end
	    			end
	    		end)

	    		local leave;
	    		leave = frame.MouseLeave:connect(function()
	    			input:disconnect();
	    			leave:disconnect();
	    		end)
	    	end)
	    end
	end
	
	function resizer.new(p, s)
		p:GetPropertyChangedSignal('AbsoluteSize'):connect(function()
			s.Size = UDim2.new(s.Size.X.Scale, s.Size.X.Offset, s.Size.Y.Scale, p.AbsoluteSize.Y);
		end)
	end
end
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
        Underline = Color3.fromRGB(255, 92, 92);
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
        RippleHolder.Size = UDim2.new(1, 0,1, 0)

        RippleEffect.Name = "RippleEffect"
        RippleEffect.Parent = RippleHolder
        RippleEffect.BackgroundTransparency = 1
        RippleEffect.BorderSizePixel = 0
        RippleEffect.Image = "rbxassetid://2708891598"
        RippleEffect.ImageColor3 = Color3.fromRGB(0,0,0)
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
function RippleEffect2(button)
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
        RippleHolder.Size = UDim2.new(1, 0, 1, 0)

        RippleEffect.Name = "RippleEffect"
        RippleEffect.Parent = RippleHolder
        RippleEffect.BackgroundTransparency = 1
        RippleEffect.BorderSizePixel = 0
        RippleEffect.Image = "rbxassetid://2708891598"
        RippleEffect.ImageColor3 = Color3.fromRGB(0,0,0)
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
local mouse = game:GetService("Players").LocalPlayer:GetMouse();
function libraryv3:CreateWindow(name)
    self.windowcount = self.windowcount + 1;
    local ScreenGui = Instance.new("ScreenGui")
    local main = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")
    local Frame = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")
    local TextLabel_2 = Instance.new("TextLabel")

     
    ScreenGui.Parent = game.CoreGui
    
    main.Name = "main"
    main.Parent = ScreenGui
    main.BackgroundColor3 = Color3.new(0.0392157, 0.0392157, 0.0392157)
    main.BorderColor3 = Color3.new(0.988235, 0.729412, 0.0117647)
    main.BorderSizePixel = 0
    main.Position = UDim2.new(0, (15 + ((200 * self.windowcount) - 200)), 0, 15)
    main.Size = UDim2.new(0, 190, 0, 34)
    game:GetService('UserInputService').InputBegan:connect(function(key, gpe)
        if key.KeyCode == Enum.KeyCode.RightShift then
            if main.Visible == true then main.Visible = false elseif main.Visible == false then main.Visible = true end

        end
    end)
  

    TextLabel.Parent = main
    TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
    TextLabel.BackgroundTransparency = 1
    TextLabel.Size = UDim2.new(0, 190, 0, 34)
    TextLabel.Font = Enum.Font.Code
    TextLabel.Text = name
    TextLabel.TextColor3 = Color3.new(1, 1, 1)
    TextLabel.TextSize = 18
    
    Frame.Parent = main
    Frame.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
    Frame.BorderColor3 = Color3.new(0.988235, 0.729412, 0.0117647)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0, 0, 1, 0)
    Frame.Size = UDim2.new(0, 190, 0, 0)
    dragger.new(main)
    function Resize()
        local y = 0;
        for i, v in next, Frame:GetChildren() do
            if (not v:IsA('UIListLayout')) then
                y = y + v.AbsoluteSize.Y;
            end
        end 
        Frame.Size = UDim2.new(1, 0, 0, y+20)
    end

    UIListLayout.Parent = Frame
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    --UIListLayout.Padding = UDim.new(0, 2)
    local wowlib = {}
    function wowlib:Section(name)
        local TextLabel_2 = Instance.new("TextLabel")
        local Frame_2 = Instance.new("Frame")
    TextLabel_2.Parent = Frame
    TextLabel_2.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
    TextLabel_2.BorderSizePixel = 0
    TextLabel_2.Size = UDim2.new(0, 190, 0, 35)
    TextLabel_2.Font = Enum.Font.GothamBold
    TextLabel_2.Text = name
    TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
    TextLabel_2.TextSize = 18


    Resize()
    end
    function wowlib:Button(name, action)
        local TextButton = Instance.new("TextButton")
        local TextButton_Roundify_2px = Instance.new("ImageLabel")
        local TextLabel_3 = Instance.new("TextLabel")
        local Frame_32 = Instance.new("Frame")
        local TextBox = Instance.new("TextBox")
        Frame_32.Parent = Frame
        Frame_32.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
        Frame_32.BorderSizePixel = 0
        Frame_32.Position = UDim2.new(0, 0, 1, 0)
        Frame_32.Size = UDim2.new(0, 179, 0, 4)
        TextButton.Parent = Frame
        TextButton.BackgroundColor3 = Color3.new(0.192157, 0.709804, 0.329412)
        TextButton.BackgroundTransparency = 1
        TextButton.BorderColor3 = Color3.new(0.192157, 0.709804, 0.329412)
        TextButton.BorderSizePixel = 0
        TextButton.Position = UDim2.new(0.0578947365, 0, 0.379999995, 0)
        TextButton.Size = UDim2.new(0, 179, 0, 26)
        TextButton.Font = Enum.Font.GothamSemibold
        TextButton.Text = ""
        TextButton.TextColor3 = Color3.new(0, 0, 0)
        TextButton.TextSize = 18
        TextButton.MouseButton1Down:connect(function()
            RippleEffect(TextButton)
        action()
        end)
      

        TextButton_Roundify_2px.Name = "TextButton_Roundify_2px"
        TextButton_Roundify_2px.Parent = TextButton
        TextButton_Roundify_2px.Active = true
        TextButton_Roundify_2px.AnchorPoint = Vector2.new(0.5, 0.5)
        TextButton_Roundify_2px.BackgroundColor3 = Color3.new(1, 1, 1)
        TextButton_Roundify_2px.BackgroundTransparency = 1
        TextButton_Roundify_2px.Position = UDim2.new(0.5, 0, 0.5, 0)
        TextButton_Roundify_2px.Selectable = true
        TextButton_Roundify_2px.Size = UDim2.new(1, 0, 1, 0)
        TextButton_Roundify_2px.Image = "rbxassetid://3570695787"
        TextButton_Roundify_2px.ImageColor3 = Color3.new(0.192157, 0.709804, 0.329412)
        TextButton_Roundify_2px.ScaleType = Enum.ScaleType.Slice
        TextButton_Roundify_2px.SliceCenter = Rect.new(100, 100, 100, 100)
        TextButton_Roundify_2px.SliceScale = 0.03
        TextLabel_3.Parent = TextButton_Roundify_2px
        TextLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
        TextLabel_3.BackgroundTransparency = 1
        TextLabel_3.Size = UDim2.new(0, 179, 0, 26)
        TextLabel_3.Font = Enum.Font.GothamSemibold
        TextLabel_3.Text = name
        TextLabel_3.TextColor3 = Color3.new(0, 0, 0)
        TextLabel_3.TextSize = 18
    
        Resize()
    end
    function wowlib:Box(name, callback)
        local Frame_3 = Instance.new("Frame")
        local TextBox = Instance.new("TextBox")
        Frame_3.Parent = Frame
        Frame_3.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
        Frame_3.BorderSizePixel = 0
        Frame_3.Position = UDim2.new(0, 0, 1, 0)
        Frame_3.Size = UDim2.new(0, 179, 0, 4)
        TextBox.Parent = Frame
        TextBox.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
        TextBox.BorderSizePixel = 0
        TextBox.Position = UDim2.new(0, 0, 1.15384614, 0)
        TextBox.Size = UDim2.new(0, 179, 0, 26)
        TextBox.Font = Enum.Font.GothamSemibold
        TextBox.PlaceholderText = name
        TextBox.Text = ""
        TextBox.TextColor3 = Color3.new(1, 1, 1)
        TextBox.TextSize = 14
        TextBox.MouseEnter:connect(function()
        RippleEffect(TextBox)
        wait(0.100)
        TextBox.PlaceholderText = ""
        end)
        TextBox.MouseLeave:connect(function()
           wait(0.100)
            TextBox.PlaceholderText = name
            end)
        TextBox.FocusLost:connect(function(...)
			callback(TextBox, ...)
        end)
        Resize()
    end
    function wowlib:Toggle(name, action)
        local Frame_4 = Instance.new("Frame")
        local Frame_5 = Instance.new("ImageLabel")
        local TextLabel_4 = Instance.new("TextLabel")
        local TextButton_2 = Instance.new("TextButton")
local TextButton_Roundify_2px_2 = Instance.new("ImageLabel")
local Frame_33 = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
Frame_33.Parent = Frame
Frame_33.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Frame_33.BorderSizePixel = 0
Frame_33.Position = UDim2.new(0, 0, 1, 0)
Frame_33.Size = UDim2.new(0, 179, 0, 4)
        Frame_4.Parent = Frame
Frame_4.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Frame_4.BorderSizePixel = 0
Frame_4.Position = UDim2.new(-0.0631578937, 0, 0.48756218, 0)
Frame_4.Size = UDim2.new(0, 179, 0, 30)

Frame_5.Name = "Frame"
Frame_5.Parent = Frame_4
Frame_5.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_5.BackgroundTransparency = 1
Frame_5.BorderSizePixel = 0
Frame_5.Position = UDim2.new(0.843575418, 0, 0, 0)
Frame_5.Size = UDim2.new(0, 28, 0, 27)
Frame_5.Image = "rbxassetid://3570695787"
Frame_5.ImageColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Frame_5.ScaleType = Enum.ScaleType.Slice
Frame_5.SliceCenter = Rect.new(100, 100, 100, 100)
local Enabled = false
TextButton_2.Parent = Frame_5
TextButton_2.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
TextButton_2.BackgroundTransparency = 1
TextButton_2.BorderSizePixel = 0
TextButton_2.Size = UDim2.new(0, 28, 0, 27)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = ""
TextButton_2.TextColor3 = Color3.new(0, 0, 0)
TextButton_2.TextSize = 14


TextButton_Roundify_2px_2.Name = "TextButton_Roundify_2px"
TextButton_Roundify_2px_2.Parent = TextButton_2
TextButton_Roundify_2px_2.Active = true
TextButton_Roundify_2px_2.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_Roundify_2px_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_Roundify_2px_2.BackgroundTransparency = 1
TextButton_Roundify_2px_2.Position = UDim2.new(0.5, 0, 0.5, 0)
TextButton_Roundify_2px_2.Selectable = true
TextButton_Roundify_2px_2.Size = UDim2.new(1, 0, 1, 0)
TextButton_Roundify_2px_2.Image = "rbxassetid://3570695787"
TextButton_Roundify_2px_2.ImageColor3 = Color3.new(0.117647, 0.117647, 0.117647)
TextButton_Roundify_2px_2.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_2px_2.SliceCenter = Rect.new(100, 100, 100, 100)
TextButton_Roundify_2px_2.SliceScale = 0.03
TextLabel_4.Parent = Frame_4
TextLabel_4.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_4.BackgroundTransparency = 1
TextLabel_4.Size = UDim2.new(0, 145, 0, 27)
TextLabel_4.Font = Enum.Font.GothamSemibold
TextLabel_4.Text = " "..name
TextLabel_4.TextColor3 = Color3.new(1, 1, 1)
TextLabel_4.TextSize = 19
TextLabel_4.TextWrapped = true
TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left
TextButton_2.MouseButton1Down:connect(function()
    Enabled = not Enabled
    
    if Enabled then
        TextButton_Roundify_2px_2.ImageColor3 = Color3.fromRGB(49, 181, 84)
    elseif not Enabled then
        TextButton_Roundify_2px_2.ImageColor3 = Color3.fromRGB(30,30,30)
    end
    RippleEffect2(TextButton_Roundify_2px_2)
    action(Enabled)
 
end)
Resize()
    end
    return wowlib;
end
return libraryv3;
