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
local TweenService = game:GetService("TweenService")

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
	local Warning = Instance.new("Frame")
	local WarningUICorner = Instance.new("UICorner")
	local TextLabel = Instance.new("TextLabel")
	local Welcome = Instance.new("TextLabel")
	local TextLabel_2 = Instance.new("TextLabel")
	local TextLabel_3 = Instance.new("TextLabel")
	local TextLabel_4 = Instance.new("TextLabel")
	local SettingsButton = Instance.new("ImageButton")

	local SettingsFrame = Instance.new("Frame")
	local SettingsFrameUiCorner = Instance.new("UICorner")
	local FPSSaveButton = Instance.new("TextButton")
	local ShowFPSButton = Instance.new("TextButton")
	local CopyDiscordButton = Instance.new("TextButton")
	local ConsoleButton = Instance.new("TextButton")
	local UninjectButton = Instance.new("TextButton")
	local UninjectRejoinButton = Instance.new("TextButton")
	local SettingsTitle = Instance.new("TextLabel")
	local SettingsDivider = Instance.new("Frame")
	local SettingsXButton = Instance.new("TextButton")
	local Console = Instance.new("Frame")
	local ConsoleUICorner = Instance.new("UICorner")
	local ConsoleTitle = Instance.new("TextLabel")
	local ConsoleDivider = Instance.new("Frame")
	local ConsoleScrollingFrame = Instance.new("ScrollingFrame")
	local ConsoleTextLabel = Instance.new("TextLabel")
	local UIListLayout = Instance.new("UIListLayout")
	local UIGridLayout = Instance.new("UIGridLayout")
	local ClearConsoleButton = Instance.new("TextButton")
	local UICorner = Instance.new("UICorner")
	local ConsoleXButton = Instance.new("TextButton")
	local WalkSpeedSlider = Instance.new("Frame")
	local SliderUICorner = Instance.new("UICorner")
	local SliderTitle = Instance.new("TextLabel")
	local SliderBack = Instance.new("TextButton") -- Change to TextButton for clickable behavior
	local SliderBcakUICorner = Instance.new("UICorner")
	local MainSlider = Instance.new("Frame")
	local MainSliderUICorner = Instance.new("UICorner")
	local VU = game:GetService("VirtualUser")
	local Player = game:GetService("Players").LocalPlayer
	local WS = game:GetService("Workspace")
	local RS = game:GetService("ReplicatedStorage")
	local T = WS.Terrain
	local LI = game:GetService("Lighting")
	local PrintsButton = Instance.new("TextButton")
	local UICorner1 = Instance.new("UICorner")
	local WarningButton = Instance.new("TextButton")
	local UICorner_2 = Instance.new("UICorner")
	local ErrorButton = Instance.new("TextButton")
	local UICorner_3 = Instance.new("UICorner")
	local ConsoleTitle = Instance.new("TextLabel")
	local PrintsLabel = Instance.new("TextLabel")
	local ErrorsLabel = Instance.new("TextLabel")
	local Warningslabel = Instance.new("TextLabel")

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
	Main.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	Main.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main.Size = UDim2.new(0, 649, 0, 377)
	Main.Visible = true

	MainUiCorner.CornerRadius = UDim.new(0, 5)
	MainUiCorner.Name = "MainUiCorner"
	MainUiCorner.Parent = Main



	FatalityTitle.Name = "FatalityTitle"
	FatalityTitle.Parent = Main
	FatalityTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	FatalityTitle.BackgroundTransparency = 1.000
	FatalityTitle.Position = UDim2.new(0.012, 0, -0.019, 0)
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





	SettingsButton.Name = "SettingsButton"
	SettingsButton.Parent = Main
	SettingsButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SettingsButton.BackgroundTransparency = 1.000
	SettingsButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	SettingsButton.BorderSizePixel = 0
	SettingsButton.Position = UDim2.new(0.844375968, 0, 0.0213778466, 0)
	SettingsButton.Size = UDim2.new(0, 24, 0, 25)
	SettingsButton.Image = "rbxassetid://8285095937"

	local isSettingsVisible = false


	local originalMainPosition = Main.Position

	SettingsButton.MouseButton1Click:Connect(function()
		isSettingsVisible = not isSettingsVisible
		SettingsFrame.Visible = isSettingsVisible

		if isSettingsVisible then
			Main.Position = UDim2.new(0.33, 0, 0.5, 0)  -- Adjust this position as needed
		else
			-- If settings are closed, reset the position to its original state
			Main.Position = originalMainPosition
		end
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

	Warning.Name = "Warning"
	Warning.Parent = ActivactionsContainer
	Warning.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	Warning.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Warning.BorderSizePixel = 0
	Warning.Position = UDim2.new(0, 0, 0.00303951371, 0)
	Warning.Size = UDim2.new(0, 406, 0, 329)
	Warning.Visible = true





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



	SettingsFrame.Name = "SettingsFrame"
	SettingsFrame.Parent = Main
	SettingsFrame.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	SettingsFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	SettingsFrame.BorderSizePixel = 0
	SettingsFrame.Position = UDim2.new(1.04930663, 0, 0, 0)
	SettingsFrame.Size = UDim2.new(0, 349, 0, 377)
	SettingsFrame.Visible = false

	SettingsFrameUiCorner.CornerRadius = UDim.new(0, 5)
	SettingsFrameUiCorner.Name = "SettingsFrameUiCorner"
	SettingsFrameUiCorner.Parent = SettingsFrame

	FPSSaveButton.Name = "FPSSaveButton"
	FPSSaveButton.Parent = SettingsFrame
	FPSSaveButton.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	FPSSaveButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	FPSSaveButton.BorderSizePixel = 0
	FPSSaveButton.Position = UDim2.new(0.51971525, 0, 0.458885938, 0)
	FPSSaveButton.Size = UDim2.new(0, 146, 0, 47)
	FPSSaveButton.Font = Enum.Font.SourceSans
	FPSSaveButton.Text = "FPS Saver"
	FPSSaveButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	FPSSaveButton.TextSize = 22.000
	FPSSaveButton.TextWrapped = true

	FPSSaveButton.MouseButton1Click:connect(function()
		local decalsyeeted = true
		local g = game
		T.WaterWaveSize = 0
		T.WaterWaveSpeed = 0
		T.WaterReflectance = 0
		T.WaterTransparency = 0
		LI.GlobalShadows = false
		LI.FogEnd = 9e9
		LI.Brightness = 0
		settings().Rendering.QualityLevel = "Level01"
		for _, v in pairs(g:GetDescendants()) do
			if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
				v.Material = "Plastic"
				v.Reflectance = 0
			elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
				v.Transparency = 1
			elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
				v.Lifetime = NumberRange.new(0)
			elseif v:IsA("Explosion") then
				v.BlastPressure = 1
				v.BlastRadius = 1
			elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
				v.Enabled = false
			elseif v:IsA("MeshPart") then
				v.Material = "Plastic"
				v.Reflectance = 0
				v.TextureID = 10385902758728957
			end
		end
		for _, e in pairs(LI:GetChildren()) do
			if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
				e.Enabled = false
			end
		end
	end)

	local TextLabel = Instance.new("TextLabel")

	TextLabel.Parent = game:GetService("CoreGui").FATALITY
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(0.0745672435, 0, 0.0299251862, 0)
	TextLabel.Size = UDim2.new(0, 1216, 0, 50)
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.Text = "FPS: Loading"
	TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.TextSize = 47.000
	TextLabel.TextWrapped = true
	TextLabel.Name = "FPStext"
	TextLabel.Visible = false

	FPSAverage = {}
	local Ticking = false
	local LastTick = tick()

	local RunService = game:GetService("RunService")
	RunService:BindToRenderStep("UpdateInfo", 1000, function()
		if Ticking == true then
			local fps = math.floor(.5 + (1 / (tick() - LastTick)))
			local sum = 0
			local ave = 0
			table.insert(FPSAverage, fps)
			for i = 1, #FPSAverage do
				sum = sum + FPSAverage[i]
			end
			game:GetService("CoreGui").FATALITY.FPStext.Text = "FPS: " .. tostring(fps) .. " Average: " .. string.format("%.0f", (sum / #FPSAverage))
			if (tick() - LastTick) >= 15 then
				FPSAverage = { }
				LastTick = tick()
			end
			LastTick = tick()
		end
	end)





	ShowFPSButton.Name = "ShowFPSButton"
	ShowFPSButton.Parent = SettingsFrame
	ShowFPSButton.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	ShowFPSButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ShowFPSButton.BorderSizePixel = 0
	ShowFPSButton.Position = UDim2.new(0.0469358601, 0, 0.458885938, 0)
	ShowFPSButton.Size = UDim2.new(0, 146, 0, 47)
	ShowFPSButton.Font = Enum.Font.SourceSans
	ShowFPSButton.Text = "Show FPS "
	ShowFPSButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	ShowFPSButton.TextSize = 22.000
	ShowFPSButton.TextWrapped = true


	ShowFPSButton.MouseButton1Click:connect(function()
		game:GetService("CoreGui").FATALITY.FPStext.Visible = not game:GetService("CoreGui").FATALITY.FPStext.Visible
		Ticking = not Ticking
	end)



	CopyDiscordButton.Name = "CopyDiscordButton"
	CopyDiscordButton.Parent = SettingsFrame
	CopyDiscordButton.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	CopyDiscordButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CopyDiscordButton.BorderSizePixel = 0
	CopyDiscordButton.Position = UDim2.new(0.0469358601, 0, 0.644562423, 0)
	CopyDiscordButton.Size = UDim2.new(0, 146, 0, 47)
	CopyDiscordButton.Font = Enum.Font.SourceSans
	CopyDiscordButton.Text = "Copy Discord"
	CopyDiscordButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	CopyDiscordButton.TextSize = 22.000
	CopyDiscordButton.TextWrapped = true

	CopyDiscordButton.MouseButton1Click:connect(function()
		setclipboard("https://discord.gg/ups8GeuYAD")
		game.StarterGui:SetCore("SendNotification", {
			Title = "Discord";
			Text = "Discord copied  To ClipBoard"; 
			Icon = "";
			Duration = 3;
		})
	end)

	ConsoleButton.Name = "Console"
	ConsoleButton.Parent = SettingsFrame
	ConsoleButton.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	ConsoleButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ConsoleButton.BorderSizePixel = 0
	ConsoleButton.Position = UDim2.new(0.51971525, 0, 0.644562364, 0)
	ConsoleButton.Size = UDim2.new(0, 146, 0, 47)
	ConsoleButton.Font = Enum.Font.SourceSans
	ConsoleButton.Text = "Console"
	ConsoleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	ConsoleButton.TextSize = 22.000
	ConsoleButton.TextWrapped = true

	ConsoleButton.MouseButton1Click:connect(function()
		Console.Visible = true
	end)



	UninjectButton.Name = "UninjectButton"
	UninjectButton.Parent = SettingsFrame
	UninjectButton.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	UninjectButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	UninjectButton.BorderSizePixel = 0
	UninjectButton.Position = UDim2.new(0.51971525, 0, 0.827586234, 0)
	UninjectButton.Size = UDim2.new(0, 146, 0, 47)
	UninjectButton.Font = Enum.Font.SourceSans
	UninjectButton.Text = "Uninject"
	UninjectButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	UninjectButton.TextSize = 22.000
	UninjectButton.TextWrapped = true

	UninjectButton.MouseButton1Click:connect(function()
		game:GetService("CoreGui").FATALITY:Destroy()
	end)


	UninjectRejoinButton.Name = "Uninject/RejoinButton"
	UninjectRejoinButton.Parent = SettingsFrame
	UninjectRejoinButton.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	UninjectRejoinButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	UninjectRejoinButton.BorderSizePixel = 0
	UninjectRejoinButton.Position = UDim2.new(0.0469358601, 0, 0.827586234, 0)
	UninjectRejoinButton.Size = UDim2.new(0, 146, 0, 47)
	UninjectRejoinButton.Font = Enum.Font.SourceSans
	UninjectRejoinButton.Text = "Uninject/Rejoin"
	UninjectRejoinButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	UninjectRejoinButton.TextSize = 22.000
	UninjectRejoinButton.TextWrapped = true


	UninjectRejoinButton.MouseButton1Click:connect(function()
		game:GetService("CoreGui").FATALITY:Destroy()
		TeleportService:Teleport(game.PlaceId)
	end)



	-- Properties for WalkSpeedSlider
	WalkSpeedSlider.Name = "WalkSpeedSlider"
	WalkSpeedSlider.Parent = SettingsFrame
	WalkSpeedSlider.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	WalkSpeedSlider.BorderColor3 = Color3.fromRGB(31, 31, 31)
	WalkSpeedSlider.BorderSizePixel = 0
	WalkSpeedSlider.Position = UDim2.new(0.0440710559, 0, 0.248275876, 0)
	WalkSpeedSlider.Size = UDim2.new(0, 311, 0, 38)

	SliderUICorner.CornerRadius = UDim.new(0, 3)
	SliderUICorner.Name = "SliderUICorner"
	SliderUICorner.Parent = WalkSpeedSlider

	SliderTitle.Name = "SliderTitle"
	SliderTitle.Parent = WalkSpeedSlider
	SliderTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SliderTitle.BackgroundTransparency = 1.000
	SliderTitle.BorderColor3 = Color3.fromRGB(31, 31, 31)
	SliderTitle.BorderSizePixel = 0
	SliderTitle.Size = UDim2.new(0, 118, 0, 38)
	SliderTitle.Font = Enum.Font.SourceSans
	SliderTitle.Text = "Walk Speed: 200"
	SliderTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
	SliderTitle.TextSize = 20.000
	SliderTitle.TextXAlignment = Enum.TextXAlignment.Left

	SliderBack.Name = "SliderBack"
	SliderBack.Parent = WalkSpeedSlider
	SliderBack.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	SliderBack.BorderColor3 = Color3.fromRGB(0, 0, 0)
	SliderBack.BorderSizePixel = 0
	SliderBack.Position = UDim2.new(0.389053345, 0, 0.349638283, 0)
	SliderBack.Size = UDim2.new(0, 178, 0, 14)
	SliderBack.TextTransparency = 1

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

	-- Define UIS and Options
	local UIS = game:GetService("UserInputService")
	local Options = {
		min = 16, -- Minimum walk speed
		max = 200 -- Maximum walk speed
	}

	local mousedown = false

	-- Function to set the walk speed
	local function SetWalkSpeed(newSpeed)
		local humanoid = game.Players.LocalPlayer.Character.Humanoid
		humanoid.WalkSpeed = newSpeed
	end

	-- Default value
	local defaultValue = 50 -- Adjust this to your desired default speed

	-- Initialize UI with default value
	local defaultPercent = (defaultValue - Options.min) / (Options.max - Options.min)
	SliderTitle.Text = "Walk Speed: " .. defaultValue
	MainSlider.Size = UDim2.new(defaultPercent, 0, 0, 14)

	-- Event listeners for slider interaction
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

	UIS.InputChanged:Connect(function(input)
		if mousedown and input.UserInputType == Enum.UserInputType.MouseMovement then
			local mousePos = input.Position
			local sliderPos = SliderBack.AbsolutePosition
			local sliderSize = SliderBack.AbsoluteSize

			local percent = math.clamp((mousePos.X - sliderPos.X) / sliderSize.X, 0, 1)
			local newValue = Options.min + percent * (Options.max - Options.min)
			newValue = math.floor(newValue)

			SliderTitle.Text = "Walk Speed: " .. newValue
			MainSlider.Size = UDim2.new(percent, 0, 0, 14)

			-- Set walk speed based on newValue
			SetWalkSpeed(newValue)
		end
	end)


	SettingsTitle.Name = "SettingsTitle"
	SettingsTitle.Parent = SettingsFrame
	SettingsTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SettingsTitle.BackgroundTransparency = 1.000
	SettingsTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
	SettingsTitle.BorderSizePixel = 0
	SettingsTitle.Size = UDim2.new(0, 349, 0, 47)
	SettingsTitle.Font = Enum.Font.SourceSans
	SettingsTitle.Text = "Settings"
	SettingsTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
	SettingsTitle.TextSize = 35.000
	SettingsTitle.TextWrapped = true

	SettingsDivider.Name = "SettingsDivider"
	SettingsDivider.Parent = SettingsFrame
	SettingsDivider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SettingsDivider.BorderColor3 = Color3.fromRGB(0, 0, 0)
	SettingsDivider.BorderSizePixel = 0
	SettingsDivider.Position = UDim2.new(-0.00286532962, 0, 0.114058353, 0)
	SettingsDivider.Size = UDim2.new(0, 350, 0, 4)

	SettingsXButton.Name = "SettingsXButton"
	SettingsXButton.Parent = SettingsFrame
	SettingsXButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SettingsXButton.BackgroundTransparency = 1.000
	SettingsXButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	SettingsXButton.BorderSizePixel = 0
	SettingsXButton.Position = UDim2.new(0.918980658, 0, 0.0160729289, 0)
	SettingsXButton.Size = UDim2.new(0, 28, 0, 27)
	SettingsXButton.Font = Enum.Font.SourceSans
	SettingsXButton.Text = "X"
	SettingsXButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	SettingsXButton.TextSize = 34.000


	SettingsXButton.MouseButton1Click:Connect(function()
		SettingsFrame.Visible = false
		if isSettingsVisible then
			Main.Position = originalMainPosition
		end
	end)



	--Properties:

	Console.Name = "Console"
	Console.Parent = SettingsFrame
	Console.AnchorPoint = Vector2.new(0.5, 0.5)
	Console.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	Console.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Console.BorderSizePixel = 0
	Console.Position = UDim2.new(-1.02148998, 0, 0.5, 0)
	Console.Size = UDim2.new(0, 649, 0, 377)
	Console.Visible = false

	ConsoleUICorner.CornerRadius = UDim.new(0, 5)
	ConsoleUICorner.Name = "ConsoleUICorner"
	ConsoleUICorner.Parent = Console

	ConsoleTitle.Name = "ConsoleTitle"
	ConsoleTitle.Parent = Console
	ConsoleTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ConsoleTitle.BackgroundTransparency = 1.000
	ConsoleTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ConsoleTitle.BorderSizePixel = 0
	ConsoleTitle.Position = UDim2.new(-0.020030817, 0, -0.0185676385, 0)
	ConsoleTitle.Size = UDim2.new(0, 144, 0, 52)
	ConsoleTitle.Font = Enum.Font.SourceSans
	ConsoleTitle.Text = "Console"
	ConsoleTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
	ConsoleTitle.TextSize = 36.000



	PrintsButton.Name = "PrintsButton"
	PrintsButton.Parent = Console
	PrintsButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	PrintsButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
	PrintsButton.BorderSizePixel = 0
	PrintsButton.Position = UDim2.new(0.654653311, 0, 0.037652541, 0)
	PrintsButton.Size = UDim2.new(0, 17, 0, 18)
	PrintsButton.Font = Enum.Font.SourceSans
	PrintsButton.TextColor3 = Color3.fromRGB(0, 0, 0)
	PrintsButton.TextSize = 14.000
	PrintsButton.TextTransparency = 1.000

	UICorner1.CornerRadius = UDim.new(0, 5)
	UICorner1.Parent = PrintsButton

	WarningButton.Name = "WarningButton"
	WarningButton.Parent = Console
	WarningButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	WarningButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
	WarningButton.BorderSizePixel = 0
	WarningButton.Position = UDim2.new(0.52700001, 0, 0.0379999988, 0)
	WarningButton.Size = UDim2.new(0, 17, 0, 18)
	WarningButton.Font = Enum.Font.SourceSans
	WarningButton.TextColor3 = Color3.fromRGB(0, 0, 0)
	WarningButton.TextSize = 14.000
	WarningButton.TextTransparency = 1.000

	UICorner_2.CornerRadius = UDim.new(0, 5)
	UICorner_2.Parent = WarningButton

	ErrorButton.Name = "ErrorButton"
	ErrorButton.Parent = Console
	ErrorButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	ErrorButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
	ErrorButton.BorderSizePixel = 0
	ErrorButton.Position = UDim2.new(0.363999993, 0, 0.0379999988, 0)
	ErrorButton.Size = UDim2.new(0, 17, 0, 18)
	ErrorButton.Font = Enum.Font.SourceSans
	ErrorButton.TextColor3 = Color3.fromRGB(0, 0, 0)
	ErrorButton.TextSize = 14.000
	ErrorButton.TextTransparency = 1.000

	UICorner_3.CornerRadius = UDim.new(0, 5)
	UICorner_3.Parent = ErrorButton


	PrintsLabel.Name = "PrintsLabel"
	PrintsLabel.Parent = Console
	PrintsLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	PrintsLabel.BackgroundTransparency = 1.000
	PrintsLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	PrintsLabel.BorderSizePixel = 0
	PrintsLabel.Position = UDim2.new(0.023, 350, 0.0340000018, 0)
	PrintsLabel.Size = UDim2.new(0, 59, 0, 19)
	PrintsLabel.Font = Enum.Font.SourceSans
	PrintsLabel.Text = "Prints"
	PrintsLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	PrintsLabel.TextSize = 16.000

	ErrorsLabel.Name = "ErrorsLabel"
	ErrorsLabel.Parent = Console
	ErrorsLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ErrorsLabel.BackgroundTransparency = 1.000
	ErrorsLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ErrorsLabel.BorderSizePixel = 0
	ErrorsLabel.Position = UDim2.new(0.272000015, 0, 0.0340000018, 0)
	ErrorsLabel.Size = UDim2.new(0, 59, 0, 19)
	ErrorsLabel.Font = Enum.Font.SourceSans
	ErrorsLabel.Text = "Errors"
	ErrorsLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	ErrorsLabel.TextSize = 16.000

	Warningslabel.Name = "Warningslabel"
	Warningslabel.Parent = Console
	Warningslabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Warningslabel.BackgroundTransparency = 1.000
	Warningslabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Warningslabel.BorderSizePixel = 0
	Warningslabel.Position = UDim2.new(0.411000013, 0, 0.0340000018, 0)
	Warningslabel.Size = UDim2.new(0, 59, 0, 19)
	Warningslabel.Font = Enum.Font.SourceSans
	Warningslabel.Text = "Warnings"
	Warningslabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	Warningslabel.TextSize = 16.000

	ConsoleDivider.Name = "ConsoleDivider"
	ConsoleDivider.Parent = Console
	ConsoleDivider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ConsoleDivider.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ConsoleDivider.BorderSizePixel = 0
	ConsoleDivider.Position = UDim2.new(0, 0, 0.114058353, 0)
	ConsoleDivider.Size = UDim2.new(0, 649, 0, 4)

	ConsoleScrollingFrame.Name = "ConsoleScrollingFrame"
	ConsoleScrollingFrame.Parent = Console
	ConsoleScrollingFrame.Active = true
	ConsoleScrollingFrame.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
	ConsoleScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ConsoleScrollingFrame.BorderSizePixel = 0
	ConsoleScrollingFrame.Position = UDim2.new(0.0169491526, 0, 0.14058356, 0)
	ConsoleScrollingFrame.Size = UDim2.new(0, 626, 0, 288)




	--Properties:

	ConsoleXButton.Name = "ConsoleXButton"
	ConsoleXButton.Parent = Console
	ConsoleXButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ConsoleXButton.BackgroundTransparency = 1.000
	ConsoleXButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ConsoleXButton.BorderSizePixel = 0
	ConsoleXButton.Position = UDim2.new(0.946715653, 0, 0.016072968, 0)
	ConsoleXButton.Size = UDim2.new(0, 28, 0, 27)
	ConsoleXButton.Font = Enum.Font.SourceSans
	ConsoleXButton.Text = "X"
	ConsoleXButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	ConsoleXButton.TextSize = 34.000

	ConsoleXButton.MouseButton1Click:connect(function()
		Console.Visible = false
	end)


	ClearConsoleButton.Name = "ClearConsoleButton"
	ClearConsoleButton.Parent = Console
	ClearConsoleButton.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
	ClearConsoleButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ClearConsoleButton.BorderSizePixel = 0
	ClearConsoleButton.Position = UDim2.new(0.0184899848, 0, 0.91, 0)

	ClearConsoleButton.Size = UDim2.new(0, 626, 0, 30)
	ClearConsoleButton.Font = Enum.Font.SourceSans
	ClearConsoleButton.Text = "Clear Console"
	ClearConsoleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	ClearConsoleButton.TextSize = 29.000
	ClearConsoleButton.TextWrapped = true

	UICorner.Parent = ClearConsoleButton

	UIListLayout.Parent = ConsoleScrollingFrame
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	UIGridLayout.Parent = ConsoleScrollingFrame
	UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder



	-- Variable to track message count
	local messageCount = 0
	local maxMessages = 100  -- Adjust this number as needed
	local currentLabels = {}  -- Track current labels for cleanup

	local showPrints = true
	local showWarnings = true
	local showErrors = true

	-- Function to format time in 12-hour format
	local function formatTime12Hour()
		local time = os.date("*t")
		local period = "AM"
		local hour = time.hour
		if hour >= 12 then
			period = "PM"
			if hour > 12 then
				hour = hour - 12
			end
		end
		return string.format("%02d:%02d:%02d %s", hour, time.min, time.sec, period)
	end

	-- Function to update the CanvasSize of the scrolling frame
	local function updateCanvasSize()
		local totalHeight = 0
		for _, label in ipairs(currentLabels) do
			totalHeight = totalHeight + label.Size.Y.Offset
		end
		ConsoleScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, totalHeight)
	end

	-- Function to scroll to the bottom of the scrolling frame
	local function scrollToBottom()
		ConsoleScrollingFrame.CanvasPosition = Vector2.new(0, ConsoleScrollingFrame.CanvasSize.Y.Offset)
	end

	-- Function to append a message to ConsoleTextLabel
	local function appendMessage(message, color, messageType)
		-- Check if the message type should be shown
		if (messageType == "Print" and not showPrints) or 
			(messageType == "Warning" and not showWarnings) or 
			(messageType == "Error" and not showErrors) then
			return
		end

		-- Increment message count
		messageCount = messageCount + 1

		-- Remove oldest message if max messages reached
		if #currentLabels >= maxMessages then
			currentLabels[1]:Destroy()
			table.remove(currentLabels, 1)
		end

		-- Format current date and time in 12-hour format
		local timestamp = formatTime12Hour()

		-- Create a new label for the message
		local newLabel = Instance.new("TextBox")
		newLabel.Parent = ConsoleScrollingFrame
		newLabel.BackgroundTransparency = 1
		newLabel.BorderSizePixel = 0
		newLabel.Size = UDim2.new(1, 0, 0, 40)
		newLabel.Font = Enum.Font.SourceSans
		newLabel.TextSize = 22
		newLabel.TextXAlignment = Enum.TextXAlignment.Left
		newLabel.TextColor3 = color or Color3.fromRGB(255, 255, 255)
		newLabel.TextWrapped = true
		newLabel.TextYAlignment = Enum.TextYAlignment.Top
		newLabel.Text = string.format("%s [%d]: %s", timestamp, messageCount, message)

		-- Adjust height based on text content
		newLabel.Size = UDim2.new(1, 0, 0, newLabel.TextBounds.Y)

		-- Track the new label
		table.insert(currentLabels, newLabel)

		-- Update the canvas size and scroll to the bottom
		updateCanvasSize()
		scrollToBottom()
	end

	-- Function to clear the console
	local function clearConsole()
		for _, label in ipairs(currentLabels) do
			label:Destroy()
		end
		currentLabels = {}
		messageCount = 0
		updateCanvasSize()
	end

	-- Override warn to redirect to our function
	warn = function(...)
		local args = {...}
		local message = table.concat(args, " ")
		appendMessage("Warning: " .. message, Color3.fromRGB(255, 165, 0), "Warning")
	end

	-- Override print to redirect to our function
	print = function(...)
		local args = {...}
		local message = table.concat(args, " ")
		appendMessage(message, Color3.fromRGB(255, 255, 255), "Print")
	end

	-- Function to log Roblox errors and warnings
	local function logRobloxMessages(message, messageType)
		local color = Color3.fromRGB(255, 255, 255)
		if messageType == Enum.MessageType.MessageError then
			color = Color3.fromRGB(255, 0, 0)
			appendMessage("[ERROR] " .. message, color, "Error")
		elseif messageType == Enum.MessageType.MessageWarning then
			color = Color3.fromRGB(255, 165, 0)
			appendMessage("[WARNING] " .. message, color, "Warning")
		else
			appendMessage(message, color, "Print")
		end
	end

	-- Connect to LogService to capture Roblox errors and warnings
	local LogService = game:GetService("LogService")
	LogService.MessageOut:Connect(logRobloxMessages)

	-- Initialize button colors to white
	PrintsButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	WarningButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ErrorButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

	-- Toggle functions for buttons
	local function togglePrints()
		showPrints = not showPrints
		PrintsButton.BackgroundColor3 = showPrints and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(45, 45, 45)
	end

	local function toggleWarnings()
		showWarnings = not showWarnings
		WarningButton.BackgroundColor3 = showWarnings and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(45, 45, 45)
	end

	local function toggleErrors()
		showErrors = not showErrors
		ErrorButton.BackgroundColor3 = showErrors and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(45, 45, 45)
	end

	-- Connect buttons to their toggle functions
	PrintsButton.MouseButton1Click:Connect(togglePrints)
	WarningButton.MouseButton1Click:Connect(toggleWarnings)
	ErrorButton.MouseButton1Click:Connect(toggleErrors)

	-- Example usage:
	print("Hello, world!")
	warn("This is a warning!")







	ConsoleXButton.MouseButton1Click:Connect(function()
		Console.Visible = false
	end)

	ClearConsoleButton.MouseButton1Click:Connect(function()
		clearConsole()
	end)



	local Category = {}

	local firstTabCreated = false -- Flag to check if the first tab is created
	local selectedTab = nil -- Variable to keep track of the currently selected tab

	function Category:new(TabName)
		assert(typeof(TabName) == "string", "Specify type string for CreateNew function")

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
		InsideActContanierScrollingFrame.CanvasSize = UDim2.new(0,0,0,0)

		InsideActContanierScrollingFrameUIListLayout.Name = "InsideActContanierScrollingFrameUIListLayout"
		InsideActContanierScrollingFrameUIListLayout.Parent = InsideActContanierScrollingFrame
		InsideActContanierScrollingFrameUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		InsideActContanierScrollingFrameUIListLayout.Padding = UDim.new(0, 7)

		InsideActContanierScrollingFrame.ChildAdded:Connect(function(child)
			InsideActContanierScrollingFrame.CanvasSize = UDim2.new(0,0,0,InsideActContanierScrollingFrameUIListLayout.AbsoluteContentSize.Y + 80) -- Change 70 to your choosing.
		end)

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


		if not firstTabCreated then
			InsideActContanierScrollingFrame.Visible = true
			SelectedTab.Text = TabName .. " Tab"
			firstTabCreated = true
			Tab.TextColor3 = Color3.fromRGB(170, 0, 0) -- Highlight the first tab
			selectedTab = Tab -- Set the first tab as selected
		else
			InsideActContanierScrollingFrame.Visible = false
		end


		Tab.MouseButton1Click:Connect(function()
			-- Reset the previously selected tab color
			if selectedTab then
				selectedTab.TextColor3 = Color3.fromRGB(255, 255, 255) -- Original color
			end

			-- Highlight the clicked tab
			Tab.TextColor3 = Color3.fromRGB(170, 0, 0)

			-- Update the selected tab reference
			selectedTab = Tab

			-- Toggle visibility of scrolling frames and update selected tab text
			for _, v in pairs(ActivactionsContainer:GetChildren()) do
				if v:IsA("ScrollingFrame") then
					v.Visible = false
					Warning.Visible = false
				end
			end
			InsideActContanierScrollingFrame.Visible = true
			SelectedTab.Text = TabName .. " Tab"
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





		function Module:CreateToggle(ToggleName, Repeatt, CallBackk)
			assert(type(ToggleName) == "string", "Specify type string for CreateToggle() function")

			-- Create UI elements
			local Toggle = Instance.new("Frame")
			Toggle.Name = "Toggle"
			Toggle.Parent = InsideActContanierScrollingFrame
			Toggle.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
			Toggle.BorderColor3 = Color3.fromRGB(31, 31, 31)
			Toggle.BorderSizePixel = 0
			Toggle.Position = UDim2.new(0, 0, 0.111498259, 0)
			Toggle.Size = UDim2.new(0, 378, 0, 38)

			local ToggleUICorner = Instance.new("UICorner")
			ToggleUICorner.CornerRadius = UDim.new(0, 3)
			ToggleUICorner.Name = "ToggleUICorner"
			ToggleUICorner.Parent = Toggle

			local ToggleTitle = Instance.new("TextLabel")
			ToggleTitle.Name = "ToggleTitle"
			ToggleTitle.Parent = Toggle
			ToggleTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggleTitle.BackgroundTransparency = 1.000
			ToggleTitle.BorderColor3 = Color3.fromRGB(31, 31, 31)
			ToggleTitle.BorderSizePixel = 0
			ToggleTitle.Size = UDim2.new(0, 378, 0, 38)
			ToggleTitle.Font = Enum.Font.SourceSans
			ToggleTitle.Text = ToggleName
			ToggleTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			ToggleTitle.TextSize = 20.000
			ToggleTitle.TextXAlignment = Enum.TextXAlignment.Left

			local ToggleUIPadding = Instance.new("UIPadding")
			ToggleUIPadding.Name = "ToggleUIPadding"
			ToggleUIPadding.Parent = ToggleTitle
			ToggleUIPadding.PaddingLeft = UDim.new(0, 6)

			local ToggleButtonHolder = Instance.new("Frame")
			ToggleButtonHolder.Name = "ToggleButtonHolder"
			ToggleButtonHolder.Parent = Toggle
			ToggleButtonHolder.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
			ToggleButtonHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ToggleButtonHolder.BorderSizePixel = 0
			ToggleButtonHolder.Position = UDim2.new(0.828042328, 0, 0.210526317, 0)
			ToggleButtonHolder.Size = UDim2.new(0, 48, 0, 22)

			local ToggleBUttonHOlderUIcorner = Instance.new("UICorner")
			ToggleBUttonHOlderUIcorner.CornerRadius = UDim.new(0, 10)
			ToggleBUttonHOlderUIcorner.Name = "ToggleBUttonHOlderUIcorner"
			ToggleBUttonHOlderUIcorner.Parent = ToggleButtonHolder

			local ToggleButton = Instance.new("TextButton")
			ToggleButton.Name = "ToggleButton"
			ToggleButton.Parent = ToggleButtonHolder
			ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggleButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ToggleButton.BorderSizePixel = 0
			ToggleButton.Position = UDim2.new(0, 0, 0, 0)
			ToggleButton.Size = UDim2.new(0, 26, 0, 22)
			ToggleButton.Font = Enum.Font.SourceSans
			ToggleButton.Text = ""
			ToggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			ToggleButton.TextSize = 14.000

			local ToggleuButtonUICorner = Instance.new("UICorner")
			ToggleuButtonUICorner.CornerRadius = UDim.new(2, 5)
			ToggleuButtonUICorner.Name = "ToggleuButtonUICorner"
			ToggleuButtonUICorner.Parent = ToggleButton

			-- Toggle state and tweens
			local togglingg = false
			local togConn = nil
			local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
			local whiteColor = Color3.fromRGB(255, 255, 255)
			local redColor = Color3.fromRGB(170, 0, 0)
			local tween = nil

			local function toggleButtonColor(color)
				tween = TweenService:Create(ToggleButton, tweenInfo, {BackgroundColor3 = color})
				tween:Play()
			end

			local function toggleButtonPosition(position)
				tween = TweenService:Create(ToggleButton, tweenInfo, {Position = position})
				tween:Play()
			end

			-- Toggle button click event
			ToggleButton.MouseButton1Click:Connect(function()
				togglingg = not togglingg
				CallBackk(togglingg)

				if Repeatt then
					if togglingg then
						togConn = RunService.RenderStepped:Connect(function()
							CallBackk(togglingg)
						end)
						toggleButtonColor(redColor)
						toggleButtonPosition(UDim2.new(0.458333343, 0, 0, 0))
					else
						if togConn then
							togConn:Disconnect()
						end
						toggleButtonColor(whiteColor)
						toggleButtonPosition(UDim2.new(0, 0, 0, 0))
					end
				else
					if togglingg then
						toggleButtonColor(redColor)
						toggleButtonPosition(UDim2.new(0.458333343, 0, 0, 0))
					else
						toggleButtonColor(whiteColor)
						toggleButtonPosition(UDim2.new(0, 0, 0, 0))
					end
				end
			end)



			XButton.MouseButton1Click:Connect(function()
				if togglingg then
					if togConn then
						togConn:Disconnect()
					end
					togglingg = false
					wait(0.5)  -- Optionally wait for ongoing processes to complete
					Toggle:Destroy()
				end
			end)
		end





		function Module:CreateActiveToggle(ToggleName, Repeat, CallBack)
			assert(type(ToggleName) == "string", "Specify type string for CreateActiveToggle() function")

			-- Create UI elements
			local Toggle = Instance.new("Frame")
			Toggle.Name = "Toggle"
			Toggle.Parent = InsideActContanierScrollingFrame
			Toggle.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
			Toggle.BorderColor3 = Color3.fromRGB(31, 31, 31)
			Toggle.BorderSizePixel = 0
			Toggle.Position = UDim2.new(0, 0, 0.111498259, 0)
			Toggle.Size = UDim2.new(0, 378, 0, 38)

			local ToggleUICorner = Instance.new("UICorner")
			ToggleUICorner.CornerRadius = UDim.new(0, 3)
			ToggleUICorner.Name = "ToggleUICorner"
			ToggleUICorner.Parent = Toggle

			local ToggleTitle = Instance.new("TextLabel")
			ToggleTitle.Name = "ToggleTitle"
			ToggleTitle.Parent = Toggle
			ToggleTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggleTitle.BackgroundTransparency = 1.000
			ToggleTitle.BorderColor3 = Color3.fromRGB(31, 31, 31)
			ToggleTitle.BorderSizePixel = 0
			ToggleTitle.Size = UDim2.new(0, 378, 0, 38)
			ToggleTitle.Font = Enum.Font.SourceSans
			ToggleTitle.Text = ToggleName
			ToggleTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			ToggleTitle.TextSize = 20.000
			ToggleTitle.TextXAlignment = Enum.TextXAlignment.Left

			local ToggleUIPadding = Instance.new("UIPadding")
			ToggleUIPadding.Name = "ToggleUIPadding"
			ToggleUIPadding.Parent = ToggleTitle
			ToggleUIPadding.PaddingLeft = UDim.new(0, 6)

			local ToggleButtonHolder = Instance.new("Frame")
			ToggleButtonHolder.Name = "ToggleButtonHolder"
			ToggleButtonHolder.Parent = Toggle
			ToggleButtonHolder.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
			ToggleButtonHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ToggleButtonHolder.BorderSizePixel = 0
			ToggleButtonHolder.Position = UDim2.new(0.828042328, 0, 0.210526317, 0)
			ToggleButtonHolder.Size = UDim2.new(0, 48, 0, 22)

			local ToggleBUttonHOlderUIcorner = Instance.new("UICorner")
			ToggleBUttonHOlderUIcorner.CornerRadius = UDim.new(0, 10)
			ToggleBUttonHOlderUIcorner.Name = "ToggleBUttonHOlderUIcorner"
			ToggleBUttonHOlderUIcorner.Parent = ToggleButtonHolder

			local ToggleButton = Instance.new("TextButton")
			ToggleButton.Name = "ToggleButton"
			ToggleButton.Parent = ToggleButtonHolder
			ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  -- Start with white background
			ToggleButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ToggleButton.BorderSizePixel = 0
			ToggleButton.Position = UDim2.new(0, 0, 0, 0)
			ToggleButton.Size = UDim2.new(0, 26, 0, 22)
			ToggleButton.Font = Enum.Font.SourceSans
			ToggleButton.Text = ""
			ToggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			ToggleButton.TextSize = 14.000

			local ToggleuButtonUICorner = Instance.new("UICorner")
			ToggleuButtonUICorner.CornerRadius = UDim.new(2, 5)
			ToggleuButtonUICorner.Name = "ToggleuButtonUICorner"
			ToggleuButtonUICorner.Parent = ToggleButton

			local toggling = true  
			local togCon = nil


			ToggleButton.MouseButton1Click:Connect(function()
				toggling = not toggling

				if toggling then

					local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
					local tween = TweenService:Create(ToggleButton, tweenInfo, { Position = UDim2.new(0.458333343, 0, 0, 0) })
					tween:Play()

					ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0) 


					if Repeat then
						togCon = RunService.RenderStepped:Connect(function()
							CallBack(toggling)
						end)
					else
						CallBack(toggling)
					end
				else
					-- Tweens for toggling off
					local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
					local tween = TweenService:Create(ToggleButton, tweenInfo, { Position = UDim2.new(0, 0, 0, 0) })
					tween:Play()

					ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255) 

					if togCon then
						togCon:Disconnect()
					end
					CallBack(toggling)
				end
			end)


			if Repeat then
				ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0) 

				local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
				local tween = TweenService:Create(ToggleButton, tweenInfo, { Position = UDim2.new(0.458333343, 0, 0, 0) })
				tween:Play()

				togCon = RunService.RenderStepped:Connect(function()
					CallBack(toggling)
				end)
			end


			XButton.MouseButton1Click:Connect(function()
				if togCon then
					togCon:Disconnect()  
				end

				wait(0.5)
				FATALITY:Destroy() 
			end)
		end





		function Module:CreateSlider(SliderName, Options, CallBack)
			assert(type(SliderName) == "string", "Specify type string for CreateSlider() function")
			assert(type(Options) == "table", "Options must be a table")
			assert(type(Options.min) == "number", "Options.min must be a number")
			assert(type(Options.max) == "number", "Options.max must be a number")
			assert(type(Options.default) == "number", "Options.default must be a number")

			-- Clamp the default value to be within min and max range
			Options.default = math.clamp(Options.default, Options.min, Options.max)

			local Slider = Instance.new("Frame")
			local SliderUICorner = Instance.new("UICorner")
			local SliderTitle = Instance.new("TextLabel")
			local UIPadding = Instance.new("UIPadding")
			local SliderUIPadding = Instance.new("UIPadding")
			local SliderBack = Instance.new("TextButton")
			local SliderBackUICorner = Instance.new("UICorner")
			local MainSlider = Instance.new("Frame")
			local MainSliderUICorner = Instance.new("UICorner")

			Slider.Name = "Slider"
			Slider.Parent = InsideActContanierScrollingFrame  -- Adjust to your specific parent frame
			Slider.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
			Slider.BorderColor3 = Color3.fromRGB(31, 31, 31)
			Slider.BorderSizePixel = 0
			Slider.Position = UDim2.new(0.372448981, 0, 0.144827589, 0)
			Slider.Size = UDim2.new(0, 378, 0, 38)

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
			SliderTitle.Text = SliderName .. ": " .. Options.default
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

			SliderBackUICorner.CornerRadius = UDim.new(0, 6)
			SliderBackUICorner.Name = "SliderBackUICorner"
			SliderBackUICorner.Parent = SliderBack

			MainSlider.Name = "MainSlider"
			MainSlider.Parent = SliderBack
			MainSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			MainSlider.BorderColor3 = Color3.fromRGB(0, 0, 0)
			MainSlider.BorderSizePixel = 0
			MainSlider.Size = UDim2.new((Options.default - Options.min) / (Options.max - Options.min), 0, 0, 14)

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

			UIS.InputChanged:Connect(function(input)
				if mousedown and input.UserInputType == Enum.UserInputType.MouseMovement then
					local mousePos = input.Position
					local sliderPos = SliderBack.AbsolutePosition
					local sliderSize = SliderBack.AbsoluteSize

					local percent = math.clamp((mousePos.X - sliderPos.X) / sliderSize.X, 0, 1)
					local newValue = Options.min + percent * (Options.max - Options.min)
					newValue = math.floor(newValue)

					SliderTitle.Text = SliderName .. ": " .. newValue
					MainSlider.Size = UDim2.new(percent, 0, 0, 14)

					library.flags[SliderName] = newValue
					CallBack(newValue)
				end
			end)
		end






		function Module:CreateMultiDropdown(DropDownName, ItemList, CallBack)
			assert(type(DropDownName) == "string", "Specify type string for DropDownName")
			assert(type(ItemList) == "table", "Specify type table for ItemList")
			assert(type(CallBack) == "function", "Specify type function for CallBack")

			local MultiSelectedItems = {}  -- Table to store selected items
			local SelectedItemButtons = {}  -- Table to store item buttons

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
			local DropDownContainerUIGridLayout = Instance.new("UIGridLayout")
			local DropDownTitleTextSizeConstraint = Instance.new("UITextSizeConstraint")


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
			DropDownTitle.Text = DropDownName.. ": None"
			DropDownTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			DropDownTitle.TextSize = 20.000
			DropDownTitle.TextXAlignment = Enum.TextXAlignment.Left
			DropDownTitle.TextScaled = true

			-- Adding UITextSizeConstraint
			DropDownTitleTextSizeConstraint.Parent = DropDownTitle
			DropDownTitleTextSizeConstraint.MinTextSize = 10
			DropDownTitleTextSizeConstraint.MaxTextSize = 20

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

			DropDownContainerUIGridLayout.Name = "DropDownContainerUIGridLayout"
			DropDownContainerUIGridLayout.Parent = DropDownContainer
			DropDownContainerUIGridLayout.FillDirection = Enum.FillDirection.Vertical
			DropDownContainerUIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
			DropDownContainerUIGridLayout.CellSize = UDim2.new(1, 40, 0, 40)

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

			DropDownContainer.ChildAdded:Connect(function()
				DropDownContainer.CanvasSize = UDim2.new(0,0,0, DropDownContainerUIGridLayout.AbsoluteContentSize.Y + 1000)
			end)

			local function UpdateTitleText()
				if #MultiSelectedItems == 0 then
					DropDownTitle.Text = DropDownName.. ": None"
				elseif #MultiSelectedItems == 1 then
					DropDownTitle.Text = DropDownName.. ": ".. MultiSelectedItems[1]
				else
					local selectedText = table.concat(MultiSelectedItems, ", ")
					DropDownTitle.Text = DropDownName.. ": ".. selectedText
				end
			end

			local function ToggleItemSelection(item, button)
				local selected = false
				for i, selectedItem in ipairs(MultiSelectedItems) do
					if selectedItem == item then
						table.remove(MultiSelectedItems, i)
						button.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- Reset background color
						button.BackgroundTransparency = 1
						selected = true
						break
					end
				end
				if not selected then
					table.insert(MultiSelectedItems, item)
					button.BackgroundColor3 = Color3.fromRGB(40, 40, 40) -- Darker highlight for selected item
					button.BackgroundTransparency = 0
				end
			end


			local function CreateDropDownItem(itemName)
				local DropDownTextButton = Instance.new("TextButton")
				DropDownTextButton.Name = "DropDownTextButton"
				DropDownTextButton.Parent = DropDownContainer
				DropDownTextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropDownTextButton.BackgroundTransparency = 1
				DropDownTextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
				DropDownTextButton.BorderSizePixel = 0
				DropDownTextButton.Size = UDim2.new(0, 370, 0, 38)
				DropDownTextButton.Font = Enum.Font.SourceSans
				DropDownTextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				DropDownTextButton.TextSize = 22
				DropDownTextButton.TextXAlignment = Enum.TextXAlignment.Left
				DropDownTextButton.Text = itemName

				DropDownTextButton.MouseButton1Click:Connect(function()
					ToggleItemSelection(itemName, DropDownTextButton)
					UpdateTitleText()
					CallBack(MultiSelectedItems)
				end)


				DropDownButton.MouseButton1Click:Connect(function()
					DropDownContainer.Visible = not DropDownContainer.Visible
					if DropDownContainer.Visible then
						DropDownButton.Text = "-"
						DropDownButton.TextSize = 65 -- Set the size for the minus sign
						DropDownButton.Position = UDim2.new(0.878873229, 0, -0.1, 0)  -- Adjust position up
					else
						DropDownButton.Text = "+"
						DropDownButton.TextSize = 44  -- Set the size back to original for the plus sign
						DropDownButton.Position = UDim2.new(0.878873229, 0, -0.0171862151, 0)  -- Reset to original position
					end
				end)


				-- Store the button for later use
				SelectedItemButtons[itemName] = DropDownTextButton
			end

			for _, itemName in ipairs(ItemList) do
				CreateDropDownItem(itemName)
			end

			local BeforeOpenn = nil

			local function ToggleDropDown()
				if DropDownContainer.Visible then
					-- If the dropdown is visible, hide it and make elements visible again
					for _, v in pairs(InsideActContanierScrollingFrame:GetChildren()) do
						if v:IsA("TextButton") or v:IsA("TextBox") or v:IsA("Frame") or v:IsA("TextLabel") then
							v.Visible = true
						end
					end
					InsideActContanierScrollingFrame.CanvasSize = BeforeOpenn
					DropDownContainer.Visible = false
				else
					-- If the dropdown is not visible, hide elements and show the dropdown
					BeforeOpenn = InsideActContanierScrollingFrame.CanvasSize
					for _, v in pairs(InsideActContanierScrollingFrame:GetChildren()) do
						if v:IsA("TextButton") or v:IsA("TextBox") or v:IsA("Frame") or v:IsA("TextLabel") then
							v.Visible = false
						end
					end
					DropDownContainer.Visible = true
					DropDownContainer.Parent.Visible = true
				end
			end

			DropDownButton.MouseButton1Click:Connect(ToggleDropDown)

			DropDownContainer.ChildAdded:Connect(function()
				DropDownContainer.CanvasSize = UDim2.new(0, 0, 0, DropDownContainerUIListLayout.AbsoluteContentSize.Y + 4)
			end)

			-- Initial title update
			UpdateTitleText()
		end






		function Module:CreateDropdown(DropDownName, ItemList, CallBack, defaultValue)
			assert(type(DropDownName) == "string", "Specify type string for DropDownName")
			assert(type(ItemList) == "table", "Specify type table for ItemList")
			assert(type(CallBack) == "function", "Specify type function for CallBack")


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
			local DropDownContainerUIGridLayout = Instance.new("UIGridLayout")

			DropDown.Name = "DropDown"
			DropDown.Parent = InsideActContanierScrollingFrame
			DropDown.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
			DropDown.BorderColor3 = Color3.fromRGB(31, 31, 31)
			DropDown.BorderSizePixel = 0
			DropDown.Position = UDim2.new(0.372448981, 0, 0.144827589, 0)
			DropDown.Size = UDim2.new(0, 378, 0, 38)

			DropDownUICorner.CornerRadius = UDim.new(0, 3)
			DropDownUICorner.Name = "DropDownUICorner"
			DropDownUICorner.Parent = DropDown

			DropDownTitle.Name = "DropDownTitle"
			DropDownTitle.Parent = DropDown
			DropDownTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropDownTitle.BackgroundTransparency = 1.000
			DropDownTitle.BorderColor3 = Color3.fromRGB(31, 31, 31)
			DropDownTitle.BorderSizePixel = 0
			DropDownTitle.Size = UDim2.new(0, 378, 0, 38)
			DropDownTitle.Font = Enum.Font.SourceSans
			DropDownTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			DropDownTitle.TextSize = 20.000
			DropDownTitle.TextXAlignment = Enum.TextXAlignment.Left
			DropDownTitle.Text = DropDownName .. ": " .. (defaultValue or "None")

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

			DropDownContainerUIGridLayout.Name = "DropDownContainerUIGridLayout"
			DropDownContainerUIGridLayout.Parent = DropDownContainer
			DropDownContainerUIGridLayout.FillDirection = Enum.FillDirection.Vertical
			DropDownContainerUIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
			DropDownContainerUIGridLayout.CellSize = UDim2.new(1, 40, 0, 40)

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

			DropDownContainer.ChildAdded:Connect(function()
				DropDownContainer.CanvasSize = UDim2.new(0,0,0, DropDownContainerUIGridLayout.AbsoluteContentSize.Y + 80)
			end)

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
					DropDownTitle.Text = DropDownName .. ": " .. v
					pcall(CallBack, v)
					for _, d in pairs(InsideActContanierScrollingFrame:GetChildren()) do
						if d:IsA("Frame") or d:IsA("TextButton") or d:IsA("TextLabel") then
							d.Visible = true
						end
					end
					InsideActContanierScrollingFrame.CanvasSize = BeforeOpen
					DropDownContainer.Visible = false
					DropDownButton.Text = "+"  -- Reset text to plus sign
					DropDownButton.TextSize = 44  -- Reset text size to original
					DropDownButton.Position = UDim2.new(0.878873229, 0, -0.0171862151, 0)  -- Reset position
				end)
			end

			DropDownButton.MouseButton1Click:Connect(function()
				if DropDownContainer.Visible then
					-- If the dropdown is visible, hide it and make elements visible again
					for _, v in pairs(InsideActContanierScrollingFrame:GetChildren()) do
						if v:IsA("TextButton") or v:IsA("TextBox") or v:IsA("Frame") or v:IsA("TextLabel") then
							v.Visible = true
						end
					end
					InsideActContanierScrollingFrame.CanvasSize = BeforeOpen
					DropDownContainer.Visible = false
					DropDownButton.Text = "+"  -- Reset text to plus sign
					DropDownButton.TextSize = 44  -- Reset text size to original
					DropDownButton.Position = UDim2.new(0.878873229, 0, -0.0171862151, 0)  -- Reset position
				else
					-- If the dropdown is not visible, hide elements and show the dropdown
					BeforeOpen = InsideActContanierScrollingFrame.CanvasSize
					for _, v in pairs(InsideActContanierScrollingFrame:GetChildren()) do
						if v:IsA("TextButton") or v:IsA("TextBox") or v:IsA("Frame") or v:IsA("TextLabel") then
							v.Visible = false
						end
					end
					DropDownContainer.Visible = true
					DropDownContainer.Parent.Visible = true
					DropDownButton.Text = "-"  -- Change text to minus sign
					DropDownButton.TextSize = 65  -- Change text size for minus sign
					DropDownButton.Position = UDim2.new(0.878873229, 0, -0.1, 0)  -- Adjust position
				end
			end)
			if defaultValue then
				DropDownTitle.Text = DropDownName .. ": " .. defaultValue
				pcall(CallBack, defaultValue)
			end
		end



		function Module:CreateRefreshDropdown(DropDownName, ItemList, CallBack, RefreshFunction, defaultValue)
			assert(type(DropDownName) == "string", "Specify type string for DropDownName")
			assert(type(ItemList) == "table", "Specify type table for ItemList")
			assert(type(CallBack) == "function", "Specify type function for CallBack")
			assert(type(RefreshFunction) == "function", "Specify type function for RefreshFunction")

			local DropDown = Instance.new("Frame")
			local DropDownUICorner = Instance.new("UICorner")
			local DropDownTitle = Instance.new("TextLabel")
			local DropDownTitlePadding = Instance.new("UIPadding")
			local DropDownButton = Instance.new("TextButton")
			local DropDownContainer = Instance.new("ScrollingFrame")
			local DropDownUIListLayout = Instance.new("UIListLayout")
			local DropDownSearchTextBox = Instance.new("TextBox")

			DropDown.Name = "DropDown"
			DropDown.Parent = InsideActContanierScrollingFrame
			DropDown.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
			DropDown.BorderColor3 = Color3.fromRGB(31, 31, 31)
			DropDown.BorderSizePixel = 0
			DropDown.Position = UDim2.new(0.372448981, 0, 0.144827589, 0)
			DropDown.Size = UDim2.new(0, 378, 0, 38)

			DropDownUICorner.CornerRadius = UDim.new(0, 3)
			DropDownUICorner.Name = "DropDownUICorner"
			DropDownUICorner.Parent = DropDown

			DropDownTitle.Name = "DropDownTitle"
			DropDownTitle.Parent = DropDown
			DropDownTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropDownTitle.BackgroundTransparency = 1.000
			DropDownTitle.BorderColor3 = Color3.fromRGB(31, 31, 31)
			DropDownTitle.BorderSizePixel = 0
			DropDownTitle.Size = UDim2.new(0, 378, 0, 38)
			DropDownTitle.Font = Enum.Font.SourceSans
			DropDownTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			DropDownTitle.TextSize = 20.000
			DropDownTitle.TextXAlignment = Enum.TextXAlignment.Left
			DropDownTitle.Text = DropDownName .. ": " .. (defaultValue or "None")

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
			DropDownContainer.Size = UDim2.new(0, 372, 0, 300)  -- Adjust size as needed
			DropDownContainer.Visible = false
			DropDownContainer.CanvasSize = UDim2.new(0, 0, 0, 0)  -- To be dynamically set
			DropDownContainer.ScrollBarThickness = 6

			DropDownUIListLayout.Name = "DropDownUIListLayout"
			DropDownUIListLayout.Parent = DropDownContainer
			DropDownUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			DropDownUIListLayout.Padding = UDim.new(0, 3)

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

			local function UpdateSearchResults()
				local SearchBar = DropDownSearchTextBox
				local Items = DropDownContainer:GetChildren()
				local Search = string.lower(SearchBar.Text)

				for _, item in pairs(Items) do
					if item:IsA("TextButton") and item.Name == "DropDownTextButton" then
						if Search ~= "" then
							local ItemText = string.lower(item.Text)
							item.Visible = string.find(ItemText, Search) ~= nil
						else
							item.Visible = true
						end
					end
				end
			end

			DropDownSearchTextBox.Changed:Connect(UpdateSearchResults)

			local function RefreshDropdown()
				if not DropDownSearchTextBox:IsFocused() then
					-- Clear existing dropdown items
					for _, child in pairs(DropDownContainer:GetChildren()) do
						if child:IsA("TextButton") and child.Name == "DropDownTextButton" then
							child:Destroy()
						end
					end

					-- Call the RefreshFunction to get updated items
					local updatedItemList = RefreshFunction()

					-- Add updated items to the dropdown
					for _, v in pairs(updatedItemList) do
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
							DropDownTitle.Text = DropDownName .. ": " .. v
							pcall(CallBack, v)
							for _, d in pairs(InsideActContanierScrollingFrame:GetChildren()) do
								if d:IsA("Frame") or d:IsA("TextButton") or d:IsA("TextLabel") then
									d.Visible = true
								end
							end
							InsideActContanierScrollingFrame.CanvasSize = BeforeOpen
							DropDownContainer.Visible = false
							DropDownButton.Text = "+"  -- Reset text to plus sign
							DropDownButton.TextSize = 44  -- Reset text size to original
							DropDownButton.Position = UDim2.new(0.878873229, 0, -0.0171862151, 0)  -- Reset position
						end)
					end

					-- Update the canvas size for scrolling
					DropDownContainer.CanvasSize = UDim2.new(0, 0, 0, DropDownUIListLayout.AbsoluteContentSize.Y + 10)
				end
			end

			-- Refresh dropdown items when the dropdown is opened
			DropDownButton.MouseButton1Click:Connect(function()
				if DropDownContainer.Visible then
					-- If the dropdown is visible, hide it and make elements visible again
					for _, v in pairs(InsideActContanierScrollingFrame:GetChildren()) do
						if v:IsA("TextButton") or v:IsA("TextBox") or v:IsA("Frame") or v:IsA("TextLabel") then
							v.Visible = true
						end
					end
					InsideActContanierScrollingFrame.CanvasSize = BeforeOpen
					DropDownContainer.Visible = false
					DropDownButton.Text = "+"  -- Reset text to plus sign
					DropDownButton.TextSize = 44  -- Reset text size to original
					DropDownButton.Position = UDim2.new(0.878873229, 0, -0.0171862151, 0)  -- Reset position
				else
					-- If the dropdown is not visible, hide elements and show the dropdown
					BeforeOpen = InsideActContanierScrollingFrame.CanvasSize
					for _, v in pairs(InsideActContanierScrollingFrame:GetChildren()) do
						if v:IsA("TextButton") or v:IsA("TextBox") or v:IsA("Frame") or v:IsA("TextLabel") then
							v.Visible = false
						end
					end
					DropDownContainer.Visible = true
					DropDownContainer.Parent.Visible = true
					DropDownButton.Text = "-"  -- Change text to minus sign
					DropDownButton.TextSize = 65  -- Change text size for minus sign
					DropDownButton.Position = UDim2.new(0.878873229, 0, -0.1, 0)  -- Adjust position

					-- Refresh dropdown items
					RefreshDropdown()

					-- Create a loop to continuously refresh the dropdown
					local function continuousRefresh()
						while DropDownContainer.Visible do
							RefreshDropdown()
							wait(1)  -- Refresh every 5 seconds
						end
					end

					spawn(continuousRefresh)
				end
			end)

			-- Initial call to set up the dropdown items
			RefreshDropdown()
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
			Divider.Size = UDim2.new(0, 378, 0, 38)
			Divider.Font = Enum.Font.Bangers
			Divider.Text = DividerText
			Divider.TextColor3 = Color3.fromRGB(255, 255, 255)
			Divider.TextSize = 25.000
			Divider.Visible = true

			DividerDivider.Name = "DividerDivider"
			DividerDivider.Parent = Divider
			DividerDivider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DividerDivider.BorderColor3 = Color3.fromRGB(0, 0, 0)
			DividerDivider.BorderSizePixel = 0
			DividerDivider.Position = UDim2.new(-0.0161290318, 0, 1.12407315, 0)
			DividerDivider.Size = UDim2.new(0, 390, 0, -3)
			DividerDivider.Visible = true
		end


		function Module:CreateLabel(LabelName, LabelText)
			assert(type(LabelName) == "string", "specify type string for CreateLabel() function")
			assert(type(LabelText) == "string", "specify type string for CreateLabel() function")


			local Label = Instance.new("Frame")
			local LabelUICorner = Instance.new("UICorner")
			local LabelTitle = Instance.new("TextLabel")
			local LabelUIPadding = Instance.new("UIPadding")

			Label.Name = LabelName
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
			Divider.Visible = true

			DividerDivider.Name = "DividerDivider"
			DividerDivider.Parent = Divider
			DividerDivider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DividerDivider.BorderColor3 = Color3.fromRGB(0, 0, 0)
			DividerDivider.BorderSizePixel = 0
			DividerDivider.Position = UDim2.new(-0.0161290318, 0, 1.12407315, 0)
			DividerDivider.Size = UDim2.new(0, 390, 0, -3)
			DividerDivider.Visible = true



		end






		function Module:CreateTextBox(EnterValueName, TextBoxPlaceholderText, CallBack)
			assert(type(EnterValueName) == "string", "specify type string for EnterValueName parameter")
			assert(type(TextBoxPlaceholderText) == "string", "specify type string for TextBoxPlaceholderText parameter")
			assert(type(CallBack) == "function", "specify type function for CallBack parameter")

			local EnterValue = Instance.new("Frame")
			local EnterValueTextBox = Instance.new("TextBox")
			local EnterValueTitle = Instance.new("TextLabel")
			local DropDownTitlePadding = Instance.new("UIPadding")

			--Properties:

			EnterValue.Name = "EnterValue"
			EnterValue.Parent = InsideActContanierScrollingFrame
			EnterValue.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
			EnterValue.BorderColor3 = Color3.fromRGB(0, 0, 0)
			EnterValue.BorderSizePixel = 0
			EnterValue.Position = UDim2.new(0, 0, 0.48780489, 0)
			EnterValue.Size = UDim2.new(0, 378, 0, 38)

			EnterValueTextBox.Name = "EnterValueTextBox"
			EnterValueTextBox.Parent = EnterValue
			EnterValueTextBox.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
			EnterValueTextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
			EnterValueTextBox.BorderSizePixel = 0
			EnterValueTextBox.Position = UDim2.new(0.563712001, 0, 0.153773263, 0)
			EnterValueTextBox.Size = UDim2.new(0, 148, 0, 25)
			EnterValueTextBox.Font = Enum.Font.SourceSans
			EnterValueTextBox.PlaceholderText = "Enter Blessing.."
			EnterValueTextBox.Text = ""
			EnterValueTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
			EnterValueTextBox.TextSize = 19.000
			EnterValueTextBox.TextWrapped = true
			EnterValueTextBox.PlaceholderText = TextBoxPlaceholderText

			EnterValueTitle.Name = "EnterValueTitle"
			EnterValueTitle.Parent = EnterValue
			EnterValueTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			EnterValueTitle.BackgroundTransparency = 1.000
			EnterValueTitle.BorderColor3 = Color3.fromRGB(31, 31, 31)
			EnterValueTitle.BorderSizePixel = 0
			EnterValueTitle.Size = UDim2.new(0, 231, 0, 38)
			EnterValueTitle.Font = Enum.Font.SourceSans
			EnterValueTitle.Text = EnterValueName
			EnterValueTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
			EnterValueTitle.TextSize = 20.000
			EnterValueTitle.TextXAlignment = Enum.TextXAlignment.Left

			DropDownTitlePadding.Name = "DropDownTitlePadding"
			DropDownTitlePadding.Parent = EnterValueTitle
			DropDownTitlePadding.PaddingLeft = UDim.new(0, 6)


			EnterValueTextBox:GetPropertyChangedSignal("Text"):Connect(function()
				CallBack(EnterValueTextBox.Text)
			end)

			-- Update CallBack when focus is lost and Enter is pressed
			EnterValueTextBox.FocusLost:Connect(function(enterPressed)
				if enterPressed then
					CallBack(EnterValueTextBox.Text)
				end
			end)
		end






		return Module
	end
	return Category
