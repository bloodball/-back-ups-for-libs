--[[
# moonlib v1
# developed by jakep#0001
# fully open source enjoy (;
--]]

local lib = {}


function lib:CreateWindow(name, colorid, imageid)

local imageid = imageid or "9160626035"
local colorid = colorid or "#b36415"
local MoonLIB = Instance.new("ScreenGui")
local imagestring = Instance.new("StringValue")

local Frame = Instance.new("Frame")
local UIScale = Instance.new("UIScale")
local Shadow = Instance.new("ImageLabel")
local TitleBar = Instance.new("ImageButton")
local Title = Instance.new("TextLabel")
local TitleButtons = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local Close = Instance.new("ImageButton")
local Img = Instance.new("ImageLabel")
local Hover = Instance.new("Frame")
local Icon = Instance.new("ImageLabel")
local UIGradient = Instance.new("UIGradient")
local MenuBar = Instance.new("Frame")
local Decor = Instance.new("Frame")
local Buttons = Instance.new("Frame")
local UIListLayout_2 = Instance.new("UIListLayout")
local MainButton = Instance.new("ImageButton")
local Label = Instance.new("TextLabel")
local Hover_2 = Instance.new("Frame")
local Line = Instance.new("Frame")
local Line_2 = Instance.new("Frame")
local Line_3 = Instance.new("Frame")
local Line_4 = Instance.new("Frame")
local Resizers = Instance.new("Frame")
local Top = Instance.new("ImageButton")
local Bottom = Instance.new("ImageButton")
local Left = Instance.new("ImageButton")
local Right = Instance.new("ImageButton")
local TopLeft = Instance.new("ImageButton")
local TopRight = Instance.new("ImageButton")
local BottomRight = Instance.new("ImageButton")
local BottomLeft = Instance.new("ImageButton")
local Contents = Instance.new("Frame")
local Background = Instance.new("ImageLabel")
local Stripes = Instance.new("ScrollingFrame")
local Decor_2 = Instance.new("ImageLabel")
local Container = Instance.new("ScrollingFrame")
local MainContainer = Instance.new("Frame")
local UIGridLayout = Instance.new("UIGridLayout")
local LayerSystem = Instance.new("Frame")
local Main = Instance.new("Frame")
local LayerList = Instance.new("Frame")
local TopDecor = Instance.new("Frame")
local Top_2 = Instance.new("Frame")
local Bottom_2 = Instance.new("Frame")
local Resize = Instance.new("ImageButton")
local DragTrackItem = Instance.new("TextLabel")
local Stripes_2 = Instance.new("ScrollingFrame")
local MoveLine = Instance.new("Frame")
local Background_2 = Instance.new("ImageLabel")
local Timeline = Instance.new("Frame")
local FrameRegion = Instance.new("Frame")
local Scalable = Instance.new("Frame")
local Layers = Instance.new("ScrollingFrame")
local UIListLayout_3 = Instance.new("UIListLayout")
local Frame_2 = Instance.new("Frame")
local UIListLayout_4 = Instance.new("UIListLayout")
local Timeline_2 = Instance.new("Frame")
local Top_3 = Instance.new("Frame")
local Bottom_3 = Instance.new("Frame")
local SelectionBox = Instance.new("ScrollingFrame")
local SelectionBoxArea = Instance.new("ImageButton")
local SelBox = Instance.new("Frame")
local Line_5 = Instance.new("Frame")
local Line_6 = Instance.new("Frame")
local Line_7 = Instance.new("Frame")
local Line_8 = Instance.new("Frame")
local TopDecor_2 = Instance.new("ImageButton")
local Bottom_4 = Instance.new("Frame")
local Top_4 = Instance.new("Frame")
local Line_9 = Instance.new("Frame")
local StatusBar = Instance.new("Frame")
local Decor_3 = Instance.new("Frame")
local Zoom = Instance.new("Frame")

--Properties:

MoonLIB.Name = "MoonLIB"
MoonLIB.Parent = game.CoreGui
MoonLIB.DisplayOrder = 1
MoonLIB.ResetOnSpawn = false

Frame.Parent = MoonLIB
Frame.Active = true
Frame.BackgroundColor3 = Color3.fromRGB(18, 22, 28)
Frame.BorderColor3 = Color3.fromRGB(195, 123, 45)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 1582, 0, 336)
Frame.Size = UDim2.new(0, 690, 0, 324)
Frame.ZIndex = 0

UIScale.Parent = Frame

Shadow.Name = "Shadow"
Shadow.Parent = Frame
Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Shadow.BackgroundTransparency = 1.000
Shadow.BorderSizePixel = 0
Shadow.Position = UDim2.new(0, -25, 0, -25)
Shadow.Size = UDim2.new(1, 50, 1, 50)
Shadow.ZIndex = -2
Shadow.Image = "rbxassetid://3357268887"
Shadow.ImageTransparency = 0.250
Shadow.ScaleType = Enum.ScaleType.Slice
Shadow.SliceCenter = Rect.new(25, 25, 280, 280)

TitleBar.Name = "TitleBar"
TitleBar.Parent = Frame
TitleBar.BackgroundColor3 = Color3.fromHex(colorid)
TitleBar.BorderSizePixel = 0
TitleBar.ClipsDescendants = true
TitleBar.Size = UDim2.new(1, 0, 0, 30)
TitleBar.AutoButtonColor = false

Title.Name = "Title"
Title.Parent = TitleBar
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0, 29, 0, -1)
Title.Size = UDim2.new(1, -29, 1, 0)
Title.ZIndex = 2
Title.Font = Enum.Font.Code
Title.Text = name
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 15.000
Title.TextTransparency = 0.250
Title.TextXAlignment = Enum.TextXAlignment.Left

TitleButtons.Name = "TitleButtons"
TitleButtons.Parent = TitleBar
TitleButtons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleButtons.BackgroundTransparency = 1.000
TitleButtons.Size = UDim2.new(1, 0, 1, 0)
TitleButtons.ZIndex = 3

UIListLayout.Parent = TitleButtons
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 1)

