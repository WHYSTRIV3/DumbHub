--Everyday at 12
local TwoFourHourKey = "PumpkinPie"



local ID = {
	
	-- DumbHubOwner 
	4041931572,
	-- My Main  
	2958606564, 




	------------------------------Buyers-------------------------





	------------------------------Boosters------------------------





	------------------------------Youtuber Role---------------------

	-- Qrto#9387
	3512195573
}

local FatalityKeyLibrary = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Container = Instance.new("Frame")
local KeyExpiresFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local KeyExpiresDivider = Instance.new("Frame")
local KeyExpiresTitle = Instance.new("TextLabel")
local _24HourKeyTitle = Instance.new("TextLabel")
local _24HTime = Instance.new("TextLabel")
local ContainerUICorner = Instance.new("UICorner")
local PlayerImage = Instance.new("ImageLabel")
local UICorner_2 = Instance.new("UICorner")
local PlayerName = Instance.new("TextLabel")
local PlayerID = Instance.new("TextLabel")
local ConsoleFrame = Instance.new("Frame")
local ConsoleUICorner = Instance.new("UICorner")
local ConsoleDivider = Instance.new("Frame")
local ConsoleTitle = Instance.new("TextLabel")
local CheckingKeyText = Instance.new("TextLabel")
local CheckingGameText = Instance.new("TextLabel")
local DoneText = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local TextBoxUICorner = Instance.new("UICorner")
local CancelButton = Instance.new("TextButton")
local CancelButtonUICorner = Instance.new("UICorner")
local ConfirmButton = Instance.new("TextButton")
local ConfirmButtonUICorner = Instance.new("UICorner")
local PremiumKey = Instance.new("TextButton")
local PremiumUICorner = Instance.new("UICorner")
local Access = Instance.new("TextLabel")
local GetKey = Instance.new("TextButton")
local GetKeyUICorner = Instance.new("UICorner")
local MainUICorner = Instance.new("UICorner")
local MainTitle = Instance.new("TextLabel")
local DHLogo = Instance.new("ImageLabel")
local MainTopDivider = Instance.new("Frame")
local Version = Instance.new("TextLabel")
local MainBottonDivider = Instance.new("Frame")
local DiscordLabel = Instance.new("TextLabel")
local YTLabel = Instance.new("TextLabel")
local TwitterLabel = Instance.new("TextLabel")
local Alert = Instance.new("Frame")
local AlertText = Instance.new("TextLabel")
local AlertTitle = Instance.new("TextLabel")
local AlertDivider = Instance.new("Frame")
local Game = Instance.new("TextLabel")
local HideTextButton = Instance.new("TextButton")
local HideTextUICorner = Instance.new("UICorner")

local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

FatalityKeyLibrary.Name = "FatalityKeyLibrary"
FatalityKeyLibrary.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
FatalityKeyLibrary.ZIndexBehavior = Enum.ZIndexBehavior.Sibling


Main.Name = "Main"
Main.Parent = FatalityKeyLibrary
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderColor3 = Color3.fromRGB(255, 255, 255)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.477994442, 0, 0.533770144, 0)
Main.Size = UDim2.new(0, 564, 0, 579)

MainUICorner.Name = "MainUICorner"
MainUICorner.Parent = Main



MainUICorner.Name = "MainUICorner"
MainUICorner.Parent = Main

MainTitle.Name = "MainTitle"
MainTitle.Parent = Main
MainTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainTitle.BackgroundTransparency = 1.000
MainTitle.Position = UDim2.new(0.2730425, 0, 0.0176706798, 0)
MainTitle.Size = UDim2.new(0, 255, 0, 60)
MainTitle.Font = Enum.Font.Bangers
MainTitle.Text = "FATALITY"
MainTitle.TextColor3 = Color3.fromRGB(170, 0, 0)
MainTitle.TextSize = 75.000

