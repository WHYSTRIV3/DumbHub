local FatalityLoadingScreen = Instance.new("ScreenGui")
local LogoFrame = Instance.new("Frame")
local UIName = Instance.new("TextLabel")
local LoadingFrame = Instance.new("Frame")
local UIName_2 = Instance.new("TextLabel")
local LoadingDots = Instance.new("TextLabel")
local Skip = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local LoadingText = Instance.new("TextLabel")
local Logo = Instance.new("ImageLabel")



FatalityLoadingScreen.Name = "FatalityLoadingScreen"
FatalityLoadingScreen.Parent = game:GetService("CoreGui")
FatalityLoadingScreen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

LogoFrame.Name = "LogoFrame"
LogoFrame.Parent = FatalityLoadingScreen
LogoFrame.AnchorPoint = Vector2.new(0.5, 0.5)
LogoFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
LogoFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
LogoFrame.Size = UDim2.new(0, 700, 0, 385)
LogoFrame.Visible = false

UIName.Name = "UIName"
UIName.Parent = LogoFrame
UIName.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
UIName.BackgroundTransparency = 1.000
UIName.Position = UDim2.new(0.193000004, 0, 0.291000009, 0)
UIName.Size = UDim2.new(0, 427, 0, 140)
UIName.Font = Enum.Font.Creepster
UIName.Text = "FATALITY"
UIName.TextColor3 = Color3.fromRGB(170, 0, 0)
UIName.TextSize = 100.000

LoadingFrame.Name = "LoadingFrame"
LoadingFrame.Parent = FatalityLoadingScreen
LoadingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
LoadingFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
LoadingFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
LoadingFrame.Size = UDim2.new(0, 700, 0, 385)
LoadingFrame.ZIndex = 0




Logo.Name = "Logo"
Logo.Parent = LoadingFrame
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BackgroundTransparency = 1.000
Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
Logo.BorderSizePixel = 0
Logo.Size = UDim2.new(0, 83, 0, 79)
Logo.Image = "rbxassetid://17308281713"

UIName_2.Name = "UIName"
UIName_2.Parent = LoadingFrame
UIName_2.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
UIName_2.BackgroundTransparency = 1.000
UIName_2.Position = UDim2.new(0.192857146, 0, 0.290909082, 0)
UIName_2.Size = UDim2.new(0, 427, 0, 140)
UIName_2.Font = Enum.Font.Creepster
UIName_2.Text = "FATALITY"
UIName_2.TextColor3 = Color3.fromRGB(170, 0, 0)
UIName_2.TextSize = 100.000

LoadingDots.Name = "LoadingDots"
LoadingDots.Parent = LoadingFrame
LoadingDots.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoadingDots.BackgroundTransparency = 1.000
LoadingDots.Position = UDim2.new(0.489, 0, 0.717, 0)
LoadingDots.Size = UDim2.new(0, 117, 0, 16)
LoadingDots.Font = Enum.Font.SourceSans
LoadingDots.Text = "."
LoadingDots.TextColor3 = Color3.fromRGB(255, 255, 255)
LoadingDots.TextSize = 62.000

Skip.Name = "Skip"
Skip.Parent = LoadingFrame
Skip.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
Skip.Position = UDim2.new(0.355714291, 0, 0.815584421, 0)
Skip.Size = UDim2.new(0, 200, 0, 43)
Skip.Font = Enum.Font.SourceSans
Skip.Text = "Skip Loading "
Skip.TextColor3 = Color3.fromRGB(255, 255, 255)
Skip.TextSize = 25.000

UICorner.Parent = Skip

LoadingText.Name = "LoadingText"
LoadingText.Parent = LoadingFrame
LoadingText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoadingText.BackgroundTransparency = 1.000
LoadingText.BorderColor3 = Color3.fromRGB(0, 0, 0)
LoadingText.BorderSizePixel = 0
LoadingText.Position = UDim2.new(0.38142857, 0, 0.701298714, 0)
LoadingText.Size = UDim2.new(0, 123, 0, 40)
LoadingText.Font = Enum.Font.SourceSans
LoadingText.Text = "Loading Fatality"
LoadingText.TextColor3 = Color3.fromRGB(255, 255, 255)
LoadingText.TextSize = 23.000

Skip.MouseButton1Click:Connect(
	function()
		wait(0.5)
		LoadingFrame:Destroy()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub/main/KeyLibrary.lua"))()
	end)





-------------------------Functions-------------------------





local function TextTwenn() 
	local script = Instance.new('LocalScript', LoadingFrame)

	local FatalityLoadingScreen = script.Parent


	local UIName = script.Parent.UIName

	local LoadingDots = script.Parent.LoadingDots

	local Skip = script.Parent.Skip

	local TweenSerive = game:GetService("TweenService")

	game.ReplicatedFirst:RemoveDefaultLoadingScreen()
	FatalityLoadingScreen.Visible = true


	LoadingDots.Text = "..."
	wait(0.8)
	LoadingDots.Text = "."
	wait(0.8)
	LoadingDots.Text = ".."
	wait(0.8)
	LoadingDots.Text = "..."
	wait(0.8)
	LoadingDots.Text = "."
	wait(0.8)
	LoadingDots.Text = ".."
	wait(0.8)
	LoadingDots.Text = "..."
	wait(0.8)
	LoadingDots.Text = "."
	wait(0.8)
	LoadingDots.Text = ".."
	wait(0.8)
	LoadingDots.Text = "..."

	for i = 1,100 do

		UIName.TextTransparency += 0.03
		LoadingDots.TextTransparency += 0.03
		Skip.Transparency += 0.03
		LoadingText.TextTransparency += 0.03
		LoadingFrame.Transparency += 0.03
		Logo.ImageTransparency += 0.03
		wait(0.0001)
	end

	wait(0.1)

	FatalityLoadingScreen:Destroy()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub/main/KeyLibrary.lua"))()
end
coroutine.wrap(TextTwenn)()