Close.Name = "Close"
Close.Parent = TitleButtons
Close.BackgroundColor3 = Color3.fromRGB(123, 69, 15)
Close.BackgroundTransparency = 1.000
Close.BorderColor3 = Color3.fromRGB(123, 69, 15)
Close.BorderSizePixel = 0
Close.LayoutOrder = -1
Close.Size = UDim2.new(0, 45, 1, -1)
Close.ZIndex = 3
Close.AutoButtonColor = false

Img.Name = "Img"
Img.Parent = Close
Img.AnchorPoint = Vector2.new(0.5, 0.5)
Img.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Img.BackgroundTransparency = 1.000
Img.Position = UDim2.new(0.5, 0, 0.5, 0)
Img.Size = UDim2.new(0, 12, 0, 12)
Img.ZIndex = 4
Img.Image = "rbxassetid://3091824332"
Img.ImageTransparency = 0.250

Hover.Name = "Hover"
Hover.Parent = Close
Hover.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Hover.BackgroundTransparency = 1.000
Hover.BorderSizePixel = 0
Hover.Size = UDim2.new(1, 0, 1, 0)
Hover.ZIndex = 3

Icon.Name = "Icon"
Icon.Parent = TitleBar
Icon.AnchorPoint = Vector2.new(0, 0.5)
Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon.BackgroundTransparency = 1.000
Icon.BorderSizePixel = 0
Icon.Position = UDim2.new(0, 8, 0.5, -1)
Icon.Size = UDim2.new(0, 16, 0, 16)
Icon.ZIndex = 4
Icon.Image = "http://www.roblox.com/asset/?id="..imageid
Icon.ImageColor3 = Color3.fromRGB(123, 69, 15)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(230, 230, 230))}
UIGradient.Parent = TitleBar

MenuBar.Name = "MenuBar"
MenuBar.Parent = Frame
MenuBar.Active = true
MenuBar.BackgroundColor3 = Color3.fromRGB(26, 32, 40)
MenuBar.BackgroundTransparency = 1.000
MenuBar.BorderSizePixel = 0
MenuBar.Position = UDim2.new(0, 0, 0, 30)
MenuBar.Size = UDim2.new(1, 0, 0, 20)

Decor.Name = "Decor"
Decor.Parent = MenuBar
Decor.AnchorPoint = Vector2.new(0, 1)
Decor.BackgroundColor3 =  Color3.fromHex(colorid)
Decor.BorderSizePixel = 0
Decor.Position = UDim2.new(0, 0, 1, 0)
Decor.Size = UDim2.new(1, 0, 0, 2)

Buttons.Name = "Buttons"
Buttons.Parent = MenuBar
Buttons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Buttons.BackgroundTransparency = 1.000
Buttons.BorderSizePixel = 0
Buttons.Size = UDim2.new(1, 0, 1, 0)
Buttons.ZIndex = 2

UIListLayout_2.Parent = Buttons
UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder





Resizers.Name = "Resizers"
Resizers.Parent = Frame
Resizers.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Resizers.BackgroundTransparency = 1.000
Resizers.Size = UDim2.new(1, 0, 1, 0)
Resizers.Visible = false
Resizers.ZIndex = 2

Top.Name = "Top"
Top.Parent = Resizers
Top.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Top.BackgroundTransparency = 1.000
Top.BorderSizePixel = 0
Top.Position = UDim2.new(0, 8, 0, -1)
Top.Size = UDim2.new(1, -16, 0, 8)
Top.ZIndex = 2

Bottom.Name = "Bottom"
Bottom.Parent = Resizers
Bottom.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Bottom.BackgroundTransparency = 1.000
Bottom.BorderSizePixel = 0
Bottom.Position = UDim2.new(0, 8, 1, 1)
Bottom.Size = UDim2.new(1, -16, 0, 8)
Bottom.ZIndex = 2

Left.Name = "Left"
Left.Parent = Resizers
Left.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Left.BackgroundTransparency = 1.000
Left.BorderSizePixel = 0
Left.Position = UDim2.new(0, -8, 0, 7)
Left.Size = UDim2.new(0, 8, 1, -6)
Left.ZIndex = 2

Right.Name = "Right"
Right.Parent = Resizers
Right.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Right.BackgroundTransparency = 1.000
Right.BorderSizePixel = 0
Right.Position = UDim2.new(1, 0, 0, 7)
Right.Size = UDim2.new(0, 8, 1, -6)
Right.ZIndex = 2

TopLeft.Name = "TopLeft"
TopLeft.Parent = Resizers
TopLeft.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
TopLeft.BackgroundTransparency = 1.000
TopLeft.BorderSizePixel = 0
TopLeft.Position = UDim2.new(0, -8, 0, -1)
TopLeft.Size = UDim2.new(0, 16, 0, 8)
TopLeft.ZIndex = 2

TopRight.Name = "TopRight"
TopRight.Parent = Resizers
TopRight.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
TopRight.BackgroundTransparency = 1.000
TopRight.BorderSizePixel = 0
TopRight.Position = UDim2.new(1, -8, 0, -1)
TopRight.Size = UDim2.new(0, 16, 0, 8)
TopRight.ZIndex = 2

BottomRight.Name = "BottomRight"
BottomRight.Parent = Resizers
BottomRight.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
BottomRight.BackgroundTransparency = 1.000
BottomRight.BorderSizePixel = 0
BottomRight.Position = UDim2.new(1, -8, 1, 1)
BottomRight.Size = UDim2.new(0, 16, 0, 8)
BottomRight.ZIndex = 2

BottomLeft.Name = "BottomLeft"
BottomLeft.Parent = Resizers
BottomLeft.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
BottomLeft.BackgroundTransparency = 1.000
BottomLeft.BorderSizePixel = 0
BottomLeft.Position = UDim2.new(0, -8, 1, 1)
BottomLeft.Size = UDim2.new(0, 16, 0, 8)
BottomLeft.ZIndex = 2

Contents.Name = "Contents"
Contents.Parent = Frame
Contents.Active = true
Contents.BackgroundColor3 = Color3.fromRGB(18, 22, 28)
Contents.BackgroundTransparency = 1.000
Contents.BorderColor3 = Color3.fromRGB(192, 111, 24)
Contents.ClipsDescendants = true
Contents.Position = UDim2.new(0, 0, 0, 50)
Contents.Size = UDim2.new(1, 0, 1, -50)