MainTopDivider.Name = "MainTopDivider"
MainTopDivider.Parent = Main
MainTopDivider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainTopDivider.BorderSizePixel = 0
MainTopDivider.Position = UDim2.new(0, 0, 0.138371542, 0)
MainTopDivider.Size = UDim2.new(0, 564, 0, 3)

Version.Name = "Version"
Version.Parent = MainTopDivider
Version.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Version.BackgroundTransparency = 1.000
Version.Position = UDim2.new(0.914590716, 0, -9.10526562, 0)
Version.Size = UDim2.new(0, 48, 0, 27)
Version.Font = Enum.Font.SourceSans
Version.Text = "V0.1"
Version.TextColor3 = Color3.fromRGB(255, 255, 255)
Version.TextSize = 19.000

Container.Name = "Container"
Container.Parent = Main
Container.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Container.BorderColor3 = Color3.fromRGB(11, 11, 11)
Container.BorderSizePixel = 0
Container.Position = UDim2.new(0.0215734933, 0, 0.160616383, 0)
Container.Selectable = true
Container.Size = UDim2.new(0, 541, 0, 438)

ContainerUICorner.Name = "ContainerUICorner"
ContainerUICorner.Parent = Container

KeyExpiresFrame.Name = "KeyExpiresFrame"
KeyExpiresFrame.Parent = Container
KeyExpiresFrame.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
KeyExpiresFrame.BorderSizePixel = 0
KeyExpiresFrame.Position = UDim2.new(0.292865068, 0, 0.87205416, 0)
KeyExpiresFrame.Size = UDim2.new(0, 220, 0, 56)

UICorner.Parent = KeyExpiresFrame

KeyExpiresDivider.Name = "KeyExpiresDivider"
KeyExpiresDivider.Parent = KeyExpiresFrame
KeyExpiresDivider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KeyExpiresDivider.BorderColor3 = Color3.fromRGB(255, 255, 255)
KeyExpiresDivider.BorderSizePixel = 0
KeyExpiresDivider.Position = UDim2.new(0.00436678808, 0, 0.446817666, 0)
KeyExpiresDivider.Size = UDim2.new(0, 219, 0, 2)

KeyExpiresTitle.Name = "KeyExpiresTitle"
KeyExpiresTitle.Parent = KeyExpiresFrame
KeyExpiresTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KeyExpiresTitle.BackgroundTransparency = 1.000
KeyExpiresTitle.Position = UDim2.new(0.0490754656, 0, -0.0093056811, 0)
KeyExpiresTitle.Size = UDim2.new(0, 192, 0, 20)
KeyExpiresTitle.Font = Enum.Font.SourceSans
KeyExpiresTitle.Text = "Key Resets In.."
KeyExpiresTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyExpiresTitle.TextSize = 18.000
KeyExpiresTitle.TextWrapped = true

_24HTime.Name = "24HTime"
_24HTime.Parent = KeyExpiresFrame
_24HTime.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_24HTime.BackgroundTransparency = 1.000
_24HTime.Position = UDim2.new(0.0502147786, 0, 0.533593297, 0)
_24HTime.Size = UDim2.new(0, 189, 0, 26)
_24HTime.Font = Enum.Font.SourceSans
_24HTime.Text = "0D 0H 0M 0S"
_24HTime.TextColor3 = Color3.fromRGB(255, 255, 255)
_24HTime.TextSize = 22.000
_24HTime.TextWrapped = true



PlayerImage.Name = "PlayerImage"
PlayerImage.Parent = Container
PlayerImage.BackgroundColor3 = Color3.fromRGB(76, 76, 76)
PlayerImage.BorderSizePixel = 0
PlayerImage.Position = UDim2.new(0.0205589309, 0, 0.03187152, 0)
PlayerImage.Size = UDim2.new(0, 79, 0, 80)

UICorner_2.CornerRadius = UDim.new(2, 0)
UICorner_2.Parent = PlayerImage

