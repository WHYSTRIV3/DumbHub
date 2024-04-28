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


function library:CreateWindow()
	local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name


	local FATALITY = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local MainUiCorner = Instance.new("UICorner")
	local FatalityTitle = Instance.new("TextLabel")
	local XButton = Instance.new("TextButton")
	local BeforeTabContanier = Instance.new("Frame")
	local GameTitle = Instance.new("TextLabel")
	local TitleDivider = Instance.new("Frame")
	local SelectedTab = Instance.new("TextLabel")
	local SelectedBar = Instance.new("Frame")
	local Minimizebutton = Instance.new("ImageButton")
	local FatalityLogo = Instance.new("ImageLabel")
	local OpenButton = Instance.new("ImageButton")
	local OpenButtonUICorner = Instance.new("UICorner")
	local ActivactionsContainer = Instance.new("Frame")
	local ActivactionsContainerUICorner = Instance.new("UICorner")
	local TabContainerUICorner = Instance.new("UICorner")
	local TabContainer = Instance.new("ScrollingFrame")
	local TabContainerUIListLayout = Instance.new("UIListLayout")

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


	FATALITY.Name = "FATALITY"
	FATALITY.Parent = game:GetService("CoreGui")

	Main.Name = "Main"
	Main.Parent = FATALITY
	Main.AnchorPoint = Vector2.new(0.5, 0.5)
	Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Main.Position = UDim2.new(0.576666296, 0, 0.424260199, 0)
	Main.Size = UDim2.new(0, 649, 0, 377)
	Main.Visible = true

	MainUiCorner.CornerRadius = UDim.new(0, 5)
	MainUiCorner.Name = "MainUiCorner"
	MainUiCorner.Parent = Main


	FatalityLogo.Name = "FatalityLogo"
	FatalityLogo.Parent = Main
	FatalityLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	FatalityLogo.BorderColor3 = Color3.fromRGB(0, 0, 0)
	FatalityLogo.BorderSizePixel = 0
	FatalityLogo.Size = UDim2.new(0, 47, 0, 47)
	FatalityLogo.Image = "rbxassetid://17308281713"






	FatalityTitle.Name = "FatalityTitle"
	FatalityTitle.Parent = Main
	FatalityTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	FatalityTitle.BackgroundTransparency = 1.000
	FatalityTitle.Position = UDim2.new(0.072419107, 0, -0.0188508779, 0)
	FatalityTitle.Size = UDim2.new(0, 102, 0, 60)
	FatalityTitle.Font = Enum.Font.Bangers
	FatalityTitle.Text = "FATALITY"
	FatalityTitle.TextColor3 = Color3.fromRGB(170, 0, 0)
	FatalityTitle.TextSize = 34.000


	OpenButton.Name = "OpenButton"
	OpenButton.Parent = FATALITY
	OpenButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	OpenButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	OpenButton.BorderSizePixel = 0
	OpenButton.Position = UDim2.new(0.133174792, 0, 0.434819907, 0)
	OpenButton.Size = UDim2.new(0, 60, 0, 58)
	OpenButton.Image = "rbxassetid://17308281713"
	OpenButton.Visible = false
	OpenButton.Draggable = true

	OpenButton.MouseButton1Click:connect(function()
		Main.Visible = true
		OpenButton.Visible = false

	end)


	OpenButtonUICorner.CornerRadius = UDim.new(0, 15)
	OpenButtonUICorner.Name = "OpenButtonUICorner"
	OpenButtonUICorner.Parent = OpenButton




	XButton.Name = "XButton"
	XButton.Parent = Main
	XButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	XButton.BackgroundTransparency = 1.000
	XButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	XButton.BorderSizePixel = 0
	XButton.Position = UDim2.new(0.947633803, 0, 0.0160729215, 0)
	XButton.Size = UDim2.new(0, 28, 0, 27)
	XButton.Font = Enum.Font.SourceSans
	XButton.Text = "X"
	XButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	XButton.TextSize = 34.000

	XButton.MouseButton1Click:connect(function()
		FATALITY:Destroy()
	end)



	Minimizebutton.Name = "Minimizebutton"
	Minimizebutton.Parent = Main
	Minimizebutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Minimizebutton.BackgroundTransparency = 1.000
	Minimizebutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Minimizebutton.BorderSizePixel = 0
	Minimizebutton.Position = UDim2.new(0.891201973, 0, 0.0107677672, 0)
	Minimizebutton.Size = UDim2.new(0, 32, 0, 31)
	Minimizebutton.Image = "rbxassetid://2777726146"


	Minimizebutton.MouseButton1Click:connect(function()
		Main.Visible = false
		OpenButton.Visible = true
	end)


	BeforeTabContanier.Name = "BeforeTabContanier"
	BeforeTabContanier.Parent = Main
	BeforeTabContanier.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	BeforeTabContanier.BorderColor3 = Color3.fromRGB(255, 255, 255)
	BeforeTabContanier.Position = UDim2.new(0.0135377673, 0, 0.127229318, 0)
	BeforeTabContanier.Size = UDim2.new(0, 212, 0, 329)

	TabContainer.Name = "TabContainer"
	TabContainer.Parent = BeforeTabContanier
	TabContainer.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	TabContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TabContainer.BorderSizePixel = 0
	TabContainer.Position = UDim2.new(0.122641511, 0, 0.122625008, 0)
	TabContainer.Size = UDim2.new(0, 186, 0, 288)
	TabContainer.BottomImage = ""
	TabContainer.MidImage = ""
	TabContainer.TopImage = ""

	TabContainerUICorner.CornerRadius = UDim.new(0, 4)
	TabContainerUICorner.Name = "TabContainerUICorner"
	TabContainerUICorner.Parent = BeforeTabContanier

	TabContainerUIListLayout.Name = "TabContainerUIListLayout"
	TabContainerUIListLayout.Parent = TabContainer
	TabContainerUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	TabContainerUIListLayout.Padding = UDim.new(0, -13)


	ActivactionsContainer.Name = "ActivactionsContainer"
	ActivactionsContainer.Parent = Main
	ActivactionsContainer.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	ActivactionsContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ActivactionsContainer.BorderSizePixel = 0
	ActivactionsContainer.Position = UDim2.new(0.365177184, 0, 0.124668434, 0)
	ActivactionsContainer.Size = UDim2.new(0, 406, 0, 329)

	ActivactionsContainerUICorner.CornerRadius = UDim.new(0, 4)
	ActivactionsContainerUICorner.Name = "ActivactionsContainerUICorner"
	ActivactionsContainerUICorner.Parent = ActivactionsContainer


	GameTitle.Name = "GameTitle"
	GameTitle.Parent = BeforeTabContanier
	GameTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	GameTitle.BackgroundTransparency = 1.000
	GameTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
	GameTitle.BorderSizePixel = 0
	GameTitle.Size = UDim2.new(0, 211, 0, 38)
	GameTitle.Font = Enum.Font.Bangers
	GameTitle.Text = GameName
	GameTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
	GameTitle.TextSize = 20.000

	TitleDivider.Name = "TitleDivider"
	TitleDivider.Parent = BeforeTabContanier
	TitleDivider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TitleDivider.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TitleDivider.BorderSizePixel = 0
	TitleDivider.Position = UDim2.new(-9.32801413e-05, 0, 0.108695649, 0)
	TitleDivider.Size = UDim2.new(0, 212, 0, 3)





	local Category = {}
	function Category:new(TabName)
		assert(typeof(TabName) == "string", "specify type string for CreateNew function")

		local Tab = Instance.new("TextButton")

		local InsideActContanierScrollingFrame = Instance.new("ScrollingFrame")
		local InsideActContanierScrollingFrameUIPadding = Instance.new("UIPadding")
		local InsideActContanierScrollingFrameUIListLayout = Instance.new("UIListLayout")




		InsideActContanierScrollingFrame.Name = "InsideActContanierScrollingFrame"
		InsideActContanierScrollingFrame.Parent = ActivactionsContainer
		InsideActContanierScrollingFrame.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
		InsideActContanierScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		InsideActContanierScrollingFrame.BorderSizePixel = 0
		InsideActContanierScrollingFrame.Position = UDim2.new(0.0147783253, 0, 0.110889658, 0)
		InsideActContanierScrollingFrame.Size = UDim2.new(0, 394, 0, 292)
		InsideActContanierScrollingFrame.ScrollBarThickness = 4
		InsideActContanierScrollingFrame.Visible = false



		InsideActContanierScrollingFrameUIListLayout.Name = "InsideActContanierScrollingFrameUIListLayout"
		InsideActContanierScrollingFrameUIListLayout.Parent = InsideActContanierScrollingFrame
		InsideActContanierScrollingFrameUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		InsideActContanierScrollingFrameUIListLayout.Padding = UDim.new(0, 5)

		InsideActContanierScrollingFrameUIPadding.Name = "InsideActContanierScrollingFrameUIPadding"
		InsideActContanierScrollingFrameUIPadding.Parent = InsideActContanierScrollingFrame
		InsideActContanierScrollingFrameUIPadding.PaddingLeft = UDim.new(0, 6)
		InsideActContanierScrollingFrameUIPadding.PaddingTop = UDim.new(0, 5)



		Tab.Name = "Tab"
		Tab.Parent = TabContainer
		Tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Tab.BackgroundTransparency = 1.000
		Tab.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Tab.BorderSizePixel = 0
		Tab.Selectable = false
		Tab.Size = UDim2.new(0, 67, 0, 50)
		Tab.Font = Enum.Font.Bangers
		Tab.Text = TabName
		Tab.TextColor3 = Color3.fromRGB(255, 255, 255)
		Tab.TextSize = 20.000
		Tab.TextXAlignment = Enum.TextXAlignment.Left


		SelectedTab.Name = "SelectedTab"
		SelectedTab.Parent = ActivactionsContainer
		SelectedTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		SelectedTab.BackgroundTransparency = 1.000
		SelectedTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
		SelectedTab.BorderSizePixel = 0
		SelectedTab.Position = UDim2.new(0.0295566507, 0, 0.0182370823, 0)
		SelectedTab.Size = UDim2.new(0, 188, 0, 27)
		SelectedTab.Font = Enum.Font.Bangers
		SelectedTab.Text = " "
		SelectedTab.TextColor3 = Color3.fromRGB(255, 255, 255)
		SelectedTab.TextSize = 20.000
		SelectedTab.TextXAlignment = Enum.TextXAlignment.Left


		Tab.MouseButton1Click:Connect(function()
			for _,v in pairs(ActivactionsContainer:GetChildren()) do
				if v:IsA("ScrollingFrame") then
					v.Visible = false
				end
			end
			InsideActContanierScrollingFrame.Visible = true
			SelectedTab.Text = TabName.. " Tab"
		end)


		local Module = {}


		function Module:CreateButton(ButtonName, CallBack)
			assert(type(ButtonName) == "string", "specify type string for CreateButton() function")

			local Button = Instance.new("TextButton")
			local ButtonUICorner = Instance.new("UICorner")
			local ButtonTitle = Instance.new("TextLabel")

			Button.Name = "Button"
			Button.Parent = InsideActContanierScrollingFrame
			Button.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
			Button.BorderColor3 = Color3.fromRGB(31, 31, 31)
			Button.BorderSizePixel = 0
			Button.Position = UDim2.new(0.372448981, 0, 0.144827589, 0)
			Button.Size = UDim2.new(0, 378,0, 38)
			Button.Text = ""

			ButtonUICorner.CornerRadius = UDim.new(0, 3)
			ButtonUICorner.Name = "ButtonUICorner"
			ButtonUICorner.Parent = Button

			ButtonTitle.Name = "ButtonTitle"
			ButtonTitle.Parent = Button
			ButtonTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ButtonTitle.BackgroundTransparency = 1.000
			ButtonTitle.BorderColor3 = Color3.fromRGB(31, 31, 31)
			ButtonTitle.BorderSizePixel = 0
			ButtonTitle.Size = UDim2.new(0, 378,0, 38)
			ButtonTitle.Font = Enum.Font.SourceSans
			ButtonTitle.Text = ButtonName
			ButtonTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			ButtonTitle.TextSize = 20.000


			Button.MouseButton1Click:Connect(CallBack)

		end


		function Module:CreateToggle(ToggleName, Repeat, CallBack)
			assert(type(ToggleName) == "string", "specify type string for CreateToggle() function")


			local Toggle = Instance.new("Frame")
			local ToggleUICorner = Instance.new("UICorner")
			local ToggleTitle = Instance.new("TextLabel")
			local ToggleUIPadding = Instance.new("UIPadding")
			local ToggleButton = Instance.new("TextButton")
			local ToggledImage = Instance.new("ImageLabel")

			Toggle.Name = "Toggle"
			Toggle.Parent = InsideActContanierScrollingFrame
			Toggle.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
			Toggle.BorderColor3 = Color3.fromRGB(31, 31, 31)
			Toggle.BorderSizePixel = 0
			Toggle.Position = UDim2.new(0.372448981, 0, 0.144827589, 0)
			Toggle.Size = UDim2.new(0, 378,0, 38)

			ToggleUICorner.CornerRadius = UDim.new(0, 3)
			ToggleUICorner.Name = "ToggleUICorner"
			ToggleUICorner.Parent = Toggle

			ToggleTitle.Name = "ToggleTitle"
			ToggleTitle.Parent = Toggle
			ToggleTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggleTitle.BackgroundTransparency = 1.000
			ToggleTitle.BorderColor3 = Color3.fromRGB(31, 31, 31)
			ToggleTitle.BorderSizePixel = 0
			ToggleTitle.Size = UDim2.new(0, 378,0, 38)
			ToggleTitle.Font = Enum.Font.SourceSans
			ToggleTitle.Text = ToggleName
			ToggleTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			ToggleTitle.TextSize = 20.000
			ToggleTitle.TextXAlignment = Enum.TextXAlignment.Left

			ToggleUIPadding.Name = "ToggleUIPadding"
			ToggleUIPadding.Parent = ToggleTitle
			ToggleUIPadding.PaddingLeft = UDim.new(0, 6)

			ToggleButton.Name = "ToggleButton"
			ToggleButton.Parent = Toggle
			ToggleButton.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
			ToggleButton.BorderColor3 = Color3.fromRGB(243, 243, 243)
			ToggleButton.Position = UDim2.new(0.917999983, 0, 0.254999995, 0)
			ToggleButton.Size = UDim2.new(0, 20, 0, 20)
			ToggleButton.Text = ""



			ToggledImage.Name = "ToggledImage"
			ToggledImage.Parent = ToggleButton
			ToggledImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggledImage.BackgroundTransparency = 1.000
			ToggledImage.Position = UDim2.new(0, -3, -0.0669998154, 0)
			ToggledImage.Size = UDim2.new(0, 26, 0, 20)
			ToggledImage.Image = "rbxassetid://2790552399"
			ToggledImage.Visible = false



			local toggling = false
			local togCon = nil

			ToggleButton.MouseButton1Click:Connect(function()
				toggling = not toggling

				library.flags[ToggleName] = toggling

				if Repeat then
					if toggling then
						togCon = RunService.RenderStepped:Connect(CallBack)
						ToggledImage.Visible = true
					else
						togCon:Disconnect()
						ToggledImage.Visible = false
					end
				else
					if toggling then
						CallBack(toggling)
						ToggledImage.Visible = true
					else
						CallBack(toggling)
						ToggledImage.Visible = false
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
			local UIPadding = Instance.new("UIPadding")
			local SliderUIPadding = Instance.new("UIPadding")
			local SliderBack = Instance.new("TextButton")
			local SliderBcakUICorner = Instance.new("UICorner")
			local MainSlider = Instance.new("Frame")
			local MainSliderUICorner = Instance.new("UICorner")

			Slider.Name = "Slider"
			Slider.Parent = InsideActContanierScrollingFrame
			Slider.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
			Slider.BorderColor3 = Color3.fromRGB(31, 31, 31)
			Slider.BorderSizePixel = 0
			Slider.Position = UDim2.new(0.372448981, 0, 0.144827589, 0)
			Slider.Size = UDim2.new(0, 378,0, 38)

			SliderUICorner.CornerRadius = UDim.new(0, 3)
			SliderUICorner.Name = "SliderUICorner"
			SliderUICorner.Parent = Slider

			SliderTitle.Name = "SliderTitle"
			SliderTitle.Parent = Slider
			SliderTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SliderTitle.BackgroundTransparency = 1.000
			SliderTitle.BorderColor3 = Color3.fromRGB(31, 31, 31)
			SliderTitle.BorderSizePixel = 0
			SliderTitle.Size = UDim2.new(0, 136, 0, 38)
			SliderTitle.Font = Enum.Font.SourceSans
			SliderTitle.Text = SliderName
			SliderTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			SliderTitle.TextSize = 20.000
			SliderTitle.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding.Parent = SliderTitle

			SliderUIPadding.Name = "SliderUIPadding"
			SliderUIPadding.Parent = Slider
			SliderUIPadding.PaddingLeft = UDim.new(0, 6)

			SliderBack.Name = "SliderBack"
			SliderBack.Parent = Slider
			SliderBack.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			SliderBack.BorderColor3 = Color3.fromRGB(0, 0, 0)
			SliderBack.BorderSizePixel = 0
			SliderBack.Position = UDim2.new(0.438395411, 0, 0.349638283, 0)
			SliderBack.Size = UDim2.new(0, 178, 0, 14)
			SliderBack.Text = ""

			SliderBcakUICorner.CornerRadius = UDim.new(0, 6)
			SliderBcakUICorner.Name = "SliderBcakUICorner"
			SliderBcakUICorner.Parent = SliderBack

			MainSlider.Name = "MainSlider"
			MainSlider.Parent = SliderBack
			MainSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			MainSlider.BorderColor3 = Color3.fromRGB(0, 0, 0)
			MainSlider.BorderSizePixel = 0
			MainSlider.Size = UDim2.new(0, 85, 0, 14)

			MainSliderUICorner.CornerRadius = UDim.new(0, 6)
			MainSliderUICorner.Name = "MainSliderUICorner"
			MainSliderUICorner.Parent = MainSlider


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






		function Module:CreateDropdown(DropDownName, ItemList, CallBack)
			assert(type(DropDownName) == "string", "specify type string for CreateDropdown() function")
			assert(type(ItemList) == "table", "specify type table for CreateDropdown() function Example: {'wow', 'your cool', 'gay'}")
			assert(type(CallBack) == "function", "specify type function for CreateDropdown()")


			local DropDown = Instance.new("Frame")
			local DropDownUICorner = Instance.new("UICorner")
			local DropDownTitle = Instance.new("TextLabel")
			local DropDownTitlePadding = Instance.new("UIPadding")
			local DropDownButton = Instance.new("TextButton")
			local DropDownContainer = Instance.new("ScrollingFrame")
			local DropDownUIListLayout = Instance.new("UIListLayout")
			local DropDownUIGridLayout = Instance.new("UIGridLayout")
			local DropDownSearchTextBox = Instance.new("TextBox")
			local DropDownUIPadding = Instance.new("UIPadding")


			DropDown.Name = "DropDown"
			DropDown.Parent = InsideActContanierScrollingFrame
			DropDown.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
			DropDown.BorderColor3 = Color3.fromRGB(31, 31, 31)
			DropDown.BorderSizePixel = 0
			DropDown.Position = UDim2.new(0.372448981, 0, 0.144827589, 0)
			DropDown.Size = UDim2.new(0, 378,0, 38)

			DropDownUICorner.CornerRadius = UDim.new(0, 3)
			DropDownUICorner.Name = "DropDownUICorner"
			DropDownUICorner.Parent = DropDown

			DropDownTitle.Name = "DropDownTitle"
			DropDownTitle.Parent = DropDown
			DropDownTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropDownTitle.BackgroundTransparency = 1.000
			DropDownTitle.BorderColor3 = Color3.fromRGB(31, 31, 31)
			DropDownTitle.BorderSizePixel = 0
			DropDownTitle.Size = UDim2.new(0, 378,0, 38)
			DropDownTitle.Font = Enum.Font.SourceSans
			DropDownTitle.Text = DropDownName
			DropDownTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			DropDownTitle.TextSize = 20.000
			DropDownTitle.TextXAlignment = Enum.TextXAlignment.Left

			DropDownTitlePadding.Name = "ToggleUIPadding"
			DropDownTitlePadding.Parent = DropDownTitle
			DropDownTitlePadding.PaddingLeft = UDim.new(0, 6)

			DropDownButton.Name = "DropDownButton"
			DropDownButton.Parent = DropDown
			DropDownButton.Active = false
			DropDownButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropDownButton.BackgroundTransparency = 1.000
			DropDownButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
			DropDownButton.BorderSizePixel = 0
			DropDownButton.Position = UDim2.new(0.878873229, 0, -0.0171862151, 0)
			DropDownButton.Size = UDim2.new(0, 48, 0, 38)
			DropDownButton.Font = Enum.Font.SourceSans
			DropDownButton.Text = "+"
			DropDownButton.TextColor3 = Color3.fromRGB(255, 255, 255)
			DropDownButton.TextSize = 44.000

			DropDownContainer.Name = "DropDownContainer"
			DropDownContainer.Parent = DropDown
			DropDownContainer.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
			DropDownContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
			DropDownContainer.BorderSizePixel = 0
			DropDownContainer.Position = UDim2.new(0, 0, 0.973684192, 0)
			DropDownContainer.Size = UDim2.new(0, 372, 0, 449)
			DropDownContainer.Visible = false

			DropDownUIListLayout.Name = "DropDownUIListLayout"
			DropDownUIListLayout.Parent = DropDownContainer
			DropDownUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			DropDownUIListLayout.Padding = UDim.new(0, 3)

			DropDownUIGridLayout.Name = "DropDownUIGridLayout"
			DropDownUIGridLayout.Parent = DropDownContainer
			DropDownUIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder

			DropDownSearchTextBox.Name = "DropDownSearchTextBox"
			DropDownSearchTextBox.Parent = DropDownContainer
			DropDownSearchTextBox.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
			DropDownSearchTextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
			DropDownSearchTextBox.BorderSizePixel = 0
			DropDownSearchTextBox.Size = UDim2.new(0, 372, 0, 38)
			DropDownSearchTextBox.Font = Enum.Font.SourceSans
			DropDownSearchTextBox.PlaceholderText = "Search..."
			DropDownSearchTextBox.Text = ""
			DropDownSearchTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
			DropDownSearchTextBox.TextSize = 21.000

			local function DropDownSearchTextBox() -- DropdownOptionsHolder.LocalScript 
				local script = Instance.new('LocalScript', DropDownContainer)

				local SearchBar = script.Parent.DropDownSearchTextBox

				local Items = script.Parent

				function UpdateResults()
					local Search = string.lower(SearchBar.Text)
					for i,v in pairs(Items:GetChildren()) do
						if v:IsA("TextButton") then
							if Search ~= "" then
								local Item = string.lower(v.Text)
								if string.find(Item, Search) then
									v.Visible = true
								else
									v.Visible = false
								end
							else
								v.Visible = true
							end
						end
					end
				end

				SearchBar.Changed:Connect(UpdateResults)
			end
			coroutine.wrap(DropDownSearchTextBox)()


			DropDownUIPadding.Name = "DropDownUIPadding"
			DropDownUIPadding.Parent = DropDownTextButton
			DropDownUIPadding.PaddingLeft = UDim.new(0, 25)

			SelectedBar.Name = "SelectedBar"
			SelectedBar.Parent = DropDownTextButton
			SelectedBar.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
			SelectedBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
			SelectedBar.BorderSizePixel = 0
			SelectedBar.Position = UDim2.new(-0.0272727273, 0, 0.253360152, 0)
			SelectedBar.Size = UDim2.new(0, 4, 0, 19)


			local BeforeOpen = nil

			for _,v in pairs(ItemList) do
				local DropDownTextButton = Instance.new("TextButton")
				local DropDownTextButtonUIPadding = Instance.new("UIPadding")

				DropDownTextButton.Name = "DropDownTextButton"
				DropDownTextButton.Parent = DropDownContainer
				DropDownTextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropDownTextButton.BackgroundTransparency = 1.000
				DropDownTextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
				DropDownTextButton.BorderSizePixel = 0
				DropDownTextButton.Position = UDim2.new(0, 0, 0.0913140327, 0)
				DropDownTextButton.Size = UDim2.new(0, 370, 0, 38)
				DropDownTextButton.Font = Enum.Font.SourceSans
				DropDownTextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				DropDownTextButton.TextSize = 22.000
				DropDownTextButton.TextXAlignment = Enum.TextXAlignment.Left
				DropDownTextButton.Text = v

				DropDownTextButtonUIPadding.Parent = DropDownTextButton
				DropDownTextButtonUIPadding.PaddingLeft = UDim.new(0, 15)

				DropDownTextButton.MouseButton1Click:Connect(function()
					DropDownTitle.Text = DropDownName..": "..v
					pcall(CallBack, v)
					for _,d in pairs(InsideActContanierScrollingFrame:GetChildren()) do
						if d:IsA("Frame") or d:IsA("TextButton") then
							d.Visible = true
						end
					end
					InsideActContanierScrollingFrame.CanvasSize = BeforeOpen
					DropDownContainer.Visible = false
				end)
			end

			DropDownButton.MouseButton1Click:Connect(function()
				if DropDownContainer.Visible == true then
					for _,v in pairs(InsideActContanierScrollingFrame:GetChildren()) do
						if v:IsA("TextButton") or v:IsA("TextBox") then
							v.Visible = true
						end
					end
					InsideActContanierScrollingFrame.CanvasSize = BeforeOpen
					DropDownContainer.Visible = false
				else

					for _,v in pairs(InsideActContanierScrollingFrame:GetChildren()) do
						if v:IsA("Frame") or v:IsA("TextButton") then
							v.Visible = false
						end
					end
					BeforeOpen = InsideActContanierScrollingFrame.CanvasSize
					DropDownContainer.Visible = true
					DropDownContainer.Parent.Visible = true
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

			Label.Name = "Label"
			Label.Parent = InsideActContanierScrollingFrame
			Label.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
			Label.BackgroundTransparency = 1.000
			Label.BorderColor3 = Color3.fromRGB(31, 31, 31)
			Label.BorderSizePixel = 0
			Label.Position = UDim2.new(0.372448981, 0, 0.144827589, 0)
			Label.Size = UDim2.new(0, 378,0, 38)

			LabelUICorner.CornerRadius = UDim.new(0, 3)
			LabelUICorner.Name = "LabelUICorner"
			LabelUICorner.Parent = Label

			LabelTitle.Name = "LabelTitle"
			LabelTitle.Parent = Label
			LabelTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			LabelTitle.BackgroundTransparency = 1.000
			LabelTitle.BorderColor3 = Color3.fromRGB(31, 31, 31)
			LabelTitle.BorderSizePixel = 0
			LabelTitle.Size = UDim2.new(0, 378,0, 38)
			LabelTitle.Font = Enum.Font.SourceSans
			LabelTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			LabelTitle.TextSize = 20.000
			LabelTitle.TextXAlignment = Enum.TextXAlignment.Left
			LabelTitle.Text = LabelText


			LabelUIPadding.Name = "LabelUIPadding"
			LabelUIPadding.Parent = LabelTitle
			LabelUIPadding.PaddingLeft = UDim.new(0, 6)


		end


		function Module:EditLabel(LabelName, NewText)
			assert(type(LabelName) == "string", "specify type string for EditLabel() function")
			assert(type(NewText) == "string", "specify type string for EditLabel() function")

			InsideActContanierScrollingFrame:FindFirstChild(LabelName).LabelTitle.Text = NewText

		end


		function Module:CreateDivider(DividerText)
			assert(type(DividerText) == "string", "specify type string for EditLabel() function")

			local Divider = Instance.new("TextLabel")
			local DividerDivider = Instance.new("Frame")

			Divider.Name = "Divider"
			Divider.Parent = InsideActContanierScrollingFrame
			Divider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Divider.BackgroundTransparency = 1.000
			Divider.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Divider.BorderSizePixel = 0
			Divider.Size = UDim2.new(0, 378,0, 38)
			Divider.Font = Enum.Font.Bangers
			Divider.Text = DividerText
			Divider.TextColor3 = Color3.fromRGB(255, 255, 255)
			Divider.TextSize = 25.000

			DividerDivider.Name = "DividerDivider"
			DividerDivider.Parent = Divider
			DividerDivider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DividerDivider.BorderColor3 = Color3.fromRGB(0, 0, 0)
			DividerDivider.BorderSizePixel = 0
			DividerDivider.Position = UDim2.new(-0.0134408604, 0, 0.851851881, 0)
			DividerDivider.Size = UDim2.new(0, 378,0, 38)



		end

		return Module
	end
	return Category
end
--[[
local ui = library:CreateWindow("Baseplate")




local Info = ui:new("Info")
local Farming = ui:new("Farming") --PuffShrooms --Planters
local Combat = ui:new("Combat")
local Quest = ui:new("Auto Quest")
local Buffs = ui:new("Buffs")
local tp = ui:new("Teleport")
local Misc = ui:new("Misc")


local VU = game:GetService("VirtualUser")
local Player = game:GetService("Players").LocalPlayer
local WS = game:GetService("Workspace")
local RS = game:GetService("ReplicatedStorage")
local T = WS.Terrain
local LI = game:GetService("Lighting")
local Codes = {"UPDATE1"}






Misc:CreateButton("Redeem Codes", function()
    for _,v in pairs(Codes) do
        RS.Events.CodeEvent:FireServer(v)
    end
end)


Misc:CreateSlider("WalkSpeed", {min = 16, max = 200, default = 65}, function(state)
    Player.Character.Humanoid.WalkSpeed = state
end)





Misc:CreateButton("Uninject", function()
    game:GetService("CoreGui").V3DumbHub:Destroy()
end)


Misc:CreateButton("Uninject and Rejoin", function()
    game:GetService("CoreGui").V3DumbHub:Destroy()
    TeleportService:Teleport(game.PlaceId)
end)


--]]
return library