Background.Name = "Background"
Background.Parent = Contents
Background.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Background.BackgroundTransparency = 1.000
Background.BorderSizePixel = 0
Background.Size = UDim2.new(1, 0, 1, 0)
Background.ZIndex = 0
Background.ScaleType = Enum.ScaleType.Crop

Stripes.Name = "Stripes"
Stripes.Parent = Contents
Stripes.AnchorPoint = Vector2.new(0, 1)
Stripes.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Stripes.BackgroundTransparency = 1.000
Stripes.BorderSizePixel = 0
Stripes.Position = UDim2.new(0, -15, 1, 0)
Stripes.Size = UDim2.new(1, 512, 1, -19)
Stripes.BottomImage = ""
Stripes.CanvasSize = UDim2.new(1, 0, 0, 357)
Stripes.MidImage = ""
Stripes.ScrollBarThickness = 0
Stripes.ScrollingEnabled = false
Stripes.TopImage = ""

Decor_2.Name = "Decor"
Decor_2.Parent = Stripes
Decor_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Decor_2.BackgroundTransparency = 1.000
Decor_2.Position = UDim2.new(-0.0323576704, 0, -0.343474507, 0)
Decor_2.Size = UDim2.new(1.04379237, 0, 3.9537499, 0)
Decor_2.Image = "http://www.roblox.com/asset/?id=5319486057"
Decor_2.ImageColor3 = Color3.fromRGB(200, 200, 200)
Decor_2.ImageTransparency = 0.950
Decor_2.ScaleType = Enum.ScaleType.Tile
Decor_2.TileSize = UDim2.new(0, 1024, 0, 42)

Container.Name = "Container"
Container.Parent = Contents
Container.Active = true
Container.BackgroundColor3 = Color3.fromRGB(255, 145, 2)
Container.BackgroundTransparency = 1.000
Container.BorderSizePixel = 0
Container.Position = UDim2.new(0.00441176491, 0, 0.0855105072, 0)
Container.Size = UDim2.new(0, 676, 0, 220)
Container.ScrollBarThickness = 0

MainContainer.Name = "MainContainer"
MainContainer.Parent = Container
MainContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainContainer.BackgroundTransparency = 1.000
MainContainer.Position = UDim2.new(0.0251479298, 0, 0.0322765, 0)
MainContainer.Size = UDim2.new(0, 663, 0, 591)

uigrid = Instance.new("UIGridLayout")
uigrid.Parent = MainContainer
uigrid.SortOrder = Enum.SortOrder.LayoutOrder
uigrid.CellPadding = UDim2.new(0, 20, 0, 20)
uigrid.CellSize = UDim2.new(0, 130, 0, 30)

LayerSystem.Name = "LayerSystem"
LayerSystem.Parent = Contents
LayerSystem.Active = true
LayerSystem.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LayerSystem.BackgroundTransparency = 10.000
LayerSystem.Size = UDim2.new(1, 0, 1, 0)

Main.Name = "Main"
Main.Parent = LayerSystem
Main.BackgroundColor3 = Color3.fromRGB(85, 0, 0)
Main.BackgroundTransparency = 1.000
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0, 5, 0, 5)
Main.Size = UDim2.new(1, -10, 1, -33)

LayerList.Name = "LayerList"
LayerList.Parent = Main
LayerList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LayerList.BackgroundTransparency = 1.000
LayerList.BorderSizePixel = 0
LayerList.ClipsDescendants = true
LayerList.Size = UDim2.new(0, 200, 1, 0)
LayerList.ZIndex = 2

TopDecor.Name = "TopDecor"
TopDecor.Parent = LayerList
TopDecor.BackgroundColor3 =  Color3.fromHex(colorid)
TopDecor.BorderSizePixel = 0
TopDecor.Position = UDim2.new(-0.0250000004, 0, 0, 0)
TopDecor.Size = UDim2.new(1.02499998, 0, 0, 19)
TopDecor.ZIndex = 3

Top_2.Name = "Top"
Top_2.Parent = TopDecor
Top_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Top_2.BackgroundTransparency = 0.500
Top_2.BorderSizePixel = 0
Top_2.Size = UDim2.new(1, 0, 0, 1)
Top_2.ZIndex = 4

Bottom_2.Name = "Bottom"
Bottom_2.Parent = TopDecor
Bottom_2.AnchorPoint = Vector2.new(0, 1)
Bottom_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Bottom_2.BackgroundTransparency = 0.500
Bottom_2.BorderSizePixel = 0
Bottom_2.Position = UDim2.new(0, 0, 1, 0)
Bottom_2.Size = UDim2.new(1, 0, 0, 1)
Bottom_2.ZIndex = 4

Resize.Name = "Resize"
Resize.Parent = TopDecor
Resize.AnchorPoint = Vector2.new(1, 0)
Resize.BackgroundColor3 =  Color3.fromHex(colorid)
Resize.BorderSizePixel = 0
Resize.Position = UDim2.new(1, 0, 0, 1)
Resize.Size = UDim2.new(0, 6, 1, -2)
Resize.ZIndex = 4
Resize.AutoButtonColor = false

DragTrackItem.Name = "DragTrackItem"
DragTrackItem.Parent = TopDecor
DragTrackItem.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DragTrackItem.BackgroundTransparency = 1.000
DragTrackItem.Position = UDim2.new(0, 0, 0, 1)
DragTrackItem.Size = UDim2.new(1, -10, 0, 16)
DragTrackItem.Visible = false
DragTrackItem.ZIndex = 4
DragTrackItem.Font = Enum.Font.Code
DragTrackItem.Text = "ass"
DragTrackItem.TextColor3 = Color3.fromRGB(246, 142, 31)
DragTrackItem.TextSize = 14.000
DragTrackItem.TextXAlignment = Enum.TextXAlignment.Right