HideTextButton.Name = "HideTextButton"
HideTextButton.Parent = Container
HideTextButton.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
HideTextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HideTextButton.BorderSizePixel = 0
HideTextButton.Position = UDim2.new(0.0388170071, 0, 0.233814672, 0)
HideTextButton.Size = UDim2.new(0, 58, 0, 21)
HideTextButton.Font = Enum.Font.SourceSans
HideTextButton.Text = "Hide"
HideTextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
HideTextButton.TextSize = 14.000


HideTextButton.MouseButton1Click:Connect(function()
	PlayerID.Text = "Player ID: ID"
	PlayerName.Text = "Welcome To FATALITY Player"
end)

PlayerName.Name = "PlayerName"
PlayerName.Parent = Container
PlayerName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayerName.BackgroundTransparency = 1.000
PlayerName.Position = UDim2.new(0.195425183, 0, 0.0306182541, 0)
PlayerName.Size = UDim2.new(0, 293, 0, 33)
PlayerName.Font = Enum.Font.Gotham
PlayerName.Text = "Welcome To Fatality"
PlayerName.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayerName.TextSize = 20.000
PlayerName.TextXAlignment = Enum.TextXAlignment.Left

PlayerID.Name = "PlayerID"
PlayerID.Parent = Container
PlayerID.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayerID.BackgroundTransparency = 1.000
PlayerID.Position = UDim2.new(0.194946498, 0, 0.0878215656, 0)
PlayerID.Size = UDim2.new(0, 185, 0, 29)
PlayerID.Font = Enum.Font.Gotham
PlayerID.Text = "ID: 41414124124"
PlayerID.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayerID.TextSize = 20.000
PlayerID.TextXAlignment = Enum.TextXAlignment.Left

Access.Name = "Access"
Access.Parent = Container
Access.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Access.BackgroundTransparency = 1.000
Access.Position = UDim2.new(0.194946498, 0, 0.147279322, 0)
Access.Size = UDim2.new(0, 185, 0, 29)
Access.Font = Enum.Font.Gotham
Access.Text = "Access: Normal"
Access.TextColor3 = Color3.fromRGB(255, 255, 255)
Access.TextSize = 20.000
Access.TextXAlignment = Enum.TextXAlignment.Left

Game.Name = "Access"
Game.Parent = Container
Game.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Game.BackgroundTransparency = 1.000
Game.Position = UDim2.new(0.194946513, 0, 0.213489413, 0)
Game.Size = UDim2.new(0, 185, 0, 29)
Game.Font = Enum.Font.Gotham
Game.Text = "Game: "..GameName
Game.TextColor3 = Color3.fromRGB(255, 255, 255)
Game.TextSize = 20.000
Game.TextXAlignment = Enum.TextXAlignment.Left

ConsoleFrame.Name = "ConsoleFrame"
ConsoleFrame.Parent = Container
ConsoleFrame.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
ConsoleFrame.BorderSizePixel = 0
ConsoleFrame.Position = UDim2.new(0.171647787, 0, 0.336329907, 0)
ConsoleFrame.Size = UDim2.new(0, 350, 0, 116)

ConsoleUICorner.Name = "ConsoleUICorner"
ConsoleUICorner.Parent = ConsoleFrame

ConsoleDivider.Name = "ConsoleDivider"
ConsoleDivider.Parent = ConsoleFrame
ConsoleDivider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ConsoleDivider.BorderColor3 = Color3.fromRGB(255, 255, 255)
ConsoleDivider.BorderSizePixel = 0
ConsoleDivider.Position = UDim2.new(0, 0, 0.250664532, 0)
ConsoleDivider.Size = UDim2.new(0, 350, 0, 2)

ConsoleTitle.Name = "ConsoleTitle"
ConsoleTitle.Parent = ConsoleFrame
ConsoleTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ConsoleTitle.BackgroundTransparency = 1.000
ConsoleTitle.Position = UDim2.new(0.215959817, 0, -0.0348526537, 0)
ConsoleTitle.Size = UDim2.new(0, 181, 0, 37)
ConsoleTitle.Font = Enum.Font.Gotham
ConsoleTitle.Text = "Console"
ConsoleTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
ConsoleTitle.TextSize = 23.000
ConsoleTitle.TextWrapped = true

