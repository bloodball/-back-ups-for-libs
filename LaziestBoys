repeat wait() until game:IsLoaded()

local LB_MODULE = {}

do
	local getService = function(name)
		repeat wait() until game:GetService(name) ~= nil
		return game:GetService(name)
	end
	
	local sendNotification = function(title, content)
		getService('StarterGui'):SetCore('SendNotification', {
			Title = title or 'No Title';
			Text = content or 'No Content';
		})
	end
	
	local Main = {
		Services = {
			['CoreGui'] = getService('CoreGui');
			['Players'] = getService('Players');
			['ReplicatedStorage'] = getService('ReplicatedStorage');
			['RunService'] = getService('RunService');
			['UserInputService'] = getService('UserInputService');
			['Workspace'] = getService('Workspace');
		};
	
		REQUIRED = {
			['getgenv'] = pcall(function()return getgenv end) and getgenv;
			-- ['Drawing'] = pcall(function()return Drawing end) and Drawing;
		};
	
		MISSING = {};
	
		COLOR = {
			WINDOW = Color3.fromRGB(40,40,40);
			WINDOW_CLOSED = Color3.fromRGB(80, 0, 140);
			WINDOW_OPENED = Color3.fromRGB(0, 0, 140);
			TEXT = Color3.fromRGB(180,180,180);
			BUTTONBG = Color3.fromRGB(60,60,60);
			BUTTONTEXT = Color3.fromRGB(180,180,180);
			SELECTEDBG = Color3.fromRGB(80,80,80);
			SELECTEDTEXT = Color3.fromRGB(200,200,200);
			TITLEBAR = Color3.fromRGB(30,30,30);
		}
	}

	for a,b in next, Main.REQUIRED do
		if not b then
			table.insert(Main.MISSING, a)
		end
	end

	if #Main.MISSING ~= 0 then
		sendNotification('[UI LIB] Missing Feature(s)', table.concat(Main.MISSING, ', '))
		script:Destroy()
		return nil
	end

	if getgenv().LBConnections and typeof(getgenv().LBConnections) == 'table' then
		for a,b in next, getgenv().LBConnections do
			b:Disconnect()
		end
	end

	for a,b in next, Main.Services.CoreGui:children() do
		if string.find(b.Name, 'LB UI Library') then
			b:Destroy()
		end
	end

	if getgenv().UILibrary_Loading then return nil end
	getgenv().UILibrary_Loading = true

	if Drawing then
		local draw = Drawing.new('Square')
		draw.Size = Vector2.new(0,0)
		draw.Color = Color3.fromRGB(20,20,20)
		draw.Transparency = 1
		draw.Filled = true
		draw.Visible = true
		for i=0,100,1 do
			Main.Services.RunService.RenderStepped:wait()
			draw.Position = Vector2.new(
				(workspace.CurrentCamera.ViewportSize.X / 2) - i,
				(workspace.CurrentCamera.ViewportSize.Y / 2) - i
			)
			draw.Size = Vector2.new(draw.Size.X+2,draw.Size.Y+2)
		end

		draw.Transparency = 1
		local text = Drawing.new('Text')
		text.Text = 'UI Library\n\n\n\nDeveloped By:\nKingUnspirited'
		text.Center = true
		text.Color = Color3.fromRGB(255,255,255)
		text.Size = 30
		text.Position = Vector2.new(
			(workspace.CurrentCamera.ViewportSize.X / 2),
			(workspace.CurrentCamera.ViewportSize.Y / 2)-92
		)
		text.Transparency = 0
		text.Visible = true
		for i=0,1,.01 do
			Main.Services.RunService.RenderStepped:wait()
			text.Transparency = i
		end
		text.Transparency = 1
		wait(1)
		for i=1,0,-.01 do
			Main.Services.RunService.RenderStepped:wait()
			text.Transparency = i
		end
		for i=100,0,-1 do
			Main.Services.RunService.RenderStepped:wait()
			draw.Position = Vector2.new(
				(workspace.CurrentCamera.ViewportSize.X / 2) - i,
				(workspace.CurrentCamera.ViewportSize.Y / 2) - i
			)
			draw.Size = Vector2.new(draw.Size.X-2,draw.Size.Y-2)
		end
		draw:Remove()
		text:Remove()
	end

	getgenv().UILibrary_Loading = false

	Main.GUI = Instance.new('ScreenGui', Main.Services.CoreGui)
	Main.GUI.Name = 'LB UI Library' .. getService('HttpService'):GenerateGUID()
	sendNotification('UI Library Loaded!', 'Press F1 to show/hide windows!\n- KingUnspirited')
	sendNotification('Credits', '`Someone Insane` for giving me an idea to use the style of a mac button!')

	function LB_MODULE:Create(window, instance, props)
		local a = Instance.new(instance)
		for b,c in next, props do
			if b ~= 'Parent' then
				pcall(function()a[b]=c;end)
				pcall(function()a['BorderSizePixel']=0;end)
				pcall(function()a['ZIndex']=0;end)
			end
		end

		if window then
			a.Parent = window
		else
			a.Parent = Main.GUI
		end

		return a
	end

	local windowPos = 0
	getgenv().LBConnections = {}

	local windowMoving = false
	local currentWindow = nil
	local windowFocused = false
	local sliderFocused = false
	local sliderMoving = false
	local selectionOpened = false
	local mouseDown = false

	table.insert(getgenv().LBConnections,
		Main.Services.UserInputService.InputEnded:connect(function(key)
			if key.UserInputType == Enum.UserInputType.MouseButton1 then
				mouseDown = false
			end
		end)
	)

	function LB_MODULE:AddWindow(title)
		local height = 40
		local transition = false
		local closed = false
		local window = self:Create(nil, 'Frame', {
			AnchorPoint = Vector2.new(0,0);
			BackgroundColor3 = Main.COLOR.WINDOW;
			Position = UDim2.new(0,windowPos,0,0);
			Size = UDim2.new(0,200,0,height);
			ZIndex = 0;
		})

		self:Create(window, 'Frame', {
			BackgroundColor3 = Main.COLOR.TITLEBAR;
			Position = UDim2.new(0,0,0,0);
			Size = UDim2.new(1,0,0,25);
		})

		table.insert(getgenv().LBConnections,
			Main.Services.UserInputService.InputBegan:connect(function(key)
				if window ~= nil then
					if key.KeyCode == Enum.KeyCode.F1 then
						window.Visible = not window.Visible
					elseif key.UserInputType == Enum.UserInputType.MouseButton1 then
						mouseDown = true
					end
				end
			end)
		)

		
		windowPos = windowPos + 250
		
		self:Create(window, 'TextLabel', {
			BackgroundTransparency = 1;
			Position = UDim2.new(.5,0,0,1);
			TextColor3 = Main.COLOR.TEXT;
			TextSize = 14;
			TextXAlignment = 2;
			TextYAlignment = 0;
			Text = title or 'Untitled';
		})
		
		------------------

		local rBtn = self:Create(window, 'ImageButton', {
			BackgroundTransparency = 1;
			Image = 'rbxthumb://type=Asset&id=4693046251&w=150&h=150';
			ImageTransparency = 0;
			Position = UDim2.new(0,29,0,5);
			Size = UDim2.new(0,10,0,10);
			ScaleType = Enum.ScaleType.Fit;
			Text = '';
			TextColor3 = Main.COLOR.TEXT
		})

		rBtn.MouseButton1Click:connect(function()
			if currentWindow == window then
				if #Main.GUI:children() == 1 then
					currentWindow = nil
					Main.GUI:Destroy()
					script:Destroy()
				end
				pcall(function()
					windowPos = windowPos - 250
					if connection then
						pcall(function()
							for a,b in next, getgenv().LBConnections do
								if b == connection then
									table.remove(getgenv().LBConnections, a)
									connection:Disconnect()
								end
							end
						end)
					end
					currentWindow = nil
					window:Destroy()
				end)
			end
		end)

		------------------

		local gBtn = self:Create(window, 'ImageButton', {
			BackgroundTransparency = 1;
			Image = 'rbxthumb://type=Asset&id=4693044547&w=150&h=150';
			ImageTransparency = 0;
			Position = UDim2.new(0,5,0,5);
			Size = UDim2.new(0,10,0,10);
			ScaleType = Enum.ScaleType.Fit;
			Text = '';
			TextColor3 = Main.COLOR.TEXT
		})

		gBtn.MouseButton1Click:connect(function()
			if currentWindow == window then
				if not transition then
					if closed then
						transition = true
						closed = false
						for i=25,height,4 do
							Main.Services.RunService.Heartbeat:wait()
							window.Size = UDim2.new(0,200,0,i)
						end
						window.ClipsDescendants = false
						window.Size = UDim2.new(0,200,0,height)
						transition = false
					end
				end
			end
		end)

		------------------

		local oBtn = self:Create(window, 'ImageButton', {
			BackgroundTransparency = 1;
			Image = 'rbxthumb://type=Asset&id=4693046726&w=150&h=150';
			ImageTransparency = 0;
			Position = UDim2.new(0,17.8,0,5);
			Size = UDim2.new(0,10,0,10);
			ScaleType = Enum.ScaleType.Fit;
			Text = '';
			TextColor3 = Main.COLOR.TEXT
		})

		oBtn.MouseButton1Click:connect(function()
			if currentWindow == window then
				if not transition then
					if not closed then
						transition = true
						window.ClipsDescendants = true
						closed = true
						for i=height,25,-4 do
							Main.Services.RunService.Heartbeat:wait()
							window.Size = UDim2.new(0,200,0,i)
						end
						window.Size = UDim2.new(0,200,0,25)
						transition = false
					end
				end
			end
		end)

		------------------

		window.MouseMoved:connect(function()
			if not currentWindow and not selectionOpened then
				for a,b in next, window:children() do
					if b.ClassName ~= 'ScrollingFrame' then
						pcall(function()b.ZIndex = 1;end)
						pcall(function()b.Frame.ZIndex = 1;end)
						pcall(function()b.TextLabel.ZIndex = 1;end)
						pcall(function()b.TextButton.ZIndex = 1;end)
					end
				end
				window.ZIndex = 1
				currentWindow = window
				windowFocused = true
			end
		end)

		------------------
		
		window.MouseLeave:connect(function()
			if currentWindow == window then
				windowFocused = false
			end
			if currentWindow == window and not windowMoving and not sliderMoving and not selectionOpened then
				for a,b in next, window:children() do
					if b.ClassName ~= 'ScrollingFrame' then
						pcall(function()b.ZIndex = 0;end)
						pcall(function()b.Frame.ZIndex = 0;end)
						pcall(function()b.TextLabel.ZIndex = 0;end)
						pcall(function()b.TextButton.ZIndex = 0;end)
					end
				end
				window.ZIndex = 0
				currentWindow = nil
				windowFocused = false
			end
		end)

		------------------

		window.InputBegan:connect(function(key)
			if window == currentWindow then
				if not sliderFocused then
					local mouse = Main.Services.Players.LocalPlayer:GetMouse()
					local mb1 = Enum.UserInputType.MouseButton1
					local m = {
						x = 0;
						y = 0;
					}
					if key.UserInputType == mb1 then
						windowMoving = true
						local as = window.AbsolutePosition
						local pos = Vector2.new(mouse.X-as.X,mouse.Y-as.Y)
						while Main.Services.RunService.Heartbeat:wait() and Main.Services.UserInputService:IsMouseButtonPressed(mb1) and currentWindow == window do
							local obj = {
								mouse.X-pos.X,
								window.Size.X.Offset*window.AnchorPoint.X,
								mouse.Y-pos.Y,
								window.Size.Y.Offset*window.AnchorPoint.Y
							}
							if m.X ~= mouse.X or m.Y ~= mouse.Y then
								window:TweenPosition(
									UDim2.new(
										0,
										obj[1]+obj[2],
										0,
										obj[3]+obj[4]
									),
									'Out', 'Quad', .2,
									true
								)
							end
							m.X = mouse.X
							m.Y = mouse.Y
						end
						windowMoving = false
					end
				end
			end
		end)

		------------------

		local windowModule = {}
		function windowModule:Label(text)
			if not text or typeof(text) ~= 'string' then
				return sendNotification('Invalid Text!', 'You must set the text as a string for this button!')
			end
			LB_MODULE:Create(window, 'TextLabel', {
				Position = UDim2.new(.5,0,0,height-10);
				TextSize = 10;
				TextXAlignment = 2;
				TextYAlignment = 0;
				Text = text or 'Untitled';
				TextColor3 = Main.COLOR.TEXT;
			})

			height = height + 20
			window.Size = UDim2.new(0,200,0,height)
			return windowModule
		end

		------------------

		function windowModule:Button(text, callback)
			if not text or typeof(text) ~= 'string' then
				return sendNotification('Invalid Text!', 'You must set the text as a string for this button!')
			end
			if not callback or typeof(callback) ~= 'function' then
				return sendNotification('Invalid Callback!', 'You must set the callback as a function for this button: ' .. text)
			end
			local btn = LB_MODULE:Create(window, 'TextButton', {
				BackgroundColor3 = Main.COLOR.BUTTONBG;
				Position = UDim2.new(0,10,0,height-10);
				Size = UDim2.new(0, 180, 0, 20);
				Text = text or 'Untitled';
				TextColor3 = Main.COLOR.BUTTONTEXT;
				TextXAlignment = 2;
				TextYAlignment = 1;
			})

			btn.MouseButton1Click:connect(function()
				if window == currentWindow then
					callback()
				end
			end)

			height = height + 20
			window.Size = UDim2.new(0,200,0,height)
			return windowModule
		end

		------------------

		function windowModule:Toggle(text, callback)
			if not text or typeof(text) ~= 'string' then
				return sendNotification('Invalid Text!', 'You must set the text as a string for this toggle!')
			end
			if not callback or typeof(callback) ~= 'function' then
				return sendNotification('Invalid Callback!', 'You must set the callback as a function for this toggle: ' .. title)
			end

			local btn = LB_MODULE:Create(window, 'TextButton', {
				BackgroundColor3 = Color3.fromRGB(140,0,0);
				Position = UDim2.new(0,10,0,height-10);
				Size = UDim2.new(0, 180, 0, 20);
				Text = text or 'Untitled';
				TextColor3 = Main.COLOR.BUTTONTEXT;
				TextXAlignment = 2;
				TextYAlignment = 1;
			})

			btn.MouseButton1Click:connect(function()
				if window == currentWindow then
					btn.BackgroundColor3 = btn.BackgroundColor3 == Color3.fromRGB(140,0,0) and Color3.fromRGB(0,140,0) or Color3.fromRGB(140,0,0)
					callback()
				end
			end)

			height = height + 20
			window.Size = UDim2.new(0,200,0,height)
			return windowModule
		end

		------------------

		function windowModule:Selection(title, options)
			if not title or typeof(title) ~= 'string' then
				return sendNotification('Invalid Title!', 'You must set the title as a string for this selection!')
			end
			if not options or typeof(options) ~= 'table' then
				return sendNotification('Invalid Options!', 'You must set the options as a table for this selection: ' .. title)
			end
			
			if #options == 0 then
				table.insert(options, '')
			end
			
			local opts = {selected=tostring(options[1]), index=1}
			LB_MODULE:Create(window, 'TextLabel', {
				Position = UDim2.new(.5,0,0,height);
				Text = tostring(title or '');
				TextSize = 8;
				TextXAlignment = 2;
				TextYAlignment = 1;
				TextColor3 = Main.COLOR.TEXT;
			})

			height = height + 20

			local labelWindow = LB_MODULE:Create(window, 'Frame', {
				BackgroundColor3 = Main.COLOR.SELECTEDBG;
				Position = UDim2.new(0,10,0,height-10);
				Size = UDim2.new(0, 180, 0, 20);
			})

			local label = LB_MODULE:Create(labelWindow, 'TextLabel', {
				Position = UDim2.new(.5,0,0,0);
				TextSize = 10;
				TextXAlignment = 2;
				TextYAlignment = 0;
				Text = tostring(options[1]);
				TextColor3 = Main.COLOR.SELECTEDTEXT;
			})


			local selectionHeight = 0
			local _transition = false
			local closed = true

			local selectionWindow = LB_MODULE:Create(window, 'ScrollingFrame', {
				BackgroundColor3 = Color3.fromRGB(60,60,60);
				Position = UDim2.new(0,10,0,height+10);
				Size = UDim2.new(0, 180, 0, 0);
				Visible = false;
			})
			selectionWindow.ZIndex = 100

			selectionWindow.ChildAdded:connect(function()
				selectionWindow.CanvasSize = UDim2.new(0,180,0,selectionHeight+20)
			end)

			local sBtn = LB_MODULE:Create(labelWindow, 'TextButton', {
				BackgroundTransparency = 1;
				Size = UDim2.new(0,20,0,20);
				Position = UDim2.new(1,-20,0,0);
				Text = 'v';
				TextColor3 = Main.COLOR.BUTTONTEXT;
			})

			local lostFocusEvent = nil

			local closeFunc = function()
				if closed then
					selectionOpened = true
					sBtn.Text = '^'
					selectionWindow.Visible = true
					for i = 0, selectionHeight >= 140 and 140 or selectionHeight, 5 do
						Main.Services.RunService.RenderStepped:wait()
						selectionWindow.Size = UDim2.new(0, 180, 0, i)
					end
					selectionWindow.Size = UDim2.new(0, 180, 0, selectionHeight >= 140 and 140 or selectionHeight)
					closed = false
				elseif not closed then
					selectionOpened = false
					sBtn.Text = 'v'
					if lostFocusEvent then
						lostFocusEvent:Disconnect()
						lostFocusEvent = nil
					end

					for i = selectionHeight >= 140 and 140 or selectionHeight,0, -5 do
						Main.Services.RunService.RenderStepped:wait()
						selectionWindow.Size = UDim2.new(0, 180, 0, i)
					end
					selectionWindow.Size = UDim2.new(0, 180, 0, 0)
					selectionWindow.Visible = false
					closed = true
				end
				return true
			end

			sBtn.MouseButton1Click:connect(function()
				if window == currentWindow and not _transition then
					_transition = true
					if closed then
						selectionOpened = true
						lostFocusEvent = selectionWindow.MouseLeave:connect(function()
							if not _transition then
								_transition = true
								closeFunc()
								selectionOpened = false
								_transition = false
								if not windowFocused then
									for a,b in next, window:children() do
										if b.ClassName ~= 'ScrollingFrame' then
											pcall(function()b.ZIndex = 0;end)
											pcall(function()b.Frame.ZIndex = 0;end)
											pcall(function()b.TextLabel.ZIndex = 0;end)
											pcall(function()b.TextButton.ZIndex = 0;end)
										end
									end
									window.ZIndex = 0
									currentWindow = nil
								end
							end
						end)
					else
						selectionOpened = false
					end
					
					closeFunc()
					_transition = false
				end
			end)

			for a,b in next, options do
				local btn = LB_MODULE:Create(selectionWindow, 'TextButton', {
					BackgroundColor3 = Main.COLOR.BUTTONBG;
					Position = UDim2.new(0,0,0,selectionHeight);
					Size = UDim2.new(0, 160, 0, 20);
					Text = tostring(b);
					TextColor3 = Main.COLOR.TEXT;
					TextYAlignment = 1;
					TextXAlignment = 2;
				})
				btn.MouseButton1Click:connect(function()
					if not _transition then
						label.Text = tostring(b)
						opts.index = tonumber(a)
						opts.selected = tostring(b)
						closeFunc()
					end
				end)
				btn.ZIndex = 100;
				selectionHeight = selectionHeight + 20
			end

			height = height + 20
			window.Size = UDim2.new(0,200,0,height)
			return opts
		end

		------------------

		function windowModule:Slider(title, minValue, maxValue, callback)
			if not title or typeof(title) ~= 'string' then
				return sendNotification('Invalid Title!', 'You must set a title as a string for this slider!')
			end
			if (callback and typeof(callback) ~= 'function') then
				return sendNotification('Invalid Callback!', 'You must set a callback as a function for this slider: ' .. title)
			end
			if not maxValue then maxValue = 100 end
			if not minValue then minValue = 0 end
			if maxValue and typeof(maxValue) ~= 'number' then maxValue = 100 end
			if maxValue < 0 then maxValue = 100 end
			if minValue and typeof(minValue) ~= 'number' then minValue = 0 end
			if minValue < 0 then minValue = 0 end
			minValue = math.floor(minValue)
			maxValue = math.floor(maxValue)
			local tbl = {value=minValue;}
			local frame = LB_MODULE:Create(window, 'Frame', {
				BackgroundColor3 = Color3.fromRGB(75,75,75);
				Position = UDim2.new(0,10,0,height+5);
				Size = UDim2.new(0,180,0,20);
			})

			local cursor = LB_MODULE:Create(frame, 'Frame', {
				BackgroundColor3 = Color3.fromRGB(180,180,180);
				Position = UDim2.new(0,0,0,5);
				Size = UDim2.new(0,10,0,10);
			})
			
			local numValue = LB_MODULE:Create(frame, 'TextLabel', {
				BackgroundTransparency = 1;
				Position = UDim2.new(.5,0,0,5);
				Text = tostring(minValue);
				TextColor3 = Color3.fromRGB(255,255,255);
				TextYAlignment = 0;
			})

			local aaa = LB_MODULE:Create(window, 'TextLabel', {
				BackgroundTransparency = 1;
				Position = UDim2.new(0,10,0,height-10);
				Size = UDim2.new(0,180,0,20);
				Text = title;
				TextColor3 = Color3.fromRGB(255,255,255);
				TextXAlignment = 0;
				TextYAlignment = 0;
			})

			frame.InputBegan:connect(function()
				if not windowMoving and not sliderMoving and currentWindow == window and not mouseDown then
					local mouse = Main.Services.Players.LocalPlayer:GetMouse()
					local mouseAxis = {['x']=0;['y']=0;}
					local AbsolutePos = Vector2.new(
						frame.AbsolutePosition.X,
						frame.AbsolutePosition.Y
					)
					if not sliderMoving then
						while Main.Services.RunService.Heartbeat:wait() and Main.Services.UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
							sliderMoving = true
							if mouseAxis.x ~= mouse.X then
								local pos = nil;
								if mouse.X >= (AbsolutePos.X + 170) then
									pos=UDim2.new(0,170,0,5)
								elseif mouse.X <= AbsolutePos.X then
									pos=UDim2.new(0,0,0,5)
								else
									pos=UDim2.new(0,mouse.X-AbsolutePos.X,0,5)
								end
								cursor:TweenPosition(pos, 'Out', 'Quad', .2, true)
							end
							mouseAxis.x = mouse.X
						end
						sliderMoving = false
					end
				end
			end)

			------------------

			cursor:GetPropertyChangedSignal('Position'):connect(function()
				numValue.Text = tostring(
					math.clamp(
							math.floor(
							(
								(cursor.Position.X.Offset)
							/
								((frame.AbsoluteSize.X)-10)
							) * maxValue
						),
						minValue,
						maxValue
					)
				)
			end)

			numValue:GetPropertyChangedSignal('Text'):connect(function(property)
				tbl.value = tonumber(numValue.Text)
				if callback then
					callback(tonumber(numValue.Text))
				end
			end)

			frame.MouseEnter:connect(function()
				sliderFocused = true
			end)

			frame.MouseLeave:connect(function()
				sliderFocused = false
			end)

			height = height + 35
			window.Size = UDim2.new(0,200,0,height)

			return tbl
		end

		------------------

		function windowModule:Text(placeholderText)
			local tbl = {Text = ''}
			local txtBox = LB_MODULE:Create(window, 'TextBox', {
				BackgroundColor3 = Color3.fromRGB(150,150,150);
				ClearTextOnFocus = false;
				PlaceholderColor3 = Color3.fromRGB(255,255,255);
				PlaceholderText = placeholderText or '';
				Position = UDim2.new(0,10,0,height-10);
				Size = UDim2.new(0, 180, 0, 20);
				Text = '';
				TextColor3 = Color3.fromRGB(40,40,40);
			})

			txtBox.Changed:connect(function()
				tbl.Text = txtBox.Text
			end)

			height = height + 20
			window.Size = UDim2.new(0,200,0,height)

			return tbl
		end

		------------------

		function windowModule:KeyBind(title, key, callback)
			if not title or typeof(title) ~= 'string' then
				return sendNotification('Invalid Title!', 'You must set the title as a string for this keybind!')
			end

			if not pcall(function() return Enum.KeyCode[key] end) then
				return sendNotification('Invalid KeyCode!', 'You cannot set `'..tostring(key)..'` as a keybind!')
			end

			local keyCode = nil
			for a,b in next, Enum.KeyCode:GetEnumItems() do
				if tostring(b) == string.format('Enum.KeyCode.%s', key) then
					keyCode = b
					break
				end
			end

			if not callback or typeof(callback) ~= 'function' then
				return sendNotification('Invalid Callback!', 'You must set the callback function for this keybind: ' .. key)
			end

			table.insert(getgenv().LBConnections,
				Main.Services.UserInputService.InputBegan:connect(function(key)
					if key.KeyCode == keyCode then
						callback()
					end
				end)
			)

			LB_MODULE:Create(window, 'TextLabel', {
				BackgroundTransparency = 1,
				Position = UDim2.new(0,10,0,height-10);
				Size = UDim2.new(0,180,0,20),
				TextSize = 10;
				TextXAlignment = 0;
				TextYAlignment = 0;
				Text = string.format('%s', title);
				TextColor3 = Main.COLOR.TEXT;
			})

			LB_MODULE:Create(window, 'TextLabel', {
				BackgroundTransparency = 1,
				Position = UDim2.new(0,10,0,height-10);
				Size = UDim2.new(0,180,0,20),
				TextSize = 10;
				TextXAlignment = 1;
				TextYAlignment = 0;
				Text = string.format('[%s]', key);
				TextColor3 = Main.COLOR.TEXT;
			})

			height = height + 20
			window.Size = UDim2.new(0,200,0,height)

			return window
		end

		------------------

		function windowModule:GUIDestroy()
			for a,b in next, getgenv().LBConnections do
				b:Disconnect()
			end
			script:Destroy()
			Main.GUI:Destroy()
		end

		return windowModule
	end
end

return LB_MODULE