Stripes_2.Name = "Stripes"
Stripes_2.Parent = LayerList
Stripes_2.AnchorPoint = Vector2.new(0, 1)
Stripes_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Stripes_2.BackgroundTransparency = 1.000
Stripes_2.BorderSizePixel = 0
Stripes_2.Position = UDim2.new(0, 0, 1, 0)
Stripes_2.Size = UDim2.new(1, 0, 1, -19)
Stripes_2.BottomImage = ""
Stripes_2.CanvasSize = UDim2.new(1, 0, 0, 357)
Stripes_2.MidImage = ""
Stripes_2.ScrollBarThickness = 6
Stripes_2.ScrollingEnabled = false
Stripes_2.TopImage = ""

MoveLine.Name = "MoveLine"
MoveLine.Parent = Main
MoveLine.BackgroundColor3 = Color3.fromRGB(246, 142, 31)
MoveLine.BackgroundTransparency = 0.500
MoveLine.BorderColor3 = Color3.fromRGB(0, 0, 0)
MoveLine.Position = UDim2.new(0, -4, 0, 114)
MoveLine.Size = UDim2.new(1, 8, 0, 3)
MoveLine.Visible = false
MoveLine.ZIndex = 5

Background_2.Name = "Background"
Background_2.Parent = Main
Background_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Background_2.BackgroundTransparency = 1.000
Background_2.BorderSizePixel = 0
Background_2.Size = UDim2.new(1, 0, 1, 0)
Background_2.ZIndex = 0
Background_2.ScaleType = Enum.ScaleType.Crop

Timeline.Name = "Timeline"
Timeline.Parent = Main
Timeline.Active = true
Timeline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Timeline.BackgroundTransparency = 1.000
Timeline.BorderSizePixel = 0
Timeline.ClipsDescendants = true
Timeline.Position = UDim2.new(0, 200, 0, 0)
Timeline.Size = UDim2.new(1, -200, 1, 0)
Timeline.ZIndex = 2

FrameRegion.Name = "FrameRegion"
FrameRegion.Parent = Timeline
FrameRegion.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FrameRegion.BackgroundTransparency = 1.000
FrameRegion.Position = UDim2.new(0, 14, 0, 0)
FrameRegion.Size = UDim2.new(1, -30, 1, 0)

Scalable.Name = "Scalable"
Scalable.Parent = FrameRegion
Scalable.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Scalable.BackgroundTransparency = 1.000
Scalable.BorderSizePixel = 0
Scalable.Size = UDim2.new(1, 0, 1, 0)
Scalable.ZIndex = 3

Layers.Name = "Layers"
Layers.Parent = Scalable
Layers.AnchorPoint = Vector2.new(0, 1)
Layers.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Layers.BackgroundTransparency = 1.000
Layers.BorderSizePixel = 0
Layers.ClipsDescendants = false
Layers.Position = UDim2.new(0, 0, 1, 0)
Layers.Size = UDim2.new(1, 0, 1, -19)
Layers.ZIndex = 4
Layers.BottomImage = "rbxassetid://2070896802"
Layers.CanvasSize = UDim2.new(1, 0, 0, 357)
Layers.MidImage = "rbxassetid://2070896802"
Layers.ScrollBarThickness = 0
Layers.ScrollingEnabled = false
Layers.TopImage = "rbxassetid://2070896802"

UIListLayout_3.Parent = Layers
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder

Frame_2.Parent = Layers
Frame_2.BackgroundTransparency = 1.000
Frame_2.LayoutOrder = 1
Frame_2.Size = UDim2.new(1, 0, 0, 357)

UIListLayout_4.Parent = Frame_2
UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder

Timeline_2.Name = "Timeline"
Timeline_2.Parent = Frame_2
Timeline_2.Active = true
Timeline_2.BackgroundColor3 = Color3.fromRGB(123, 69, 15)
Timeline_2.BackgroundTransparency = 1.000
Timeline_2.BorderSizePixel = 0
Timeline_2.LayoutOrder = 1
Timeline_2.Size = UDim2.new(1, 0, 0, 21)
Timeline_2.ZIndex = 2

Top_3.Name = "Top"
Top_3.Parent = Timeline_2
Top_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Top_3.BackgroundTransparency = 0.750
Top_3.BorderSizePixel = 0
Top_3.Position = UDim2.new(0, -15, 0, 0)
Top_3.Size = UDim2.new(1, 512, 0, 1)
Top_3.Visible = false
Top_3.ZIndex = 4

Bottom_3.Name = "Bottom"
Bottom_3.Parent = Timeline_2
Bottom_3.AnchorPoint = Vector2.new(0, 1)
Bottom_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Bottom_3.BackgroundTransparency = 0.750
Bottom_3.BorderSizePixel = 0
Bottom_3.Position = UDim2.new(0, -15, 1, 0)
Bottom_3.Size = UDim2.new(1, 512, 0, 1)
Bottom_3.ZIndex = 4

SelectionBox.Name = "SelectionBox"
SelectionBox.Parent = Scalable
SelectionBox.AnchorPoint = Vector2.new(0, 1)
SelectionBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SelectionBox.BackgroundTransparency = 1.000
SelectionBox.BorderSizePixel = 0
SelectionBox.Position = UDim2.new(0, -14, 1, 0)
SelectionBox.Size = UDim2.new(1, 28, 1, -19)
SelectionBox.ZIndex = 4
SelectionBox.BottomImage = "rbxassetid://2070896802"
SelectionBox.CanvasSize = UDim2.new(1, 0, 0, 357)
SelectionBox.MidImage = "rbxassetid://2070896802"
SelectionBox.ScrollBarThickness = 0
SelectionBox.ScrollingEnabled = false
SelectionBox.TopImage = "rbxassetid://2070896802"

SelectionBoxArea.Name = "SelectionBoxArea"
SelectionBoxArea.Parent = SelectionBox
SelectionBoxArea.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SelectionBoxArea.BackgroundTransparency = 1.000
SelectionBoxArea.BorderSizePixel = 0
SelectionBoxArea.Size = UDim2.new(1, 0, 1, 0)
SelectionBoxArea.ZIndex = 3