end

--[[
local ui = library:CreateWindow("Baseplate")


local Main = ui:new("Main")
local Info = ui:new("Upgrades")
local Egg = ui:new("Pets")
local tp = ui:new("Teleport")
local Misc = ui:new("Misc")

local VU = game:GetService("VirtualUser")
local Player = game:GetService("Players").LocalPlayer
local WS = game:GetService("Workspace")
local RS = game:GetService("ReplicatedStorage")
local T = WS.Terrain
local LI = game:GetService("Lighting")
local Codes = {"SORRYFORLASTUPDATE", "UPDATE4.5", "10KLIKES", "UPDATE4", "1MVISITS", "UPDATE3", "SORRYFORDUNGEONBUG", "UPDATE2.5", "5KLIKES", "UPDATE2", "SORRYFORSHUTDOWN", "2KLIKES", "UPDATE1", "1KLIKES", "Daetoi", "BUGFIXES"}
local Farm = {"TeleportToSelectedMob", "AllMobs"}
local Upgradess = {"Power", "Gems", "Sword", "PetsEquipped", "Sphere"}
--Variables

local Saved;
local SelectedTp;
local SelectedRebirths;
local SelectedEggs;
local SelectedUpgrade;


-- Anti Afk

Player.Idled:Connect(function()
	VU:Button2Down(Vector2.new(0, 0), WS.CurrentCamera.CFrame)
	wait(1)
	VU:Button2Up(Vector2.new(0, 0), WS.CurrentCamera.CFrame)
end)



--functions



-- Labels



--functions

function getmobs()
    local Mobs = {}
    local UniqueMobs = {} -- Table to keep track of unique mob names

    for _, v in pairs(WS.Enemys:GetDescendants()) do
        if v:IsA("TextLabel") and v.Name == "EnemyName" then
            local mobName = v.Text
            if not UniqueMobs[mobName] then
                -- If mobName is not in UniqueMobs, add it to Mobs and mark it as seen
                table.insert(Mobs, mobName)
                UniqueMobs[mobName] = true
            end
        end
    end

    return Mobs
end



--Main

--Main

local Farms = {"Farm Selected Mob", "All Mobs"}
local SelectedFarm
local SelectedMobs = {}

Main:CreateDropdown("Selected Farm", Farms, function(Farm)
    SelectedFarm = Farm
end)

Main:CreateRefreshDropdown("Selected Mob", getmobs(), function(Mob)
    SelectedMobs = {Mob}
end, getmobs)

Main:CreateToggle("Auto Farm", false, function(x)
    Toggled = x
    spawn(function()
        while Toggled do
            task.wait()
            if Toggled then
                if SelectedFarm == "Farm Selected Mob" then
                    if #SelectedMobs > 0 then
                        for _, mobName in pairs(SelectedMobs) do
                            for _, v in pairs(WS.Enemys:GetDescendants()) do
                                if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
                                    if v.HumanoidRootPart.EnemyNameGui.EnemyName.Text == mobName then
                                        if v.HumanoidRootPart.EnemyNameGui.HealthNum.Text > tostring(0) then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 0, 2)
                                            break
                                        end
                                    end
                                end
                            end
                        end
                    end
                elseif SelectedFarm == "All Mobs" then
                    local nearest
                    local NearestOne = 1000
                    for _, v in pairs(WS.Enemys:GetDescendants()) do
                        if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
                            if v.HumanoidRootPart.EnemyNameGui.HealthNum.Text > tostring(0) then
                                local distance = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                if distance < NearestOne then
                                    nearest = v
                                    NearestOne = distance
                                end
                            end
                        end
                    end
                    if nearest then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = nearest.HumanoidRootPart.CFrame * CFrame.new(0, 0, 5)
                    else
                        print("No nearest mob found")
                    end
                end
            end
        end
    end)
end)





Main:CreateToggle("Auto Collect", true, function()
	for _,v in pairs(WS.Golds:GetChildren()) do
		local Time = 1
		local tween = game:GetService("TweenService"):Create(v, TweenInfo.new(Time), {CFrame = Player.Character.HumanoidRootPart.CFrame})
		tween:Play()
		tween.Completed:Wait()
	end
end)








--Upgrades


-- Misc

Misc:CreateDivider("Misc")


Misc:CreateButton("FPS Boost", function()
	local decalsyeeted = true
	local g = game
	T.WaterWaveSize = 0
	T.WaterWaveSpeed = 0
	T.WaterReflectance = 0
	T.WaterTransparency = 0
	LI.GlobalShadows = false
	LI.FogEnd = 9e9
	LI.Brightness = 0
	settings().Rendering.QualityLevel = "Level01"
	for _, v in pairs(g:GetDescendants()) do
		if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
			v.Material = "Plastic"
			v.Reflectance = 0
		elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
			v.Transparency = 1
		elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
			v.Lifetime = NumberRange.new(0)
		elseif v:IsA("Explosion") then
			v.BlastPressure = 1
			v.BlastRadius = 1
		elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
			v.Enabled = false
		elseif v:IsA("MeshPart") then
			v.Material = "Plastic"
			v.Reflectance = 0
			v.TextureID = 10385902758728957
		end
	end
	for _, e in pairs(LI:GetChildren()) do
		if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
			e.Enabled = false
		end
	end
end)

local TextLabel = Instance.new("TextLabel")

TextLabel.Parent = game:GetService("CoreGui").FATALITY
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0745672435, 0, 0.0299251862, 0)
TextLabel.Size = UDim2.new(0, 1216, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "FPS: Loading"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 47.000
TextLabel.TextWrapped = true
TextLabel.Name = "FPStext"
TextLabel.Visible = false

FPSAverage = {}
local Ticking = false
local LastTick = tick()

local RunService = game:GetService("RunService")
RunService:BindToRenderStep("UpdateInfo", 1000, function()
	if Ticking == true then
		local fps = math.floor(.5 + (1 / (tick() - LastTick)))
		local sum = 0
		local ave = 0
		table.insert(FPSAverage, fps)
		for i = 1, #FPSAverage do
			sum = sum + FPSAverage[i]
		end
		game:GetService("CoreGui").FATALITY.FPStext.Text = "FPS: " .. tostring(fps) .. " Average: " .. string.format("%.0f", (sum / #FPSAverage))
		if (tick() - LastTick) >= 15 then
			FPSAverage = { }
			LastTick = tick()
		end
		LastTick = tick()
	end
end)


Misc:CreateButton("Show/Hide FPS Counter", function()
	game:GetService("CoreGui").FATALITY.FPStext.Visible = not game:GetService("CoreGui").FATALITY.FPStext.Visible
	Ticking = not Ticking
end)


Misc:CreateButton("Redeem Codes", function()
	for i,v in pairs(Codes) do
		local args = {
			[1] = "Shop",
			[2] = {
				[1] = "UseCode",
				[2] = v
			}
		}

		game:GetService("ReplicatedStorage").MainRemote:FireServer(unpack(args))
	end
end)


Misc:CreateSlider("WalkSpeed", {min = 16, max = 218, default = 16}, function(state)
	Player.Character.Humanoid.WalkSpeed = state
end)

Misc:CreateButton("Copy Discord Invite", function()
	setclipboard("https://discord.gg/ups8GeuYAD")
end)




local TeleportService = game:GetService("TeleportService")


Misc:CreateButton("Refresh UI", function()
	game:GetService("CoreGui").FATALITY:Destroy()
	task.wait(1)
	loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub/main/DumbHub.lua"))()
end)


Misc:CreateButton("Uninject", function()
	game:GetService("CoreGui").FATALITY:Destroy()
end)


Misc:CreateButton("Uninject and Rejoin", function()
	game:GetService("CoreGui").FATALITY:Destroy()
	TeleportService:Teleport(game.PlaceId)
end)



--]]

return library