CheckingKeyText.Name = "CheckingKeyText"
CheckingKeyText.Parent = ConsoleFrame
CheckingKeyText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CheckingKeyText.BackgroundTransparency = 1.000
CheckingKeyText.Position = UDim2.new(0.020935744, 0, 0.297359198, 0)
CheckingKeyText.Size = UDim2.new(0, 259, 0, 37)
CheckingKeyText.Font = Enum.Font.Gotham
CheckingKeyText.Text = " > Checking Key.. 1/3"
CheckingKeyText.TextColor3 = Color3.fromRGB(255, 255, 255)
CheckingKeyText.TextSize = 17.000
CheckingKeyText.TextWrapped = true
CheckingKeyText.TextXAlignment = Enum.TextXAlignment.Left
CheckingKeyText.Visible = false

CheckingGameText.Name = "CheckingGameText"
CheckingGameText.Parent = ConsoleFrame
CheckingGameText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CheckingGameText.BackgroundTransparency = 1.000
CheckingGameText.Position = UDim2.new(0, 0, 0.522968829, 0)
CheckingGameText.Size = UDim2.new(0, 265, 0, 37)
CheckingGameText.Font = Enum.Font.Gotham
CheckingGameText.Text = " > Checking Game.. 1/3"
CheckingGameText.TextColor3 = Color3.fromRGB(255, 255, 255)
CheckingGameText.TextSize = 17.000
CheckingGameText.TextWrapped = true
CheckingGameText.TextXAlignment = Enum.TextXAlignment.Left
CheckingGameText.Visible = false

DoneText.Name = "DoneText"
DoneText.Parent = ConsoleFrame
DoneText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DoneText.BackgroundTransparency = 1.000
DoneText.Position = UDim2.new(0.020935744, 0, 0.748578787, 0)
DoneText.Size = UDim2.new(0, 259, 0, 37)
DoneText.Font = Enum.Font.Gotham
DoneText.Text = " > Done!"
DoneText.TextColor3 = Color3.fromRGB(255, 255, 255)
DoneText.TextSize = 17.000
DoneText.TextWrapped = true
DoneText.TextXAlignment = Enum.TextXAlignment.Left
DoneText.Visible = false

TextBox.Parent = Container
TextBox.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
TextBox.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.177193075, 0, 0.63354826, 0)
TextBox.Size = UDim2.new(0, 349, 0, 37)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "Access Key"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 21.000
TextBox.TextStrokeTransparency = 0.500

TextBoxUICorner.Name = "TextBoxUICorner"
TextBoxUICorner.Parent = TextBox

ConfirmButtonUICorner.Name = "ConfirmButtonUICorner"
ConfirmButtonUICorner.Parent = ConfirmButton

CancelButtonUICorner.Name = "CancelButtonUICorner"
CancelButtonUICorner.Parent = CancelButton

PremiumUICorner.Name = "PremiumUICorner"
PremiumUICorner.Parent = PremiumKey

GetKeyUICorner.Name = "GetKeyUICorner"
GetKeyUICorner.Parent = GetKey

MainBottonDivider.Name = "MainBottonDivider"
MainBottonDivider.Parent = Main
MainBottonDivider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainBottonDivider.BorderSizePixel = 0
MainBottonDivider.Position = UDim2.new(0, 0, 0.939166188, 0)
MainBottonDivider.Size = UDim2.new(0, 564, 0, 3)

DiscordLabel.Name = "DiscordLabel"
DiscordLabel.Parent = MainBottonDivider
DiscordLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DiscordLabel.BackgroundTransparency = 1.000
DiscordLabel.Position = UDim2.new(0.0551601425, 0, 1, 0)
DiscordLabel.Size = UDim2.new(0, 153, 0, 32)
DiscordLabel.Font = Enum.Font.SourceSans
DiscordLabel.Text = "https://discord.gg/sSffxajvYe"
DiscordLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
DiscordLabel.TextSize = 17.000