SelBox.Name = "SelBox"
SelBox.Parent = SelectionBoxArea
SelBox.BackgroundColor3 = Color3.fromRGB(246, 142, 31)
SelBox.BackgroundTransparency = 0.750
SelBox.BorderColor3 = Color3.fromRGB(246, 142, 31)
SelBox.BorderSizePixel = 0
SelBox.ClipsDescendants = true
SelBox.Visible = false
SelBox.ZIndex = 11

Line_5.Name = "Line"
Line_5.Parent = SelBox
Line_5.BackgroundColor3 = Color3.fromRGB(246, 142, 31)
Line_5.BorderColor3 = Color3.fromRGB(246, 142, 31)
Line_5.BorderSizePixel = 0
Line_5.Size = UDim2.new(0, 1, 1, 0)
Line_5.ZIndex = 12

Line_6.Name = "Line"
Line_6.Parent = SelBox
Line_6.BackgroundColor3 = Color3.fromRGB(246, 142, 31)
Line_6.BorderColor3 = Color3.fromRGB(246, 142, 31)
Line_6.BorderSizePixel = 0
Line_6.Size = UDim2.new(1, 0, 0, 1)
Line_6.ZIndex = 12

Line_7.Name = "Line"
Line_7.Parent = SelBox
Line_7.AnchorPoint = Vector2.new(0, 1)
Line_7.BackgroundColor3 = Color3.fromRGB(246, 142, 31)
Line_7.BorderColor3 = Color3.fromRGB(246, 142, 31)
Line_7.BorderSizePixel = 0
Line_7.Position = UDim2.new(0, 0, 1, 0)
Line_7.Size = UDim2.new(1, 0, 0, 1)
Line_7.ZIndex = 12

Line_8.Name = "Line"
Line_8.Parent = SelBox
Line_8.AnchorPoint = Vector2.new(1, 0)
Line_8.BackgroundColor3 = Color3.fromRGB(246, 142, 31)
Line_8.BorderColor3 = Color3.fromRGB(246, 142, 31)
Line_8.BorderSizePixel = 0
Line_8.Position = UDim2.new(1, 0, 0, 0)
Line_8.Size = UDim2.new(0, 1, 1, 0)
Line_8.ZIndex = 12


TopDecor_2.Name = "TopDecor"
TopDecor_2.Parent = Timeline
TopDecor_2.Active = false
TopDecor_2.BackgroundColor3 =  Color3.fromHex(colorid)
TopDecor_2.BorderSizePixel = 0
TopDecor_2.Selectable = false
TopDecor_2.Size = UDim2.new(1, 0, 0, 19)
TopDecor_2.ZIndex = 7
TopDecor_2.AutoButtonColor = false

Bottom_4.Name = "Bottom"
Bottom_4.Parent = TopDecor_2
Bottom_4.AnchorPoint = Vector2.new(0, 1)
Bottom_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Bottom_4.BackgroundTransparency = 0.500
Bottom_4.BorderSizePixel = 0
Bottom_4.Position = UDim2.new(0, 0, 1, 0)
Bottom_4.Size = UDim2.new(1, 0, 0, 1)
Bottom_4.ZIndex = 8

Top_4.Name = "Top"
Top_4.Parent = TopDecor_2
Top_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Top_4.BackgroundTransparency = 0.500
Top_4.BorderSizePixel = 0
Top_4.Size = UDim2.new(1, 0, 0, 1)
Top_4.ZIndex = 8

Line_9.Name = "Line"
Line_9.Parent = Timeline
Line_9.AnchorPoint = Vector2.new(1, 0)
Line_9.BackgroundColor3 =  Color3.fromHex(colorid)
Line_9.BorderSizePixel = 0
Line_9.Position = UDim2.new(1, 0, 0, 16)
Line_9.Size = UDim2.new(0, 1, 1, -16)
Line_9.ZIndex = 6

StatusBar.Name = "StatusBar"
StatusBar.Parent = LayerSystem
StatusBar.AnchorPoint = Vector2.new(0, 1)
StatusBar.BackgroundColor3 = Color3.fromRGB(26, 32, 40)
StatusBar.BackgroundTransparency = 1.000
StatusBar.BorderColor3 = Color3.fromRGB(195, 123, 45)
StatusBar.BorderSizePixel = 0
StatusBar.Position = UDim2.new(0, 0, 1, 0)
StatusBar.Size = UDim2.new(1, 0, 0, 22)

Decor_3.Name = "Decor"
Decor_3.Parent = StatusBar
Decor_3.BackgroundColor3 =  Color3.fromHex(colorid)
Decor_3.BorderSizePixel = 0
Decor_3.Position = UDim2.new(0, 0, 0, -1)
Decor_3.Size = UDim2.new(1, 0, 0, 1)

Zoom.Name = "Zoom"
Zoom.Parent = StatusBar
Zoom.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Zoom.BackgroundTransparency = 1.000
Zoom.Position = UDim2.new(0, 27, 0, 0)
Zoom.Size = UDim2.new(0, 155, 1, 0)
Zoom.ZIndex = 3

local function ZURCG_fake_script() -- Close.Script 
	local script = Instance.new('Script', Close)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Parent.Parent.Parent.MoonLIB:Destroy()
	end)
end
coroutine.wrap(ZURCG_fake_script)()
local function PPJQ_fake_script() -- Frame.Script 
	local script = Instance.new('Script', Frame)

	script.Parent.Draggable = true
	script.Parent.Active = true
	script.Parent.Selectable = true
end
coroutine.wrap(PPJQ_fake_script)()


local EpicLib = {}

