local library = {}
library.flags = {}
local HttpService = game:GetService("HttpService")
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Hb = game:GetService("RunService").Heartbeat;
local UIS = game:GetService("UserInputService")
local CG = game:GetService("CoreGui")

local HomeTabGridLayoutAdd = 20

function library:CreateWindow()
	local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

	local DumbHub = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local MainUICorner = Instance.new("UICorner")
	local TopBar = Instance.new("Frame")
	local TopBarUICorner = Instance.new("UICorner")
	local TopBarExtension = Instance.new("Frame")
	local TopBarTitle = Instance.new("TextLabel")
	local TopBarTitleUIPadding = Instance.new("UIPadding")
	local TopBarClose = Instance.new("ImageButton")
	local TopBarMinimize = Instance.new("ImageButton")
	local Navigatin = Instance.new("Frame")
	local NavigationButtonHolder = Instance.new("Frame")
	local NavigationButtonHolderUIPadding = Instance.new("UIPadding")
	local NavigationButtonHolderUIListLayout = Instance.new("UIListLayout")
	local NavigationUICorner = Instance.new("UICorner")
	local ContientContainer = Instance.new("Frame")
	local ContientContainerFade = Instance.new("Frame")
	local ContientContainerFadeUIGradient = Instance.new("UIGradient")
	local OpenButton = Instance.new("TextButton")
	local OpenButtonUICorner = Instance.new("UICorner")


	function dragify(Frame)
		dragToggle = nil
		local dragSpeed = 0
		dragInput = nil
		dragStart = nil
		local dragPos = nil
		function updateInput(input)
			local Delta = input.Position - dragStart
			local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
		end
		Frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
				dragToggle = true
				dragStart = input.Position
				startPos = Frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)
		Frame.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if input == dragInput and dragToggle then
				updateInput(input)
			end
		end)
	end

	dragify(Main)





	DumbHub.Name = "DumbHub"
	DumbHub.Parent = game:GetService("CoreGui")

	Main.Name = "Main"
	Main.Parent = DumbHub
	Main.AnchorPoint = Vector2.new(0.5, 0.5)
	Main.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	Main.Position = UDim2.new(0.495885849, 0, 0.435246646, 0)
	Main.Size = UDim2.new(0, 450, 0, 300)

	MainUICorner.CornerRadius = UDim.new(0, 6)
	MainUICorner.Name = "MainUICorner"
	MainUICorner.Parent = Main

	TopBar.Name = "TopBar"
	TopBar.Parent = Main
	TopBar.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
	TopBar.Size = UDim2.new(1, 0, 0, 30)

	TopBarUICorner.CornerRadius = UDim.new(0, 6)
	TopBarUICorner.Name = "TopBarUICorner"
	TopBarUICorner.Parent = TopBar

	TopBarExtension.Name = "TopBarExtension"
	TopBarExtension.Parent = TopBar
	TopBarExtension.AnchorPoint = Vector2.new(0, 1)
	TopBarExtension.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
	TopBarExtension.BorderSizePixel = 0
	TopBarExtension.Position = UDim2.new(0, 0, 1, 0)
	TopBarExtension.Size = UDim2.new(1, 0, 0.5, 0)

	TopBarTitle.Name = "TopBarTitle"
	TopBarTitle.Parent = TopBar
	TopBarTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TopBarTitle.BackgroundTransparency = 1.000
	TopBarTitle.Size = UDim2.new(0.5, 0, 1, 0)
	TopBarTitle.Font = Enum.Font.Gotham
	TopBarTitle.Text = GameName
	TopBarTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
	TopBarTitle.TextSize = 14.000
	TopBarTitle.TextXAlignment = Enum.TextXAlignment.Left

	TopBarTitleUIPadding.Name = "TopBarTitleUIPadding"
	TopBarTitleUIPadding.Parent = TopBarTitle
	TopBarTitleUIPadding.PaddingLeft = UDim.new(0, 10)
	TopBarTitleUIPadding.PaddingTop = UDim.new(0, 1)

	TopBarClose.Name = "TopBarClose"
	TopBarClose.Parent = TopBar
	TopBarClose.AnchorPoint = Vector2.new(1, 0)
	TopBarClose.BackgroundTransparency = 1.000
	TopBarClose.Position = UDim2.new(1, -2, 0, 4)
	TopBarClose.Size = UDim2.new(0, 22, 0, 22)
	TopBarClose.Image = "rbxassetid://2777727756"

	TopBarMinimize.Name = "TopBarClose"
	TopBarMinimize.Parent = TopBar
	TopBarMinimize.AnchorPoint = Vector2.new(1, 0)
	TopBarMinimize.BackgroundTransparency = 1.000
	TopBarMinimize.Position = UDim2.new(0.968888879, -2, -0.266666681, 4)
	TopBarMinimize.Size = UDim2.new(0, 36, 0, 37)
	TopBarMinimize.Image = "rbxassetid://2777862738"

	Navigatin.Name = "Navigatin"
	Navigatin.Parent = Main
	Navigatin.BackgroundColor3 = Color3.fromRGB(81, 81, 81)
	Navigatin.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Navigatin.BorderSizePixel = 0
	Navigatin.Position = UDim2.new(0, 6, 0, 37)
	Navigatin.Size = UDim2.new(-0.0133333337, 120, 0.956666648, -30)

	NavigationButtonHolder.Name = "NavigationButtonHolder"
	NavigationButtonHolder.Parent = Navigatin
	NavigationButtonHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NavigationButtonHolder.BackgroundTransparency = 1.000
	NavigationButtonHolder.Size = UDim2.new(1, 0, 1, 0)

	NavigationButtonHolderUIPadding.Name = "NavigationButtonHolderUIPadding"
	NavigationButtonHolderUIPadding.Parent = NavigationButtonHolder
	NavigationButtonHolderUIPadding.PaddingBottom = UDim.new(0, 8)
	NavigationButtonHolderUIPadding.PaddingTop = UDim.new(0, 8)

	NavigationButtonHolderUIListLayout.Name = "NavigationButtonHolderUIListLayout"
	NavigationButtonHolderUIListLayout.Parent = NavigationButtonHolder
	NavigationButtonHolderUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	NavigationButtonHolderUIListLayout.Padding = UDim.new(0, 1)

	NavigationUICorner.CornerRadius = UDim.new(0, 6)
	NavigationUICorner.Name = "NavigationUICorner"
	NavigationUICorner.Parent = Navigatin

	ContientContainer.Name = "ContientContainer"
	ContientContainer.Parent = Main
	ContientContainer.AnchorPoint = Vector2.new(1, 0)
	ContientContainer.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
	ContientContainer.BackgroundTransparency = 1.000
	ContientContainer.Position = UDim2.new(1, -6, 0.00333333341, 36)
	ContientContainer.Size = UDim2.new(1, -133, 0.99666667, -42)

	ContientContainerFade.Name = "ContientContainerFade"
	ContientContainerFade.Parent = ContientContainer
	ContientContainerFade.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ContientContainerFade.BorderSizePixel = 0
	ContientContainerFade.Size = UDim2.new(1, 0, 0, 30)
	ContientContainerFade.Visible = false
	ContientContainerFade.ZIndex = 10

	ContientContainerFadeUIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(51, 51, 51)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(52, 52, 52))}
	ContientContainerFadeUIGradient.Rotation = 90
	ContientContainerFadeUIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(0.34, 0.24), NumberSequenceKeypoint.new(1.00, 0.98), NumberSequenceKeypoint.new(1.00, 0.00)}
	ContientContainerFadeUIGradient.Name = "ContientContainerFadeUIGradient"
	ContientContainerFadeUIGradient.Parent = ContientContainerFade

	OpenButton.Parent = DumbHub
	OpenButton.BackgroundColor3 = Color3.fromRGB(130, 0, 0)
	OpenButton.Position = UDim2.new(0.303001583, 0, 0.0117700528, 0)
	OpenButton.Size = UDim2.new(0, 892, 0, 19)
	OpenButton.Font = Enum.Font.SourceSans
	OpenButton.Text = "Press To Open"
	OpenButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	OpenButton.TextSize = 14.000
	OpenButton.Visible = false

	OpenButtonUICorner.Parent = OpenButton

	TopBarClose.MouseButton1Click:Connect(function()
		CG.DumbHub:Destroy()
	end)

	TopBarMinimize.MouseButton1Click:Connect(function()
		Main.Visible = false
		OpenButton.Visible = true
	end)

	OpenButton.MouseButton1Click:Connect(function()
		Main.Visible = true
		OpenButton.Visible = false
	end)


	local Category = {}
	function Category:new(TabName)
		assert(typeof(TabName) == "string", "specify type string for CreateNew function")

		local HomeTab = Instance.new("ScrollingFrame")
		local HomeTabUIPadding = Instance.new("UIPadding")

		local HomeTabGridLayout = Instance.new("UIGridLayout")

		local NavigationButtonHolderTemplate = Instance.new("TextButton")
		local NavigationButtonHolderUITemplatePadding = Instance.new("UIPadding")

		HomeTab.Name = TabName
		HomeTab.Parent = ContientContainer
		HomeTab.Active = true
		HomeTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		HomeTab.BackgroundTransparency = 1.000
		HomeTab.BorderSizePixel = 0
		HomeTab.Size = UDim2.new(1, 0, 1, 0)
		HomeTab.ScrollBarThickness = 0
		HomeTab.Visible = false

		HomeTabUIPadding.Name = "HomeTabUIPadding"
		HomeTabUIPadding.Parent = HomeTab
		HomeTabUIPadding.PaddingBottom = UDim.new(0, 1)
		HomeTabUIPadding.PaddingLeft = UDim.new(0, 1)
		HomeTabUIPadding.PaddingRight = UDim.new(0, 1)
		HomeTabUIPadding.PaddingTop = UDim.new(0, 1)

		HomeTabGridLayout.Name = "HomeTabGridLayout"
		HomeTabGridLayout.Parent = HomeTab
		HomeTabGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
		HomeTabGridLayout.CellPadding = UDim2.new(0, 0, 0, 6)
		HomeTabGridLayout.CellSize = UDim2.new(0, 315, 0, 30)

		NavigationButtonHolderTemplate.Name = TabName
		NavigationButtonHolderTemplate.Parent = NavigationButtonHolder
		NavigationButtonHolderTemplate.BackgroundColor3 = Color3.fromRGB(81, 81, 81)
		NavigationButtonHolderTemplate.BackgroundTransparency = 0.900
		NavigationButtonHolderTemplate.BorderSizePixel = 0
		NavigationButtonHolderTemplate.Position = UDim2.new(-0.131578952, 0, -0.00829875562, 0)
		NavigationButtonHolderTemplate.Size = UDim2.new(1, 0, 0, 24)
		NavigationButtonHolderTemplate.Font = Enum.Font.Ubuntu
		NavigationButtonHolderTemplate.Text = TabName
		NavigationButtonHolderTemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
		NavigationButtonHolderTemplate.TextSize = 18.000


		NavigationButtonHolderUITemplatePadding.Name = "NavigationButtonHolderUITemplatePadding"
		NavigationButtonHolderUITemplatePadding.Parent = NavigationButtonHolderTemplate


		NavigationButtonHolderTemplate.MouseButton1Click:Connect(function()
			for _,v in pairs(ContientContainer:GetChildren()) do
				if v:IsA("ScrollingFrame") then
					v.Visible = false
				end
			end
			HomeTab.Visible = true
		end)



		local Module = {}

		function Module:CreateButton(ButtonName, CallBack)
			assert(type(ButtonName) == "string", "specify type string for CreateButton() function")

			local Button = Instance.new("TextButton")
			local ButtonUICorner = Instance.new("UICorner")
			local ButtonTitle = Instance.new("TextLabel")
			local ButtonUIPadding = Instance.new("UIPadding")

			Button.Name = "Button"
			Button.Parent = HomeTab
			Button.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
			Button.Size = UDim2.new(1, 0, 0, 32)
			Button.Text = ""

			ButtonUICorner.CornerRadius = UDim.new(0, 4)
			ButtonUICorner.Name = "ButtonUICorner"
			ButtonUICorner.Parent = Button

			ButtonTitle.Name = "ButtonTitle"
			ButtonTitle.Parent = Button
			ButtonTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ButtonTitle.BackgroundTransparency = 1.000
			ButtonTitle.Size = UDim2.new(1, 0, 1, 0)
			ButtonTitle.Font = Enum.Font.Ubuntu
			ButtonTitle.Text = ButtonName
			ButtonTitle.TextColor3 = Color3.fromRGB(252, 252, 252)
			ButtonTitle.TextSize = 15.000

			ButtonUIPadding.Name = "ButtonUIPadding"
			ButtonUIPadding.Parent = Button
			ButtonUIPadding.PaddingBottom = UDim.new(0, 6)
			ButtonUIPadding.PaddingLeft = UDim.new(0, 6)
			ButtonUIPadding.PaddingRight = UDim.new(0, 6)
			ButtonUIPadding.PaddingTop = UDim.new(0, 6)

			HomeTab.CanvasSize = UDim2.new(0,0,0, HomeTabGridLayout.AbsoluteContentSize.Y + HomeTabGridLayoutAdd)

			Button.MouseButton1Click:Connect(CallBack)

		end

		function Module:CreateToggle(ToggleName, Repeat, CallBack)
			assert(type(ToggleName) == "string", "specify type string for CreateToggle() function")

			local Toggle = Instance.new("Frame")
			local ToggleUICorner = Instance.new("UICorner")
			local ToggleTitle = Instance.new("TextLabel")
			local ToggleUIPadding = Instance.new("UIPadding")
			local ToggleButton = Instance.new("TextButton")
			local ToggleButtonUICorner = Instance.new("UICorner")

			Toggle.Name = "Toggle"
			Toggle.Parent = HomeTab
			Toggle.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
			Toggle.Size = UDim2.new(1, 0, 0, 32)

			ToggleUICorner.CornerRadius = UDim.new(0, 4)
			ToggleUICorner.Name = "ToggleUICorner"
			ToggleUICorner.Parent = Toggle

			ToggleTitle.Name = "ToggleTitle"
			ToggleTitle.Parent = Toggle
			ToggleTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggleTitle.BackgroundTransparency = 1.000
			ToggleTitle.Size = UDim2.new(1, -26, 1, 0)
			ToggleTitle.Font = Enum.Font.Ubuntu
			ToggleTitle.Text = ToggleName
			ToggleTitle.TextColor3 = Color3.fromRGB(252, 252, 252)
			ToggleTitle.TextSize = 15.000
			ToggleTitle.TextXAlignment = Enum.TextXAlignment.Left

			ToggleUIPadding.Name = "ToggleUIPadding"
			ToggleUIPadding.Parent = Toggle
			ToggleUIPadding.PaddingBottom = UDim.new(0, 6)
			ToggleUIPadding.PaddingLeft = UDim.new(0, 6)
			ToggleUIPadding.PaddingRight = UDim.new(0, 6)
			ToggleUIPadding.PaddingTop = UDim.new(0, 6)

			ToggleButton.Name = "ToggleButton"
			ToggleButton.Parent = Toggle
			ToggleButton.AnchorPoint = Vector2.new(1, 0.5)
			ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggleButton.Position = UDim2.new(1, -3, 0.5, 0)
			ToggleButton.Size = UDim2.new(0, 16, 0, 16)
			ToggleButton.Text = ""

			ToggleButtonUICorner.CornerRadius = UDim.new(0, 2)
			ToggleButtonUICorner.Name = "ToggleButtonUICorner"
			ToggleButtonUICorner.Parent = ToggleButton

			HomeTab.CanvasSize = UDim2.new(0,0,0, HomeTabGridLayout.AbsoluteContentSize.Y + HomeTabGridLayoutAdd)

			local toggling = false
			local togCon = nil

			ToggleButton.MouseButton1Click:Connect(function()
				toggling = not toggling

				library.flags[ToggleName] = toggling

				if Repeat then
					if toggling then
						togCon = RunService.RenderStepped:Connect(CallBack)
						ToggleButton.BackgroundColor3 = Color3.new(0.078431, 0.827450, 0.501960)
					else
						togCon:Disconnect()
						ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					end
				else
					if toggling then
						CallBack(toggling)
						ToggleButton.BackgroundColor3 = Color3.new(0.078431, 0.827450, 0.501960)
					else
						CallBack(toggling)
						ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					end
					--CallBack(toggling)
				end
			end)

		end

		function Module:CreateSlider(SliderName, Options, CallBack)
			assert(type(SliderName) == "string", "specify type string for CreateSlider() function")
			assert(type(Options) == "table", "specify type table for CreateSlider() function Example: {default = 1, min = 1, max = 16}")
			assert(type(CallBack) == "function", "specify type function for CreateSlider()")

			local Slider = Instance.new("Frame")
			local SliderUICorner = Instance.new("UICorner")
			local SliderTitle = Instance.new("TextLabel")
			local SliderUIPadding = Instance.new("UIPadding")
			local SliderBack = Instance.new("TextButton")
			local SliderBackUICorner = Instance.new("UICorner")
			local MainSlider = Instance.new("Frame")
			local MainSliderUICorner = Instance.new("UICorner")

			Slider.Name = "Slider"
			Slider.Parent = HomeTab
			Slider.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
			Slider.Size = UDim2.new(1, 0, 0, 38)

			SliderUICorner.CornerRadius = UDim.new(0, 4)
			SliderUICorner.Name = "SliderUICorner"
			SliderUICorner.Parent = Slider

			SliderTitle.Name = "SliderTitle"
			SliderTitle.Parent = Slider
			SliderTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SliderTitle.BackgroundTransparency = 1.000
			SliderTitle.Size = UDim2.new(1, -24, 1, -10)
			SliderTitle.Font = Enum.Font.Ubuntu
			SliderTitle.Text = SliderName
			SliderTitle.TextColor3 = Color3.fromRGB(252, 252, 252)
			SliderTitle.TextSize = 15.000
			SliderTitle.TextXAlignment = Enum.TextXAlignment.Left

			SliderUIPadding.Name = "SliderUIPadding"
			SliderUIPadding.Parent = Slider
			SliderUIPadding.PaddingBottom = UDim.new(0, 6)
			SliderUIPadding.PaddingLeft = UDim.new(0, 6)
			SliderUIPadding.PaddingRight = UDim.new(0, 6)
			SliderUIPadding.PaddingTop = UDim.new(0, 6)

			SliderBack.Name = "SliderBack"
			SliderBack.Parent = Slider
			SliderBack.AnchorPoint = Vector2.new(0, 1)
			SliderBack.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
			SliderBack.Position = UDim2.new(0, 0, 1, 0)
			SliderBack.Size = UDim2.new(1, 0, 0, 4)
			SliderBack.Text = ""

			SliderBackUICorner.CornerRadius = UDim.new(0, 4)
			SliderBackUICorner.Name = "SliderBackUICorner"
			SliderBackUICorner.Parent = SliderBack

			MainSlider.Name = "MainSlider"
			MainSlider.Parent = SliderBack
			MainSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			MainSlider.Position = UDim2.new(0, 0, 0, 0)
			MainSlider.Size = UDim2.new(0, 0, 0, 8)

			MainSliderUICorner.CornerRadius = UDim.new(0, 4)
			MainSliderUICorner.Name = "MainSliderUICorner"
			MainSliderUICorner.Parent = MainSlider

			HomeTab.CanvasSize = UDim2.new(0,0,0, HomeTabGridLayout.AbsoluteContentSize.Y + HomeTabGridLayoutAdd)

			local mousedown = false

			UIS.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					mousedown = false
				end
			end)
			SliderBack.MouseButton1Down:Connect(function()
				mousedown = true
			end)
			SliderBack.MouseButton1Up:Connect(function()
				mousedown = false
			end)

			Hb:Connect(function()
				if mousedown then
					local mouse = game:GetService("UserInputService"):GetMouseLocation()
					local percent = (mouse.X - SliderBack.AbsolutePosition.X) / (SliderBack.AbsoluteSize.X + 35)
					percent = math.clamp(percent, 0, 1)
					local Value = Options.min + (Options.max - Options.min) * percent

					if Options.floor then
						Value = math.floor(Value)
					end

					MainSlider:TweenSize(UDim2.new(percent, 0, 1 ,0), "Out", "Quad", 0.02, true)
					Value = tonumber(string.format("%.2f", Value))
					SliderTitle.Text = ("%s: %s"):format(SliderName, Value)

					library.flags[SliderName] = Value
					CallBack(Value)

				end
			end)
		end

		function Module:CreateDropdown(DropdownName, ItemList, CallBack)
			assert(type(DropdownName) == "string", "specify type string for CreateDropdown() function")
			assert(type(ItemList) == "table", "specify type table for CreateDropdown() function Example: {'wow', 'your cool', 'gay'}")
			assert(type(CallBack) == "function", "specify type function for CreateDropdown()")

			local Dropdown = Instance.new("Frame")
			local DropdownUICorner = Instance.new("UICorner")
			local DropdownTitle = Instance.new("TextLabel")
			local DropdownArrow = Instance.new("ImageButton")
			local DropdownUIPadding = Instance.new("UIPadding")
			local DropdownOptionsHolder = Instance.new("ScrollingFrame")
			local DropdownOptionsHolderUIGridLayout = Instance.new("UIGridLayout")
			local DropdownOptionsHolderUIPadding = Instance.new("UIPadding")

			Dropdown.Name = "Dropdown"
			Dropdown.Parent = HomeTab
			Dropdown.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
			Dropdown.Position = UDim2.new(0, 0, 0.46875, 0)
			Dropdown.Size = UDim2.new(1, 0, 0.0199999996, 24)

			DropdownUICorner.CornerRadius = UDim.new(0, 4)
			DropdownUICorner.Name = "DropdownUICorner"
			DropdownUICorner.Parent = Dropdown

			DropdownTitle.Name = "DropdownTitle"
			DropdownTitle.Parent = Dropdown
			DropdownTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropdownTitle.BackgroundTransparency = 1.000
			DropdownTitle.Size = UDim2.new(1, -20, 0, 20)
			DropdownTitle.Font = Enum.Font.Ubuntu
			DropdownTitle.Text = DropdownName
			DropdownTitle.TextColor3 = Color3.fromRGB(252, 252, 252)
			DropdownTitle.TextSize = 15.000
			DropdownTitle.TextXAlignment = Enum.TextXAlignment.Left

			DropdownArrow.Name = "DropdownArrow"
			DropdownArrow.Parent = Dropdown
			DropdownArrow.AnchorPoint = Vector2.new(1, 0)
			DropdownArrow.BackgroundTransparency = 1.000
			DropdownArrow.BorderColor3 = Color3.fromRGB(27, 42, 53)
			DropdownArrow.Position = UDim2.new(1, 0, -2.5, 40)
			DropdownArrow.Size = UDim2.new(0, 30, 0, 30)
			DropdownArrow.Image = "rbxassetid://2777862738"

			DropdownUIPadding.Name = "DropdownUIPadding"
			DropdownUIPadding.Parent = Dropdown
			DropdownUIPadding.PaddingBottom = UDim.new(0, 6)
			DropdownUIPadding.PaddingLeft = UDim.new(0, 6)
			DropdownUIPadding.PaddingRight = UDim.new(0, 6)
			DropdownUIPadding.PaddingTop = UDim.new(0, 6)

			DropdownOptionsHolder.Name = "DropdownOptionsHolder"
			DropdownOptionsHolder.Parent = Dropdown
			DropdownOptionsHolder.Active = true
			DropdownOptionsHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropdownOptionsHolder.BackgroundTransparency = 1.000
			DropdownOptionsHolder.Position = UDim2.new(0, 0, 0, 28)
			DropdownOptionsHolder.Size = UDim2.new(1, 0, 10.8940001, -24)
			DropdownOptionsHolder.Visible = false

			DropdownOptionsHolderUIGridLayout.Name = "DropdownOptionsHolderUIGridLayout"
			DropdownOptionsHolderUIGridLayout.Parent = DropdownOptionsHolder
			DropdownOptionsHolderUIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
			DropdownOptionsHolderUIGridLayout.CellPadding = UDim2.new(0, 0, 0, 10)
			DropdownOptionsHolderUIGridLayout.CellSize = UDim2.new(0, 280, 0, 25)

			DropdownOptionsHolderUIPadding.Name = "DropdownOptionsHolderUIPadding"
			DropdownOptionsHolderUIPadding.Parent = DropdownOptionsHolder
			DropdownOptionsHolderUIPadding.PaddingLeft = UDim.new(0, 10)
			DropdownOptionsHolderUIPadding.PaddingTop = UDim.new(0, 10)

			HomeTab.CanvasSize = UDim2.new(0,0,0, HomeTabGridLayout.AbsoluteContentSize.Y + HomeTabGridLayoutAdd)

			-- // Script

			DropdownOptionsHolder.ChildAdded:Connect(function()
				DropdownOptionsHolder.CanvasSize = UDim2.new(0,0,0, DropdownOptionsHolderUIGridLayout.AbsoluteContentSize.Y + 80)
			end)

			local BeforeOpen = nil

			for _,v in pairs(ItemList) do
				local DropdownTextButton = Instance.new("TextButton")
				local DropdownTextButtonUICorner = Instance.new("UICorner")

				DropdownTextButton.Name = "DropdownTextButton"
				DropdownTextButton.Parent = DropdownOptionsHolder
				DropdownTextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropdownTextButton.Size = UDim2.new(1, 0, 0, 16)
				DropdownTextButton.Font = Enum.Font.Gotham
				DropdownTextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
				DropdownTextButton.TextSize = 14.000
				DropdownTextButton.Text = v


				DropdownTextButtonUICorner.CornerRadius = UDim.new(0, 2)
				DropdownTextButtonUICorner.Name = "DropdownTextButtonUICorner"
				DropdownTextButtonUICorner.Parent = DropdownTextButton

				DropdownTextButton.MouseButton1Click:Connect(function()
					DropdownTitle.Text = DropdownName..": "..v
					pcall(CallBack, v)
					for _,d in pairs(HomeTab:GetChildren()) do
						if d:IsA("Frame") or d:IsA("TextButton") then
							d.Visible = true
						end
					end
					HomeTab.CanvasSize = BeforeOpen
					DropdownOptionsHolder.Visible = false
				end)
			end

			DropdownArrow.MouseButton1Click:Connect(function()
				if DropdownOptionsHolder.Visible == true then
					for _,v in pairs(HomeTab:GetChildren()) do
						if v:IsA("TextButton") then
							v.Visible = true
						end
					end
					HomeTab.CanvasSize = BeforeOpen
					DropdownOptionsHolder.Visible = false
				else
					for _,v in pairs(HomeTab:GetChildren()) do
						if v:IsA("Frame") or v:IsA("TextButton") then
							v.Visible = false
						end
					end
					BeforeOpen = HomeTab.CanvasSize
					HomeTab.CanvasSize = UDim2.new(0,0,0)
					DropdownOptionsHolder.Visible = true
					DropdownOptionsHolder.Parent.Visible = true
				end
			end)

		end

		function Module:CreateLabel(LabelName, LabelText)
			assert(type(LabelName) == "string", "specify type string for CreateLabel() function")
			assert(type(LabelText) == "string", "specify type string for CreateLabel() function")

			local Label = Instance.new("Frame")
			local LabelUICorner = Instance.new("UICorner")
			local LabelTitle = Instance.new("TextLabel")
			local LabelUIPadding = Instance.new("UIPadding")

			Label.Name = LabelName
			Label.Parent = HomeTab
			Label.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
			Label.BackgroundTransparency = 1
			Label.Size = UDim2.new(1, 0, 0, 32)

			LabelUICorner.CornerRadius = UDim.new(0, 4)
			LabelUICorner.Name = "LabelUICorner"
			LabelUICorner.Parent = Label

			LabelTitle.Name = "LabelTitle"
			LabelTitle.Parent = Label
			LabelTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			LabelTitle.BackgroundTransparency = 1.000
			LabelTitle.Size = UDim2.new(1, 0, 1, 0)
			LabelTitle.Font = Enum.Font.Ubuntu
			LabelTitle.TextColor3 = Color3.fromRGB(252, 252, 252)
			LabelTitle.TextSize = 15.000
			LabelTitle.Text = LabelText

			LabelUIPadding.Name = "LabelUIPadding"
			LabelUIPadding.Parent = Label
			LabelUIPadding.PaddingBottom = UDim.new(0, 6)
			LabelUIPadding.PaddingLeft = UDim.new(0, 6)
			LabelUIPadding.PaddingRight = UDim.new(0, 6)
			LabelUIPadding.PaddingTop = UDim.new(0, 6)

			HomeTab.CanvasSize = UDim2.new(0,0,0, HomeTabGridLayout.AbsoluteContentSize.Y + HomeTabGridLayoutAdd)
		end

		function Module:EditLabel(LabelName, NewText)
			assert(type(LabelName) == "string", "specify type string for EditLabel() function")
			assert(type(NewText) == "string", "specify type string for EditLabel() function")

			HomeTab:FindFirstChild(LabelName).LabelTitle.Text = NewText
		end

		return Module
	end
	return Category
end
--[[
local ui = library:CreateWindow("Baseplate")

local Main = ui:new("Main")

local HoiThere = false
local SelectedFUCK;

Main:CreateLabel("FirstLabel","This is you're first label, Congrats!")

Main:CreateButton("Hello World!", function()
	print("Hello World!")
end)

Main:CreateButton("Change Label To asss!", function()
	Main:EditLabel("FirstLabel", "ass")
end)

Main:CreateToggle("This Toggle will repeatedly print Hello World!", true, function()
	print("Hello World!")
end)

Main:CreateToggle("This is a buttonToggle", false, function(heeey)
	HoiThere = heeey
	print("This is what this does: "..tostring(HoiThere))
end)

Main:CreateSlider("WalkSpeed", {min = 16, max = 200, default = 16}, function(state)
	LocalPlayer.Character.Humanoid.WalkSpeed = state
end)

Main:CreateDropdown("FUCK", {"I", "Want", "Some", "Pussy"}, function(pssy)
    SelectedFUCK = pssy
    print(SelectedFUCK)
end)
]]--
return library