YTLabel.Name = "YTLabel"
YTLabel.Parent = MainBottonDivider
YTLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
YTLabel.BackgroundTransparency = 1.000
YTLabel.Position = UDim2.new(0.402135223, 0, 1, 0)
YTLabel.Size = UDim2.new(0, 139, 0, 32)
YTLabel.Font = Enum.Font.SourceSans
YTLabel.Text = "Youtube: FATALITY"
YTLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
YTLabel.TextSize = 17.000

TwitterLabel.Name = "TwitterLabel"
TwitterLabel.Parent = MainBottonDivider
TwitterLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TwitterLabel.BackgroundTransparency = 1.000
TwitterLabel.Position = UDim2.new(0.725803137, 0, 1, 0)
TwitterLabel.Size = UDim2.new(0, 117, 0, 32)
TwitterLabel.Font = Enum.Font.SourceSans
TwitterLabel.Text = "Twitter: DUMBHUB"
TwitterLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TwitterLabel.TextSize = 17.000



---------------Alert message-----------------

Alert.Name = "Alert"
Alert.Parent = V4KeyLibrary
Alert.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
Alert.BorderSizePixel = 0
Alert.Position = UDim2.new(0.862182508, 0, 0.860810995, 0)
Alert.Size = UDim2.new(0, 314, 0, 136)
Alert.Visible = false

AlertText.Name = "AlertText"
AlertText.Parent = Alert
AlertText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AlertText.BackgroundTransparency = 1.000
AlertText.Position = UDim2.new(0.152866244, 0, 0.264705896, 0)
AlertText.Size = UDim2.new(0, 218, 0, 80)
AlertText.Font = Enum.Font.SourceSans
AlertText.Text = "Key link has been copied to your clipboard"
AlertText.TextColor3 = Color3.fromRGB(255, 255, 255)
AlertText.TextScaled = true
AlertText.TextSize = 18.000
AlertText.TextWrapped = true

AlertTitle.Name = "AlertTitle"
AlertTitle.Parent = Alert
AlertTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AlertTitle.BackgroundTransparency = 1.000
AlertTitle.Position = UDim2.new(0.181528658, 0, -0.0514705889, 0)
AlertTitle.Size = UDim2.new(0, 200, 0, 50)
AlertTitle.Font = Enum.Font.SourceSans
AlertTitle.Text = "DumbHub Alert"
AlertTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
AlertTitle.TextSize = 28.000

AlertDivider.Name = "AlertDivider"
AlertDivider.Parent = Alert
AlertDivider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AlertDivider.BorderColor3 = Color3.fromRGB(255, 255, 255)
AlertDivider.Position = UDim2.new(0, 0, 0.242647052, 0)
AlertDivider.Size = UDim2.new(0, 314, 0, 3)

-------------Confirm/Cancel/Premium/GetKey Buttons------------------------

CancelButton.Name = "CancelButton"
CancelButton.Parent = Container
CancelButton.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
CancelButton.Position = UDim2.new(0.585695863, 0, 0.755755961, 0)
CancelButton.Size = UDim2.new(0, 127, 0, 30)
CancelButton.Font = Enum.Font.SourceSans
CancelButton.Text = "Cancel"
CancelButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CancelButton.TextSize = 14.000

CancelButton.MouseButton1Click:Connect(function()
	FatalityKeyLibrary:Destroy()
end)


GetKey.Name = "GetKey"
GetKey.Parent = Container
GetKey.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
GetKey.Position = UDim2.new(0.735658646, 0, 0.847309947, 0)
GetKey.Size = UDim2.new(0, 127, 0, 30)
GetKey.Font = Enum.Font.SourceSans
GetKey.Text = "Get Key"
GetKey.TextColor3 = Color3.fromRGB(255, 255, 255)
GetKey.TextSize = 14.000