function EpicLib:CreateTab(text)
    text = text or "NewTab"

         
    local MainButton = Instance.new("ImageButton")
    local Label = Instance.new("TextLabel")
    local Hover = Instance.new("Frame")
    local Line = Instance.new("Frame")
    local Line_2 = Instance.new("Frame")
    local Line_3 = Instance.new("Frame")
    local Line_4 = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")
    local egrid = Instance.new("UIGridLayout")
    local MainContainer = Instance.new("Frame")
    local UIGridLayout = Instance.new("UIGridLayout")
    local stringedinstance = Instance.new("StringValue")
    MainButton.Name = "MainButton"
    MainButton.Parent = Buttons
    MainButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    MainButton.BackgroundTransparency = 1.000
    MainButton.BorderSizePixel = 0
    MainButton.LayoutOrder = 3
    MainButton.Size = UDim2.new(0, 40, 1, -2)
    MainButton.ZIndex = 2
    MainButton.ImageTransparency = 1.000
    
    Label.Name = "Label"
    Label.Parent = MainButton
    Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Label.BackgroundTransparency = 1.000
    Label.Size = UDim2.new(1, 0, 1, 0)
    Label.ZIndex = 4
    Label.Font = Enum.Font.Code
    Label.Text = text
    Label.TextColor3 = Color3.fromHex(colorid)
    Label.TextSize = 14.000
    
    Hover.Name = "Hover"
    Hover.Parent = MainButton
    Hover.Active = true
    Hover.BackgroundColor3 = Color3.fromRGB(246, 142, 31)
    Hover.BackgroundTransparency = 1.000
    Hover.BorderSizePixel = 0
    Hover.ClipsDescendants = true
    Hover.Size = UDim2.new(1, 0, 1, 1)
    Hover.Visible = false
    Hover.ZIndex = 3
    
    Line.Name = "Line"
    Line.Parent = Hover
    Line.BackgroundColor3 = Color3.fromRGB(246, 142, 31)
    Line.BackgroundTransparency = 1.000
    Line.BorderSizePixel = 0
    Line.Size = UDim2.new(0, 1, 1, 0)
    Line.ZIndex = 4
    
    Line_2.Name = "Line"
    Line_2.Parent = Hover
    Line_2.AnchorPoint = Vector2.new(1, 0)
    Line_2.BackgroundColor3 = Color3.fromRGB(246, 142, 31)
    Line_2.BackgroundTransparency = 1.000
    Line_2.BorderSizePixel = 0
    Line_2.Position = UDim2.new(1, 0, 0, 0)
    Line_2.Size = UDim2.new(0, 1, 1, 0)
    Line_2.ZIndex = 4
    
    Line_3.Name = "Line"
    Line_3.Parent = Hover
    Line_3.BackgroundColor3 = Color3.fromRGB(246, 142, 31)
    Line_3.BackgroundTransparency = 1.000
    Line_3.BorderSizePixel = 0
    Line_3.Size = UDim2.new(1, 0, 0, 1)
    Line_3.ZIndex = 4
    
    Line_4.Name = "Line"
    Line_4.Parent = Hover
    Line_4.AnchorPoint = Vector2.new(0, 1)
    Line_4.BackgroundColor3 = Color3.fromRGB(246, 142, 31)
    Line_4.BackgroundTransparency = 1.000
    Line_4.BorderSizePixel = 0
    Line_4.Position = UDim2.new(0, 0, 1, 0)
    Line_4.Size = UDim2.new(1, 0, 0, 1)
    Line_4.ZIndex = 4
    
    TextLabel.Parent = Line_4
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.Size = UDim2.new(0, 200, 0, 50)
    TextLabel.Font = Enum.Font.SourceSans
    TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.TextSize = 14.000

        
    MainButton.MouseEnter:Connect(function()
    Hover.Visible = true
    end)
       
    MainButton.MouseLeave:Connect(function()
        Hover.Visible = false
    end)
    


    --Properties:
    
    MainContainer.Name = text
    MainContainer.Parent = Container
    MainContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    MainContainer.BackgroundTransparency = 1.000
    MainContainer.Position = UDim2.new(0.0250000004, 0, 0.0350000001, 0)
    MainContainer.Size = UDim2.new(0, 663, 0, 591)
    
        firstthing = Container:GetChildren()[2]
        secondthing = Container:GetChildren()[3]
    firstthing.Visible = false
    
    UIGridLayout.Parent = MainContainer
    UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIGridLayout.CellPadding = UDim2.new(0, 20, 0, 20)
    UIGridLayout.CellSize = UDim2.new(0, 145, 0, 30)

 
    MainButton.MouseButton1Click:Connect(function()
    for i,v in next, Container:GetChildren() do
        v.Visible = false

    end
    MainContainer.Visible = true
    egrid.Parent = MainContainer
    egrid.SortOrder = Enum.SortOrder.LayoutOrder
    egrid.CellPadding = UDim2.new(0, 20, 0, 20)
    egrid.CellSize = UDim2.new(0, 130, 0, 30)
    end)
    end


function EpicLib:CreateLabel(text, pathname)
local UILabel = Instance.new("Frame")
local useless1 = Instance.new("Frame")
local useless2 = Instance.new("Frame")
local useless3 = Instance.new("Frame")

local UILabelText = Instance.new("TextLabel")


UILabel.Name = "UILabel"
UILabel.Parent = Container[pathname]
UILabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UILabel.Size = UDim2.new(0, 100, 0, 100)

useless1.Name = "useless1"
useless1.Parent = Container[pathname]
useless1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
useless1.BackgroundTransparency = 1
useless1.Size = UDim2.new(0, 100, 0, 100)

useless2.Name = "useless2"
useless2.Parent = Container[pathname]
useless2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
useless2.BackgroundTransparency = 1
useless2.Size = UDim2.new(0, 100, 0, 100)

useless3.Name = "useless3"
useless3.Parent = Container[pathname]
useless3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
useless3.BackgroundTransparency = 1
useless3.Size = UDim2.new(0, 100, 0, 100)

UILabelText.Name = "UILabelText"
UILabelText.Parent = UILabel
UILabelText.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
UILabelText.BorderColor3 = Color3.fromHex(colorid)
UILabelText.Position = UDim2.new(0, 0, -0.0456852801, 0)
UILabelText.Size = UDim2.new(0, 641, 0, 34)
UILabelText.Font = Enum.Font.SourceSans
UILabelText.Text = text
UILabelText.TextColor3 = Color3.fromHex(colorid)
UILabelText.TextSize = 14.000
end
function EpicLib:CreateButton(text, pathname, callback)
    local callback = callback or function() end
    local BTNLib = Instance.new("TextButton")

    BTNLib.Name = "BTNLib"
    BTNLib.Parent = Container[pathname]
    BTNLib.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
    BTNLib.BorderColor3 = Color3.fromHex(colorid)
    BTNLib.Size = UDim2.new(0, 151, 0, 21)
    BTNLib.ZIndex = 9999999
    BTNLib.Font = Enum.Font.Code
    BTNLib.Text = text
    BTNLib.TextColor3 = Color3.fromHex(colorid)
    BTNLib.TextScaled = false
    BTNLib.TextSize = 14.000
    BTNLib.TextWrapped = true

    BTNLib.MouseButton1Click:Connect(function()
        pcall(callback)
    end)
