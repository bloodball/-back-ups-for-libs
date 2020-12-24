for _,v in pairs(game:GetService('CoreGui'):GetDescendants()) do
	if v:IsA('IntValue') and v.Name == '0v1' then
		v.Parent:Destroy()
	end
end

local Heartbeat = game:GetService("RunService").Heartbeat;
local UIS = game:GetService("UserInputService");
local TweenService = game:GetService("TweenService");


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


local settings = {
	main_theme = {

	},
	secondary_theme = {
		
	}
}

local library = {}
library.WindowCount = 0
local UIS = game:GetService("UserInputService");
local Heartbeat = game:GetService("RunService").Heartbeat;

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
	end
	library.gui = Instance.new("ScreenGui")
	library.gui.Parent = game:WaitForChild('CoreGui')
	library.gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	library.gui.Name = game:GetService("HttpService"):GenerateGUID(false):lower():sub(1, 10);
	library.toggled = true

	game:GetService('UserInputService').InputBegan:connect(function(key, gpe)
		--if (not gpe) then
			if key.KeyCode == Enum.KeyCode.RightShift and library.gui then
				library.toggled = not library.toggled;
				library.gui.Enabled = library.toggled;
				shared.Cursor.Visible = library.toggled;
			end
		--end
	end)

function library:CreateWindow(name, size)
	size = size or 0
	library.flags = {};
    
    local main = Instance.new("ImageLabel")
    local bar = Instance.new("ImageLabel")
	local title = Instance.new("TextLabel")
	local UIListLayout = Instance.new("UIListLayout")

    
    
    main.Name = "main"
    main.Parent = library.gui
    main.BackgroundColor3 = Color3.new(1, 1, 1)
    main.BackgroundTransparency = 1
    main.BorderSizePixel = 0
    main.Position = UDim2.new(0, 30 + (190 * self.WindowCount), 0, (main.Size.Y.Offset / 2) + 33)
    main.Size = UDim2.new(0, 180, 0, 333)
    main.Image = "rbxassetid://4550094458"
    main.ImageColor3 = Color3.new(0.137255, 0.137255, 0.137255)
    main.ScaleType = Enum.ScaleType.Slice
    main.SliceCenter = Rect.new(4, 4, 296, 296)
    
    bar.Name = "bar"
    bar.Parent = main
    bar.BackgroundColor3 = Color3.new(1, 0.27451, 0.286275)
    bar.BackgroundTransparency = 1
    bar.BorderSizePixel = 0
    bar.Position = UDim2.new(0, 0, 0, -2)
    bar.Size = UDim2.new(0, 180,0, 32)
    bar.Image = "rbxassetid://4550094255"
    bar.ImageColor3 = Color3.new(1, 0.27451, 0.286275)
    bar.ScaleType = Enum.ScaleType.Slice
    bar.SliceCenter = Rect.new(4, 4, 296, 296)
	
	dragger.new(main, bar)

    title.Name = "title"
    title.Parent = bar
    title.BackgroundColor3 = Color3.new(1, 1, 1)
    title.BackgroundTransparency = 1
    title.BorderSizePixel = 0
    title.Size = UDim2.new(1, 0, 1, 0)
    title.Font = Enum.Font.GothamSemibold
    title.Text = name
    title.TextColor3 = Color3.new(1, 1, 1)
	title.TextSize = 16

	UIListLayout.Parent = main
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.HorizontalAlignment = "Center";
    UIListLayout.Padding = UDim.new(0, 5);
	
	local mainLib = {}

	mainLib.Count = self.WindowCount
	mainLib.Container = main

	self.WindowCount = self.WindowCount + 1

	function mainLib:Resize()
		local count = 0 
		for i,v in pairs(main:GetChildren()) do
			if not v:IsA('UIListLayout') then
				count = count + 1
			end
		end

		local Size = UDim2.new(0, 180, 0, (count * 45 + size) - 10)
		main.Size = Size
	end

	function mainLib:btnRipple(btn)
		spawn(function()
			local mouse = game:GetService("Players").LocalPlayer:GetMouse();
			local rippleEffect = Instance.new("ImageLabel", btn);
			local rippleEffectInner = Instance.new("ImageLabel", rippleEffect);
			rippleEffect.Name = "rippleEffect";
			rippleEffect.BackgroundTransparency = 1;
			rippleEffect.BorderSizePixel = 0;
			rippleEffect.Image = "rbxassetid://2708891598"
			rippleEffect.ImageColor3 = Color3.fromRGB(244, 244, 244);
			rippleEffect.ImageTransparency = 0.7;
			rippleEffect.ScaleType = Enum.ScaleType.Fit;
			rippleEffectInner.Name = "rippleEffect";
			rippleEffectInner.AnchorPoint = Vector2.new(0.5, 0.5);
			rippleEffectInner.BackgroundTransparency = 1;
			rippleEffectInner.BorderSizePixel = 0;
			rippleEffectInner.Position = UDim2.new(0.5, 0, 0.5, 0);
			rippleEffectInner.Size = UDim2.new(1, 0, 1, 0);
			rippleEffectInner.Image = "rbxassetid://2708891598"
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

	function mainLib:Toggle(name, callback)
		local callback = callback or function() end
		local checkboxsection = Instance.new("ImageLabel")
		local checkboxtitle = Instance.new("TextLabel")
		local checkbox = Instance.new("ImageButton")
		local fill = Instance.new("ImageLabel")
		local check = Instance.new("ImageLabel")

		checkboxsection.Name = "checkboxsection"
		checkboxsection.Parent = main
		checkboxsection.BackgroundColor3 = Color3.new(1, 1, 1)
		checkboxsection.BackgroundTransparency = 1
		checkboxsection.BorderSizePixel = 0
		checkboxsection.Position = UDim2.new(0.5, -85, 0, 98)
		checkboxsection.Size = UDim2.new(0, 170,0, 35)
		checkboxsection.Image = "http://www.roblox.com/asset/?id=4550094458"
		checkboxsection.ImageColor3 = Color3.fromRGB(40, 40, 40)
		checkboxsection.ScaleType = Enum.ScaleType.Slice
		checkboxsection.SliceCenter = Rect.new(4, 4, 296, 296)

		checkboxtitle.Name = "checkboxtitle"
		checkboxtitle.Parent = checkboxsection
		checkboxtitle.BackgroundColor3 = Color3.new(1, 1, 1)
		checkboxtitle.BackgroundTransparency = 1
		checkboxtitle.BorderSizePixel = 0
		checkboxtitle.Position = UDim2.new(0.0576470755, 0, 0, 0)
		checkboxtitle.Size = UDim2.new(0.470588237, 0, 1, 0)
		checkboxtitle.Font = Enum.Font.Gotham
		checkboxtitle.Text = name
		checkboxtitle.TextColor3 = Color3.new(1, 1, 1)
		checkboxtitle.TextSize = 14
		checkboxtitle.TextXAlignment = Enum.TextXAlignment.Left
		if string.len(checkboxtitle.Text) >= 16 then
			checkboxtitle.TextScaled = true
		end

		checkbox.Name = "checkbox"
		checkbox.Parent = checkboxsection
		checkbox.BackgroundColor3 = Color3.new(1, 0.27451, 0.286275)
		checkbox.BackgroundTransparency = 1
		checkbox.BorderSizePixel = 0
		checkbox.Position = UDim2.new(0.800000012, 0, 0.5, -12)
		checkbox.Size = UDim2.new(0.141176477, 0, 0.685714304, 0)
		checkbox.AutoButtonColor = false
		checkbox.Image = "rbxassetid://4552505888"
		checkbox.ImageColor3 = Color3.new(1, 0.27451, 0.286275)

		fill.Name = "fill"
		fill.Parent = checkbox
		fill.BackgroundColor3 = Color3.new(1, 1, 1)
		fill.BackgroundTransparency = 1
		fill.BorderSizePixel = 0
		fill.Size = UDim2.new(1, 0, 1, 0)
		fill.Image = "http://www.roblox.com/asset/?id=4555402813"
		fill.ImageColor3 = Color3.new(1, 0.27451, 0.286275)
		fill.ImageTransparency = 1

		check.Name = "check"
		check.Parent = fill
		check.BackgroundColor3 = Color3.new(1, 1, 1)
		check.BackgroundTransparency = 1
		check.BorderSizePixel = 0
		check.Position = UDim2.new(0.5, -9, 0.5, -9)
		check.Size = UDim2.new(0.75, 0, 0.75, 0)
		check.Image = "http://www.roblox.com/asset/?id=4555411759"
		check.ImageTransparency = 1

		function playtween(object,properties,speed,easing)
			easing = easing or {};
			local tween = game:GetService("TweenService"):Create(object,TweenInfo.new(speed,unpack(easing)),properties);
			tween:Play();
			return tween;
		end;
		
		local toggle = false
		
		checkbox.MouseButton1Click:connect(function()
			if toggle then
				playtween(fill,{ImageTransparency = 1},0.1,{Enum.EasingStyle.Linear,Enum.EasingDirection.In});
				playtween(check,{ImageTransparency = 1},0.1,{Enum.EasingStyle.Linear,Enum.EasingDirection.In});
				toggle = false
			else
				playtween(fill,{ImageTransparency = 0},0.1,{Enum.EasingStyle.Linear,Enum.EasingDirection.In});
				playtween(check,{ImageTransparency = 0},0.1,{Enum.EasingStyle.Linear,Enum.EasingDirection.In});
				toggle = true
			end
			callback(toggle)
		end)
		self:Resize()
	end

	function mainLib:Button(name, callback)
		local callback = callback or function() end
		local container = Instance.new("ImageLabel")
		local button = Instance.new("ImageLabel")
		local button2 = Instance.new("TextButton")

		container.Name = "buttonsection"
		container.Parent = main
		container.BackgroundColor3 = Color3.new(1, 1, 1)
		container.BackgroundTransparency = 1
		container.BorderSizePixel = 0
		container.Position = UDim2.new(0.5, -85, 0, 215)
		container.Size = UDim2.new(0, 170,0, 35)
		container.Image = "http://www.roblox.com/asset/?id=4550094458"
		container.ImageColor3 = Color3.new(0.156863, 0.156863, 0.156863)
		container.ScaleType = Enum.ScaleType.Slice
		container.SliceCenter = Rect.new(4, 4, 296, 296)

		button.Name = "button"
		button.Parent = container
		button.BackgroundColor3 = Color3.new(1, 1, 1)
		button.BackgroundTransparency = 1
		button.BorderSizePixel = 0
		button.Position = UDim2.new(0.5, -78, 0.5, -12)
		button.Size = UDim2.new(0.917647064, 0, 0.685714304, 0)
		button.Image = "rbxassetid://4641155515"
		button.ImageColor3 = Color3.new(1, 0.27451, 0.286275)
		button.ScaleType = Enum.ScaleType.Slice
		button.SliceCenter = Rect.new(4, 4, 296, 296)

		button2.Name = "button"
		button2.Parent = button
		button2.BackgroundColor3 = Color3.new(1, 1, 1)
		button2.BackgroundTransparency = 1
		button2.BorderSizePixel = 0
		button2.Size = UDim2.new(1, 0, 1, 0)
		button2.Font = Enum.Font.Gotham
		button2.TextColor3 = Color3.new(1, 1, 1)
		button2.ClipsDescendants = true
		button2.TextSize = 12
		button2.Text = name
		if string.len(button2.Text) >= 25 then
			button2.TextScaled = true
		end
		button2.MouseButton1Click:Connect(function() mainLib:btnRipple(button2) end)
		button2.MouseButton1Click:Connect(callback)
		self:Resize()
	end

	function mainLib:Slider(name, settings, callback)
		local callback = callback or function() end
		assert(settings.min and settings.max, "You need to put a min value and a max value and a default value!");

		local slidersection = Instance.new("ImageLabel")
		local slidername = Instance.new("TextLabel")
		local slider = Instance.new("TextButton")
		local line = Instance.new("ImageLabel")
		local fill = Instance.new("ImageLabel")
		local Frame = Instance.new("ImageLabel")
		local label = Instance.new("TextLabel")

		slidersection.Name = "slidersection"
		slidersection.Parent = main
		slidersection.BackgroundColor3 = Color3.new(1, 1, 1)
		slidersection.BackgroundTransparency = 1
		slidersection.BorderSizePixel = 0
		slidersection.Position = UDim2.new(0.5, -85, 0, 34)
		slidersection.Size = UDim2.new(0, 170,0, 60)
		slidersection.Image = "http://www.roblox.com/asset/?id=4550094458"
		slidersection.ImageColor3 = Color3.new(0.156863, 0.156863, 0.156863)
		slidersection.ScaleType = Enum.ScaleType.Slice
		slidersection.SliceCenter = Rect.new(4, 4, 296, 296)
		
		slidername.Name = "slidername"
		slidername.Parent = slidersection
		slidername.BackgroundColor3 = Color3.new(1, 1, 1)
		slidername.BackgroundTransparency = 1
		slidername.BorderSizePixel = 0
		slidername.Position = UDim2.new(0.311764717, -43, 0, 0)
		slidername.Size = UDim2.new(0.470588237, 0, 0.646666706, 0)
		slidername.Font = Enum.Font.Gotham
		slidername.Text = name
		slidername.TextColor3 = Color3.new(1, 1, 1)
		slidername.TextSize = 14
		slidername.TextXAlignment = Enum.TextXAlignment.Left
		
		slider.Name = "slider"
		slider.Parent = slidersection
		slider.BackgroundColor3 = Color3.new(1, 1, 1)
		slider.BackgroundTransparency = 1
		slider.BorderSizePixel = 0
		slider.Size = UDim2.new(1, 0, 1, 0)
		slider.Font = Enum.Font.SourceSans
		slider.Text = ""
		slider.TextColor3 = Color3.new(0, 0, 0)
		slider.TextSize = 14
		
		line.Name = "line"
		line.Parent = slider
		line.BackgroundColor3 = Color3.new(1, 1, 1)
		line.BackgroundTransparency = 1
		line.BorderSizePixel = 0
		line.Position = UDim2.new(0.5, -75, 0.680000007, -2)
		line.Size = UDim2.new(0.882352948, 0, 0.0500000007, 0)
		line.Image = "rbxassetid://4550094458"
		line.ImageTransparency = 0.5
		line.ScaleType = Enum.ScaleType.Slice
		line.SliceCenter = Rect.new(4, 4, 296, 296)
		
		fill.Name = "fill"
		fill.Parent = line
		fill.BackgroundColor3 = Color3.new(1, 1, 1)
		fill.BackgroundTransparency = 1
		fill.BorderSizePixel = 0
		fill.Size = UDim2.new(0, 0, 1, 0)
		fill.Image = "rbxassetid://4550094458"
		fill.ImageColor3 = Color3.new(1, 0.27451, 0.286275)
		fill.ScaleType = Enum.ScaleType.Slice
		fill.SliceCenter = Rect.new(4, 4, 296, 296)
		
		Frame.Name = "Frame"
		Frame.Parent = line
		Frame.BackgroundColor3 = Color3.new(1, 1, 1)
		Frame.BackgroundTransparency = 1
		Frame.BorderSizePixel = 0
		Frame.Position = UDim2.new(0, 0, 0.5, -7)
		Frame.Size = UDim2.new(0.0199999996, 0, 4.66666651, 0)
		Frame.Image = "rbxassetid://4550094458"
		Frame.ImageColor3 = Color3.new(1, 0.27451, 0.286275)
		Frame.ScaleType = Enum.ScaleType.Slice
		Frame.SliceCenter = Rect.new(4, 4, 296, 296)
		
		label.Name = "label"
		label.Parent = slidersection
		label.BackgroundColor3 = Color3.new(1, 1, 1)
		label.BackgroundTransparency = 1
		label.BorderSizePixel = 0
		label.Position = UDim2.new(1.02941179, -43, 0, 0)
		label.Size = UDim2.new(0.223529384, 0, 0.646666706, 0)
		label.Font = Enum.Font.Gotham
		label.Text = '0'
		label.TextColor3 = Color3.new(1, 1, 1)
		label.TextSize = 14
		label.TextTransparency = 0.5

		local Player = game:GetService("Players").LocalPlayer;
		local UIS = game:GetService("UserInputService");
		local RuS = game:GetService("RunService");
		
		-- Properties
		local held = false;
		local step = 1;
		local percentage = 0;
		
		UIS.InputEnded:connect(function(input, processed)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				held = false;
			end;
		end);
		
		slider.MouseButton1Down:connect(function()
			held = true;
		end);
		
		RuS.RenderStepped:connect(function(delta)
			if held then
				local MousePos = UIS:GetMouseLocation().X;
				local BtnPos = Frame.Position;
				local SliderSize = slider.AbsoluteSize.X;
				local SliderPos = slider.AbsolutePosition.X;
				local pos = (MousePos-SliderPos)/SliderSize;
				percentage = math.clamp(pos,0,1);
				Frame.Position = UDim2.new(percentage,0,BtnPos.Y.Scale, BtnPos.Y.Offset);
				fill.Size = UDim2.new(percentage,0,0, 3);
				label.Text = math.floor(percentage*settings.max);
				callback(tonumber(label.Text))
			end;
		end);
		self:Resize()
	end

	function mainLib:TextBox(name, defaulttext, callback)
		local callback = callback or function() end
		local textboxsection = Instance.new("ImageLabel")
		local textboxlabel = Instance.new("TextLabel")
		local textboxholder = Instance.new("ImageLabel")
		local textbox = Instance.new("TextBox")

		textboxsection.Name = "textboxsection"
		textboxsection.Parent = main
		textboxsection.BackgroundColor3 = Color3.new(1, 1, 1)
		textboxsection.BackgroundTransparency = 1
		textboxsection.BorderSizePixel = 0
		textboxsection.Position = UDim2.new(0.5, -85, 0, 176)
		textboxsection.Size = UDim2.new(0, 170,0, 35)
		textboxsection.Image = "http://www.roblox.com/asset/?id=4550094458"
		textboxsection.ImageColor3 = Color3.new(0.156863, 0.156863, 0.156863)
		textboxsection.ScaleType = Enum.ScaleType.Slice
		textboxsection.SliceCenter = Rect.new(4, 4, 296, 296)

		textboxlabel.Name = "textboxlabel"
		textboxlabel.Parent = textboxsection
		textboxlabel.BackgroundColor3 = Color3.new(1, 1, 1)
		textboxlabel.BackgroundTransparency = 1
		textboxlabel.BorderSizePixel = 0
		textboxlabel.Position = UDim2.new(0.0576470755, 0, 0, 0)
		textboxlabel.Size = UDim2.new(0.470588237, 0, 1, 0)
		textboxlabel.Font = Enum.Font.Gotham
		textboxlabel.Text = name
		textboxlabel.TextColor3 = Color3.new(1, 1, 1)
		textboxlabel.TextSize = 14
		textboxlabel.TextXAlignment = Enum.TextXAlignment.Left
		if string.len(textboxlabel.Text) >= 12 then
			textboxlabel.TextScaled = true
		end

		textboxholder.Name = "textboxholder"
		textboxholder.Parent = textboxsection
		textboxholder.BackgroundColor3 = Color3.new(1, 1, 1)
		textboxholder.BackgroundTransparency = 1
		textboxholder.BorderSizePixel = 0
		textboxholder.Position = UDim2.new(0.529411793, 0, 0.5, -12)
		textboxholder.Size = UDim2.new(0.441176474, 0, 0.685714304, 0)
		textboxholder.Image = "rbxassetid://4550094458"
		textboxholder.ImageColor3 = Color3.new(0.137255, 0.137255, 0.137255)
		textboxholder.ScaleType = Enum.ScaleType.Slice
		textboxholder.SliceCenter = Rect.new(4, 4, 296, 296)

		textbox.Name = "textbox"
		textbox.Parent = textboxholder
		textbox.BackgroundColor3 = Color3.new(1, 1, 1)
		textbox.BackgroundTransparency = 1
		textbox.BorderSizePixel = 0
		textbox.ClipsDescendants = true
		textbox.Size = UDim2.new(1, 0, 1, 0)
		textbox.Font = Enum.Font.Gotham
		textbox.PlaceholderText = "Text"
		textbox.Text = defaulttext
		textbox.TextColor3 = Color3.new(1, 1, 1)
		textbox.TextSize = 10

		textbox.FocusLost:Connect(function()
			callback(textbox.Text)
		end)
		self:Resize()
	end

	function mainLib:Section(text)
		local section = Instance.new("ImageLabel")
		local sectiontext = Instance.new("TextLabel")

		section.Name = "section"
		section.Parent = main
		section.BackgroundColor3 = Color3.new(1, 1, 1)
		section.BackgroundTransparency = 1
		section.BorderSizePixel = 0
		section.Position = UDim2.new(0.5, -85, 0, 254)
		section.Size = UDim2.new(0, 170,0, 35)
		section.Image = "http://www.roblox.com/asset/?id=4550094458"
		section.ImageColor3 = Color3.new(0.156863, 0.156863, 0.156863)
		section.ScaleType = Enum.ScaleType.Slice
		section.SliceCenter = Rect.new(4, 4, 296, 296)

		sectiontext.Name = "sectiontext"
		sectiontext.Parent = section
		sectiontext.BackgroundColor3 = Color3.new(1, 1, 1)
		sectiontext.BackgroundTransparency = 1
		sectiontext.BorderSizePixel = 0
		sectiontext.Size = UDim2.new(1, 0, 1, 0)
		sectiontext.Font = Enum.Font.Gotham
		sectiontext.Text = text
		sectiontext.TextColor3 = Color3.new(1, 1, 1)
		sectiontext.TextSize = 14
		if string.len(sectiontext.Text) >= 18 then
			sectiontext.TextScaled = true
		end
		self:Resize()
	end

	function mainLib:Bind(name, default, callback)
		local callback = callback or function() end
		local keycodename = default
		local default = default
		local Type = tostring(default):match("UserInputType") and "UserInputType" or "KeyCode"
		keycodename = tostring(keycodename):gsub("Enum.UserInputType.", "")
        keycodename = tostring(keycodename):gsub("Enum.KeyCode.", "")

		local bindsection = Instance.new("ImageLabel")
		local TextLabel = Instance.new("TextLabel")
		local keybindholder = Instance.new("ImageLabel")
		local keybindbutton = Instance.new("TextButton")

		bindsection.Name = "bindsection"
		bindsection.Parent = main
		bindsection.BackgroundColor3 = Color3.new(1, 1, 1)
		bindsection.BackgroundTransparency = 1
		bindsection.BorderSizePixel = 0
		bindsection.Position = UDim2.new(0.5, -85, 0, 137)
		bindsection.Size = UDim2.new(0, 170,0, 35)
		bindsection.Image = "http://www.roblox.com/asset/?id=4550094458"
		bindsection.ImageColor3 = Color3.new(0.156863, 0.156863, 0.156863)
		bindsection.ScaleType = Enum.ScaleType.Slice
		bindsection.SliceCenter = Rect.new(4, 4, 296, 296)

		TextLabel.Parent = bindsection
		TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
		TextLabel.BackgroundTransparency = 1
		TextLabel.BorderSizePixel = 0
		TextLabel.Position = UDim2.new(0.0576470755, 0, 0, 0)
		TextLabel.Size = UDim2.new(0.470588237, 0, 1, 0)
		TextLabel.Font = Enum.Font.Gotham
		TextLabel.Text = name
		TextLabel.TextColor3 = Color3.new(1, 1, 1)
		TextLabel.TextSize = 14
		TextLabel.TextXAlignment = Enum.TextXAlignment.Left
		if string.len(TextLabel.Text) >= 10 then
			TextLabel.TextScaled = true
		end

		keybindholder.Name = "keybindholder"
		keybindholder.Parent = bindsection
		keybindholder.BackgroundColor3 = Color3.new(1, 1, 1)
		keybindholder.BackgroundTransparency = 1
		keybindholder.BorderSizePixel = 0
		keybindholder.Position = UDim2.new(0.529411793, 0, 0.5, -12)
		keybindholder.Size = UDim2.new(0.441176474, 0, 0.685714304, 0)
		keybindholder.Image = "rbxassetid://4641155515"
		keybindholder.ImageColor3 = Color3.new(1, 0.27451, 0.286275)
		keybindholder.ScaleType = Enum.ScaleType.Slice
		keybindholder.SliceCenter = Rect.new(4, 4, 296, 296)

		keybindbutton.Name = "keybindbutton"
		keybindbutton.Parent = keybindholder
		keybindbutton.BackgroundColor3 = Color3.new(1, 1, 1)
		keybindbutton.BackgroundTransparency = 1
		keybindbutton.BorderSizePixel = 0
		keybindbutton.Size = UDim2.new(1, 0, 1, 0)
		keybindbutton.Font = Enum.Font.Gotham
		keybindbutton.Text = ". . ."
		keybindbutton.TextColor3 = Color3.new(1, 1, 1)
		keybindbutton.TextSize = 10
		local WhitelistedType = {
			[Enum.UserInputType.MouseButton1] = "Mouse1";
			[Enum.UserInputType.MouseButton2] = "Mouse2";
			[Enum.UserInputType.MouseButton3] = "Mouse3";
		};

		keybindbutton.MouseButton1Click:Connect(function()
			local Connection;

			keybindbutton.Text = ". . .";

			Connection = UIS.InputBegan:Connect(function(i)
				if WhitelistedType[i.UserInputType] then
					keybindbutton.Text = WhitelistedType[i.UserInputType];
					spawn(function()
						wait(0.1)
						default = i.UserInputType;
						Type = "UserInputType";
					end);
				elseif i.KeyCode ~= Enum.KeyCode.Unknown then
					keybindbutton.Text = tostring(i.KeyCode):gsub("Enum.KeyCode.", "");
					spawn(function()
						wait(0.1)
						default = i.KeyCode;
						Type = "KeyCode";
					end);
				else
					warn("Exception: " .. i.UserInputType .. " " .. i.KeyCode);
				end;

				
				Connection:Disconnect();
			end);
		end);

		UIS.InputBegan:Connect(function(i)
			if (default == i.UserInputType or default == i.KeyCode) then
				callback(default);
			end;
		end);
		self:Resize()
	end
	local Detect = Instance.new('IntValue', main)
	Detect.Name = '0v1'
	return mainLib
end

return library