GetKey.MouseButton1Click:Connect(function()
	setclipboard("https://discord.gg/JmAku377Ge")
		game.StarterGui:SetCore("SendNotification", {
			Title = "FATALITY ";
			Text = "Key Copied To ClipBoard"; 
			Icon = "rbxassetid://17308281713";
			Duration = 5;
		})
end)


ConfirmButton.Name = "ConfirmButton"
ConfirmButton.Parent = Container
ConfirmButton.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
ConfirmButton.Position = UDim2.new(0.173508957, 0, 0.755755961, 0)
ConfirmButton.Size = UDim2.new(0, 127, 0, 30)
ConfirmButton.Font = Enum.Font.SourceSans
ConfirmButton.Text = "Confirm"
ConfirmButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ConfirmButton.TextSize = 14.000

ConfirmButton.MouseButton1Click:Connect(
	function()
		if TextBox.Text == TwoFourHourKey then
			CheckingKeyText.Visible = true
			CheckingKeyText.Text = "> Checking Key.. 1/3"
			wait(1)
			CheckingKeyText.Text = "> Checking Key.. 2/3"
			wait(1)
			CheckingKeyText.Text = "> Checking Key.. 3/3"
			wait(1)
			CheckingKeyText.Text = "> Valid Key"
			wait(1)
			CheckingGameText.Visible = true
			CheckingGameText.Text = " > Checking For Script.. 1/3"
			wait(1)
			CheckingGameText.Text = " > Checking For Script.. 2/3"
			wait(1)
			CheckingGameText.Text = " > Checking For Script.. 3/3"
			wait(1)
			CheckingGameText.Text = " > Script Found"
			wait(1)
			DoneText.Visible = true
			wait(1)
			FatalityKeyLibrary:Destroy()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub/main/UILoadStrings.lua"))()

		elseif TextBox.Text == ThreeDayKey then
			CheckingKeyText.Visible = true
			CheckingKeyText.Text = "> Checking Key.. 1/3"
			wait(1)
			CheckingKeyText.Text = "> Checking Key.. 2/3"
			wait(1)
			CheckingKeyText.Text = "> Checking Key.. 3/3"
			wait(1)
			CheckingKeyText.Text = "> Valid Key"
			wait(1)
			CheckingGameText.Visible = true
			CheckingGameText.Text = " > Checking For Script.. 1/3"
			wait(1)
			CheckingGameText.Text = " > Checking For Script.. 2/3"
			wait(1)
			CheckingGameText.Text = " > Checking For Script.. 3/3"
			wait(1)
			CheckingGameText.Text = " > Script Found"
			wait(1)
			DoneText.Visible = true
			wait(1)
			FatalityKeyLibrary:Destroy()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub/main/UILoadStrings.lua"))()

		elseif TextBox.Text == WeekDayKey then
			CheckingKeyText.Visible = true
			CheckingKeyText.Text = "> Checking Key.. 1/3"
			wait(1)
			CheckingKeyText.Text = "> Checking Key.. 2/3"
			wait(1)
			CheckingKeyText.Text = "> Checking Key.. 3/3"
			wait(1)
			CheckingKeyText.Text = "> Valid Key"
			wait(1)
			CheckingGameText.Visible = true
			CheckingGameText.Text = " > Checking For Script.. 1/3"
			wait(1)
			CheckingGameText.Text = " > Checking For Script.. 2/3"
			wait(1)
			CheckingGameText.Text = " > Checking For Script.. 3/3"
			wait(1)
			CheckingGameText.Text = " > Script Found"
			wait(1)
			DoneText.Visible = true
			wait(1)
			FatalityKeyLibrary:Destroy()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub/main/UILoadStrings.lua"))()
		else
			CheckingKeyText.Visible = true
			CheckingKeyText.Text = "> Checking Key.. 1/3"
			wait(1)
			CheckingKeyText.Text = "> Checking Key.. 2/3"
			wait(1)
			CheckingKeyText.Text = "> Checking Key.. 3/3"
			wait(1)
			CheckingKeyText.Text = "> Wrong Key"
			wait(1)
			CheckingKeyText.Visible = false
		end
	end)