end

function EpicLib:CreateToggle(text, pathname, callback)
    local actions = {}
    local enabled = false
    text = text or "Toggle"
    callback = callback or function() end
    local ToggleFrame = Instance.new("Frame")
    local ToggleName = Instance.new("TextLabel")
    local ToggleBTN = Instance.new("TextButton")

    ToggleFrame.Name = "ToggleFrame"
    ToggleFrame.Parent = Container[pathname]
    ToggleFrame.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
    ToggleFrame.BorderColor3 =  Color3.fromHex(colorid)
    ToggleFrame.Position = UDim2.new(0.277526408, 0, 0.152284265, 0)
    ToggleFrame.Size = UDim2.new(0, 100, 0, 36)

    ToggleName.Name = "ToggleName"
    ToggleName.Parent = ToggleFrame
    ToggleName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ToggleName.BackgroundTransparency = 1.000
    ToggleName.Position = UDim2.new(0.412, 0,0.167, 0)
    ToggleName.Size = UDim2.new(0, 58, 0, 20)
    ToggleName.Font = Enum.Font.Code
    ToggleName.Text = text
    ToggleName.TextColor3 =  Color3.fromHex(colorid)
    ToggleName.TextScaled = true
    ToggleName.TextSize = 14.000
    ToggleName.TextWrapped = true

    ToggleBTN.Name = "ToggleBTN"
    ToggleBTN.Parent = ToggleFrame
    ToggleBTN.BackgroundColor3 = Color3.fromHex(colorid)
    ToggleBTN.BackgroundTransparency = 0.5
    ToggleBTN.BorderSizePixel = 0
    ToggleBTN.Position = UDim2.new(0.037, 0,0.2, 0)
    ToggleBTN.Size = UDim2.new(0, 30,0, 19)
    ToggleBTN.ZIndex = 6999
    ToggleBTN.Font = Enum.Font.SourceSans
    ToggleBTN.Text = " "
    ToggleBTN.TextColor3 = Color3.fromRGB(0, 0, 0)
    ToggleBTN.TextSize = 14.000

    local function Fire()
        enabled = not enabled
        ToggleBTN.BackgroundTransparency = enabled and 0 or 0.5
        pcall(callback, enabled)
    end

    ToggleBTN.MouseButton1Click:Connect(Fire)
    
    function actions:Set(arg)
    ToggleBTN.BackgroundTransparency = enabled and 0 or 0.5
    pcall(callback, arg)
    end

    function EpicLib:CreateSlider(text, pathname, minvalue, maxvalue, callback)

        text = text or "Slider"
        minvalue = minvalue or 0
        maxvalue = maxvalue or 100

        callback = callback or function() end


        local SliderFrame = Instance.new("Frame")
        local SliderAmount = Instance.new("TextBox")
        local SliderName = Instance.new("TextLabel")
        local BackSlider = Instance.new("Frame")
        local TASlider = Instance.new("Frame")
        local TASBTN = Instance.new("TextButton")

        SliderFrame.Name = "SliderFrame"
        SliderFrame.Parent = Container[pathname]
        SliderFrame.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
        SliderFrame.BorderColor3 =  Color3.fromHex(colorid)
        SliderFrame.Position = UDim2.new(0.73001492, 0, 0.260575294, 0)
        SliderFrame.Size = UDim2.new(0, 130, 0, 40)

        SliderAmount.Name = "SliderAmount"
        SliderAmount.Parent = SliderFrame
        SliderAmount.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SliderAmount.BackgroundTransparency = 1.000
        SliderAmount.Position = UDim2.new(0.695, 0,0, 0)
        SliderAmount.Size = UDim2.new(0, 58, 0, 12)
        SliderAmount.Font = Enum.Font.SourceSans
        SliderAmount.PlaceholderColor3 =  Color3.fromHex(colorid)
        SliderAmount.Text = "0"
        SliderAmount.TextColor3 =  Color3.fromHex(colorid)
        SliderAmount.TextSize = 14.000

        SliderName.Name = "SliderName"
        SliderName.Parent = SliderFrame
        SliderName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SliderName.BackgroundTransparency = 1.000
        SliderName.Position = UDim2.new(-0.025, 0,0.09, 0)
        SliderName.Size = UDim2.new(0, 58, 0, 10)
        SliderName.Font = Enum.Font.Code
        SliderName.Text = text
        SliderName.TextColor3 =  Color3.fromHex(colorid)
        SliderName.TextScaled = true
        SliderName.TextSize = 14.000
        SliderName.TextWrapped = true

        BackSlider.Name = "BackSlider"
        BackSlider.Parent = SliderFrame
        BackSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        BackSlider.Position = UDim2.new(0.0769230798, 0, 0.5, 0)
        BackSlider.Size = UDim2.new(0, 126,0, 7)
        BackSlider.BorderSizePixel = 0


TASlider.Name = "TASlider"
TASlider.Parent = SliderFrame
TASlider.BackgroundColor3 =  Color3.fromHex(colorid)
TASlider.Position = UDim2.new(0.0769230798, 0, 0.5, 0)
TASlider.Size = UDim2.new(0, 0,0, 7)
TASlider.BorderSizePixel = 0

TASBTN.Name = "TASBTN"
TASBTN.Parent = SliderFrame
TASBTN.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
TASBTN.BackgroundTransparency = 1.000
TASBTN.Position = UDim2.new(0.0769999996, 0, 0.5, 0)
TASBTN.Size = UDim2.new(0, 130,0, 7)
TASBTN.Font = Enum.Font.SourceSans
TASBTN.Text = " "
TASBTN.TextColor3 = Color3.fromRGB(0, 0, 0)
TASBTN.TextSize = 14.000
TASBTN.ZIndex = 999999999

        -----Variables-----
local mouse = game.Players.LocalPlayer:GetMouse()
local uis = game:GetService("UserInputService")
local Value;
 
 
 
 
-----Main Code-----
 
TASBTN.MouseButton1Click:Connect(function()
    Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 126) * TASlider.AbsoluteSize.X) + tonumber(minvalue)) or SliderAmount.Text
    pcall(function()
        callback(Value)
    end)
    TASlider.Size = UDim2.new(0, math.clamp(mouse.X - TASlider.AbsolutePosition.X, 0, 126), 0, 7)
    moveconnection = mouse.Move:Connect(function()
        SliderAmount.Text = Value
        Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 126) * TASlider.AbsoluteSize.X) + tonumber(minvalue)) or SliderAmount.Text
        pcall(function()
            callback(Value)
            SliderAmount.Text = Value
        end)
        TASlider.Size = UDim2.new(0, math.clamp(mouse.X - TASlider.AbsolutePosition.X, 0, 126), 0, 7)
    end)
    releaseconnection = uis.InputEnded:Connect(function(Mouse)
        if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
            Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 126) * TASlider.AbsoluteSize.X) + tonumber(minvalue)) or SliderAmount.Text
            pcall(function()
                callback(Value)
                SliderAmount.Text = Value
            end)
            TASlider.Size = UDim2.new(0, math.clamp(mouse.X - TASlider.AbsolutePosition.X, 0, 126), 0, 7)
            moveconnection:Disconnect()
            releaseconnection:Disconnect()
        end
    end)


end)
end

function EpicLib:CreateDropdown(text, pathname, list, callback)

    local dropvalue = 0
    local function dropthing()
        dropvalue = dropvalue + 31
    end
    local IsDropped = false

    callback = callback or function()end

    list = list or {}
    text = text or ""

    local Dropdown = Instance.new("Frame")
    local DropdownBTN = Instance.new("TextButton")
    local DropdownFrame = Instance.new("Frame")
    local UIGridLayout = Instance.new("UIGridLayout")
    local DropName = Instance.new("TextLabel")
    local DropFrameContainer = Instance.new("Frame")


    Dropdown.Name = "Dropdown"
    Dropdown.Parent = Container[pathname]
    Dropdown.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
    Dropdown.BorderColor3 =  Color3.fromHex(colorid)
    Dropdown.Position = UDim2.new(0.458521873, 0, 0.260575294, 0)
    Dropdown.Size = UDim2.new(0, 100, 0, 36)
    


DropName.Name = "DropName"
DropName.Parent = Dropdown
DropName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DropName.BackgroundTransparency = 1.000
DropName.Position = UDim2.new(0.0884615481, 0, 0.166666672, 0)
DropName.Size = UDim2.new(0, 58, 0, 20)
DropName.Font = Enum.Font.Code
DropName.Text = " "..text
DropName.TextColor3 =  Color3.fromHex(colorid)
DropName.TextScaled = true
DropName.TextSize = 14.000
DropName.TextWrapped = true

DropdownFrame.Name = "DropdownFrame"
DropdownFrame.Parent = Dropdown
DropdownFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DropdownFrame.BackgroundTransparency = 1.000
DropdownFrame.Position = UDim2.new(0, 0, 1, 0)
DropdownFrame.Size = UDim2.new(0, 130, 0, 89)
DropdownFrame.Visible = false
DropdownFrame.ZIndex = 6999999

DropFrameContainer.Name = "DropFrameContainer"
DropFrameContainer.Parent = DropdownFrame
DropFrameContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DropFrameContainer.BackgroundTransparency = 1.000
DropFrameContainer.Position = UDim2.new(-0.010, 0.0001,0, 1)
DropFrameContainer.Size = UDim2.new(0, 150, 0, dropvalue)
DropFrameContainer.ZIndex = 9999999
DropFrameContainer.ClipsDescendants = true

DropdownBTN.Name = "DropdownBTN"
DropdownBTN.Parent = Dropdown
DropdownBTN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DropdownBTN.BackgroundTransparency = 1.000
DropdownBTN.Position = UDim2.new(0.535000026, 0, 0.166999996, 0)
DropdownBTN.Size = UDim2.new(0, 58, 0, 20)
DropdownBTN.Font = Enum.Font.SourceSans
DropdownBTN.Text = "+"
DropdownBTN.TextColor3 =  Color3.fromHex(colorid)
DropdownBTN.TextScaled = true
DropdownBTN.TextSize = 14.000
DropdownBTN.TextWrapped = true
DropdownBTN.ZIndex = 999999

DropdownBTN.MouseButton1Click:Connect(function()
 if IsDropped then
    IsDropped = false
    DropdownFrame.Visible = false
    DropdownBTN.Text = "+"

 else 
    IsDropped = true
    DropdownFrame.Visible = true
    DropdownBTN.Text = "-"
 end
end)

 UIGridLayout.Parent = DropFrameContainer
 UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
 UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
 UIGridLayout.CellPadding = UDim2.new(0, 5, 0, 0)
 UIGridLayout.CellSize = UDim2.new(0, 145, 0, 30)

for i,v in next, list do
    local BTNLib = Instance.new("TextButton")

    dropthing()
    DropFrameContainer.Size = UDim2.new(0, 147, 0, dropvalue)
    BTNLib.Name = "BTNLib"
    BTNLib.Parent = DropFrameContainer
    BTNLib.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
    BTNLib.BorderColor3 =  Color3.fromHex(colorid)
    BTNLib.Size = UDim2.new(0, 150, 0, 59)
    BTNLib.ZIndex = 999999999
    BTNLib.Font = Enum.Font.Code
    BTNLib.Text = v
    BTNLib.TextColor3 =  Color3.fromHex(colorid)
    BTNLib.TextScaled = false
    BTNLib.TextSize = 14.000
    BTNLib.TextWrapped = true

    BTNLib.MouseButton1Click:Connect(function()
        DropName.Text = " "..v
        callback(v)
        IsDropped = false
        DropdownFrame.Visible = false
        DropdownBTN.Text = "+"
    end)
end
end
end
return EpicLib
end



return lib