PremiumKey.Name = "PremiumKey"
PremiumKey.Parent = Container
PremiumKey.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
PremiumKey.Position = UDim2.new(0.0376615115, 0, 0.847186625, 0)
PremiumKey.Size = UDim2.new(0, 127, 0, 30)
PremiumKey.Font = Enum.Font.SourceSans
PremiumKey.Text = "Premium Key"
PremiumKey.TextColor3 = Color3.fromRGB(255, 255, 255)
PremiumKey.TextSize = 14.000



PremiumKey.MouseButton1Click:Connect(
	function()
		for i,v in pairs(ID) do
			if game.Players.LocalPlayer.UserId == v  then
				CheckingKeyText.Visible = true
				CheckingKeyText.Text = "> Checking Access.. 1/3"
				wait(1)
				CheckingKeyText.Text = "> Checking Access.. 2/3"
				wait(1)
				CheckingKeyText.Text = "> Checking Access.. 3/3"
				wait(1)
				CheckingKeyText.Text = "> Access Granted"
				wait(1)
				CheckingGameText.Visible = true
				CheckingGameText.Text = " > Checking For Script.. 1/3"
				wait(1)
				CheckingGameText.Text = " > Checking For Script.. 2/3"
				wait(1)
				CheckingGameText.Text = " > Checking For Script.. 3/3"
				wait(1)
				CheckingGameText.Text = " > Script Found"
				DoneText.Visible = true
				wait(1)
				FatalityKeyLibrary:Destroy()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub/main/UILoadStrings.lua"))()
			end
		end
	end)


----------------------BLACKLIST  USER ID's--------------------------------

ConfirmButton.MouseButton1Click:Connect(
	function()
		if game.Players.LocalPlayer.UserId == 1890490167 then
			TextBox.Text = "You've Been Blacklisted"
		end
	end
)

-------------------Libraries Scripts----------------------------

local function Premium()
	for i,v in pairs(ID) do
		if game.Players.LocalPlayer.UserId == v  then
			Access.Text = "Access: Premium"
		end
	end
end

Premium()


local function TwoFourHourKeyTime() -- _24HTime.24HourKeyCode 

	wait()

	local mFloor = math.floor 
	local Next = next 
	local Tick = tick 
	local Wait = wait 
	local Stop = 0

	while true do Wait(1) 
		wait()
		local Time = 1714428060 - Tick() --Put Unix time here
		local Days = mFloor((Time / 60 / 60 / 24) % (365 + 0.2425)) 
		local Hours = mFloor((Time / 60 / 60) % 24) 
		local Minutes = mFloor((Time / 60) % 60) 
		local Seconds = mFloor(Time % 60) 

		if Stop == 0 then

			_24HTime.Text = Days.."D "..Hours.. "H "..Minutes.."M "..Seconds.."S "
		end

		if Days==0 and Hours==0 and Minutes==0 and Seconds==0 then
			Stop=1
			_24HTime.Text = "Key Will Be Change Soon" --What it will say when countdown completes
			_24HTime.TextSize = 20
		end
	end 
end
coroutine.wrap(TwoFourHourKeyTime)()




local function PlayerImageAndId() -- Container.PlayerImageScript 

	local Player = game. Players.LocalPlayer

	local UserId = Player.UserId

	local ThumType = Enum.ThumbnailType.AvatarBust
	local ThumSize = Enum.ThumbnailSize.Size420x420
	local Content = game.Players:GetUserThumbnailAsync(UserId, ThumType, ThumSize)


	Container.PlayerImage.Image = Content
	Container.PlayerName.Text = "Welcome To FATALITY "..Player.Name
	Container.PlayerID.Text = "ID: "..UserId
end
coroutine.wrap(PlayerImageAndId)()
