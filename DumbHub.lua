Key = "TacoLover"



-- Instances:

local UIV1KEY = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local AcceptKey = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Cancel = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local KeyLink = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local TopBar = Instance.new("Frame")
local TopBarUICorner = Instance.new("UICorner")
local TopBarExtension = Instance.new("Frame")
local TopBarTitle = Instance.new("TextLabel")
local TopBarTitleUIPadding = Instance.new("UIPadding")
local Enter = Instance.new("TextBox")

--Properties:

UIV1KEY.Name = "UIV1 KEY"
UIV1KEY.Parent = game.CoreGui
UIV1KEY.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = UIV1KEY
Main.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
Main.Position = UDim2.new(0.388161987, 0, 0.31300813, 0)
Main.Size = UDim2.new(0, 439, 0, 314)

UICorner.Parent = Main

AcceptKey.Name = "AcceptKey"
AcceptKey.Parent = Main
AcceptKey.BackgroundColor3 = Color3.fromRGB(164, 0, 0)
AcceptKey.Position = UDim2.new(0.134396359, 0, 0.662420392, 0)
AcceptKey.Size = UDim2.new(0, 144, 0, 41)
AcceptKey.Font = Enum.Font.SourceSans
AcceptKey.Text = "Accept"
AcceptKey.TextColor3 = Color3.fromRGB(255, 255, 255)
AcceptKey.TextSize = 14.000

UICorner_2.Parent = AcceptKey

Cancel.Name = "Cancel"
Cancel.Parent = Main
Cancel.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
Cancel.Position = UDim2.new(0.548974931, 0, 0.662420392, 0)
Cancel.Size = UDim2.new(0, 144, 0, 41)
Cancel.Font = Enum.Font.SourceSans
Cancel.Text = "Cancel"
Cancel.TextColor3 = Color3.fromRGB(255, 255, 255)
Cancel.TextSize = 16.000

UICorner_3.Parent = Cancel

KeyLink.Name = "KeyLink"
KeyLink.Parent = Main
KeyLink.BackgroundColor3 = Color3.fromRGB(167, 0, 0)
KeyLink.Position = UDim2.new(0.337129802, 0, 0.831210136, 0)
KeyLink.Size = UDim2.new(0, 144, 0, 41)
KeyLink.Font = Enum.Font.SourceSans
KeyLink.Text = "Key Link"
KeyLink.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyLink.TextSize = 16.000

UICorner_4.Parent = KeyLink

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
local Key = "ReadyForChristmas"
TopBarTitle.Name = "TopBarTitle"
TopBarTitle.Parent = TopBar
TopBarTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TopBarTitle.BackgroundTransparency = 1.000
TopBarTitle.Size = UDim2.new(0.5, 0, 1, 0)
TopBarTitle.Font = Enum.Font.Gotham
TopBarTitle.Text = "DUMBHUB Key"
TopBarTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
TopBarTitle.TextSize = 14.000
TopBarTitle.TextXAlignment = Enum.TextXAlignment.Left

TopBarTitleUIPadding.Name = "TopBarTitleUIPadding"
TopBarTitleUIPadding.Parent = TopBarTitle
TopBarTitleUIPadding.PaddingLeft = UDim.new(0, 10)
TopBarTitleUIPadding.PaddingTop = UDim.new(0, 1)

Enter.Name = "Enter"
Enter.Parent = Main
Enter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Enter.Position = UDim2.new(0.173120737, 0, 0.277070075, 0)
Enter.Size = UDim2.new(0, 287, 0, 52)
Enter.Font = Enum.Font.SourceSans
Enter.Text = ""
Enter.TextColor3 = Color3.fromRGB(0, 0, 0)
Enter.TextSize = 14.000

AcceptKey.MouseButton1Click:Connect(function()
	if Enter.Text == Key then
		UIV1KEY:Destroy()

		if game.PlaceId == 9522149469 then

			--Strong Clicker

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Strong%20Clickers!.Lua"))()

		elseif game.PlaceId == 8750997647 then

			--Tapping Simulator x

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Tapping%20Simulator%20X.lua"))()

		elseif game.PlaceId == 6022309314 then

			--Madness Tapping

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Madness%20Tapping.lua"))()

		elseif game.PlaceId == 9150032572 then

			--Clicking Gods

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Clicking%20Gods.lua"))()

		elseif game.PlaceId == 8884334497 then

			--Mining Clicker Simulator

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Mining%20Clicker%20Simulator.lua"))()

		elseif game.PlaceId == 9283132959 then

			--Block Breaker Simulator

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Block%20Breaker%20Simulator.lua"))()

		elseif game.PlaceId == 8540346411 then

			--Rebirth Champions	

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Rebirth%20Champions.lua"))()

		elseif game.PlaceId == 6284583030 then

			--Pet Simulator X Not Finished

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Pet%20Simulator%20X.lua"))()

		elseif game.PlaceId == 9498006165 then

			--Tapping Simulator! Not Finished

			loadstring(game:HttpGet"https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Tapping%20Simulator!.lua")()

		elseif game.PlaceId == 8585657145 then

			--Anime Heros Simulator	

			loadstring(game:HttpGet"https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Anime%20Hero%20Simulator.lua")()

		elseif game.PlaceId == 10198661638 then

			--Farming Tycoon

			loadstring(game:HttpGet"https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Farming%20Tycoon.lua")()	

		elseif game.PlaceId == 8998370421 then

			--Anime Tap Simulator Not Finished 

			loadstring(game:HttpGet"https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Anime%20Tap%20Simulator.lua")()

		elseif game.PlaceId == 2512643572 then

			--Bubble Gum Simulator

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Bubble%20Gum%20Simulator.lua", true))()

		elseif game.PlaceId == 9170761016 then

			--Magic Clicker

			loadstring(game:HttpGet('https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Magic%20Clicker.lua'))()

		elseif game.PlaceId == 10594623896 then

			-- Master Punching Simulator

			loadstring(game:HttpGet('https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Punching%20Simulator.lua'))()

		elseif game.PlaceId == 9157400082 then

			--Anime Power Tycoon	

			loadstring(game:HttpGet('https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Anime%20Power%20Tycoon.lua'))()

		elseif game.PlaceId == 10069260094 then

			--Licking Legends

			loadstring(game:HttpGet('https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Licking%20Legends.lua'))()

		elseif game.PlaceId == 3101667897 then

			--Legends Of Speed	

			loadstring(game:HttpGet('https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Legends%20Of%20Speed.lua'))()

		elseif game.PlaceId == 9941633436 then

			--Rank Simulator

			loadstring(game:HttpGet('https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Rank%20Simulator.lua'))()	

		elseif game.PlaceId == 7562033213 then

			--Clicker Party Simulator!

			loadstring(game:HttpGet('https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Clicker%20Party%20Simulator!.lua'))()

		elseif game.PlaceId == 7971857341 then

			--Youtuber Tycoon!

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Youtuber%20Tycoon!.lua"))()

		elseif game.PlaceId == 6679968919 then

			--Fly Race

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Fly%20Race.lua"))()

		elseif game.PlaceId == 10598587051 then

			--Anime Clicker Fight

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Anime%20Clicker%20Fight.lua"))()

		elseif game.PlaceId == 10723695195 then

			--Anime Evolution Simulator

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Anime%20Evolution%20Simulator.lua"))()

		elseif game.PlaceId == 9834528893 then

			--+1 Jump Every Second

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/%2B1%20Jump%20Every%20Second.lua"))()

		elseif game.PlaceId == 9285238704 then

			-- Race Clicker

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Race%20Clicker.lua"))()

		elseif game.PlaceId == 10914683361 then

			-- Busy Business!

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Busy%20Business!.lua"))()

		elseif game.PlaceId == 11563572312 then

			-- Ultimate Magnet Simulator

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Ultimate%20Magnet%20Simulator.lua"))()

		elseif game.PlaceId == 7183242684 then

			-- Strength Training Simulator!

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Strength%20Training%20Simulator!.lua"))()	

		elseif game.PlaceId == 3102144307 then

			-- Anime Clicker Simulator

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Anime%20Clicker%20Simulator.lua"))()

		elseif game.PlaceId == 10758955211 then

			-- Skydive Race Clicker	

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Skydive%20Race%20Clicker.lua"))()

		elseif game.PlaceId == 8579989858 then

			-- Super Clicker Simulator

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Super%20Clicker%20Simulator.lua"))()

		elseif game.PlaceId == 11162791099 then

			-- Sandbox Hatchers X

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Sandbox%20Hatchers%20X.lua"))()

		elseif game.PlaceId == 11040063484 then

			-- Sword Fighters Simulator!

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Sword%20Fighters%20Simulator!.lua"))()

		elseif game.PlaceId == 11150416759 then

			-- Pet Race Clicker!

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Pet%20Race%20Clicker!.lua"))()

		elseif game.PlaceId == 6875469709 then

			-- STRONGEST PUNCH SIMULATOR

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/STRONGEST%20PUNCH%20SIMULATOR.lua"))()

		elseif game.PlaceId == 10714365287 then

			-- Anime Racing Clicker

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Anime%20Racing%20Clicker.lua"))()

		elseif game.PlaceId == 11298615665 then

			-- +1 Speed Every Second

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/%2B1%20Speed%20Every%20Second.lua"))()

		elseif game.PlaceId == 9336544530 then

			-- Dice Simulator

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Dice%20Simulator.lua"))()

		elseif game.PlaceId == 10898965735 then

			-- Mine Racer

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Mine%20Racer.lua"))()

		elseif game.PlaceId == 3652625463 then

			-- Lifting Simulaotr

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Lifting%20Simulator.lua"))()

		elseif game.PlaceId == 11381074034 then

			-- Flying Race Clicker

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Flying%20Race%20Clicker.lua"))()

		elseif game.PlaceId == 3823781113 then

			-- Saber Simulator

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Saber%20Simulator.lua"))()

		elseif game.PlaceId == 8507479511 then

			--  Higher Jump Every Second

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Higher%20Jump%20Every%20Second.lua"))()

		elseif game.PlaceId == 11445923563 then

			--  One Fruit Simulator

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/One%20Fruit%20Simulator.lua"))()

		elseif game.PlaceId == 10070062081 then

			--  Minion Simulator

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Minion%20Simulator.lua"))()

		elseif game.PlaceId == 10033487652 then

			--  Clicker League!

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Clicker%20League!.lua"))()

		elseif game.PlaceId == 11063612131 then

			--  Every Second You Get +1 Jump Power

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Every%20Second%20You%20Get%20%2B1%20Jump%20Power.lua"))()

		elseif game.PlaceId == 8328351891 then

			--  Mega Mansion Tycoon

			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/V1%20Mega%20Mansion%20Tycoon.lua"))()

		elseif game.PlaceId == 3956818381 then

			--  Ninja Legends
			
			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Ninja%20Legends.lua"))()
				
		elseif game.PlaceId == 4058282580 then
				
			--  Boxing Simualtor
				
			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Boxing%20Simulator.lua"))()
				
		elseif game.PlaceId == 11302865934 then
				
			--  Every Second You Get +1 Health
				
			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Every%20Second%20You%20Get%20%2B1%20Health.lua"))()

		elseif game.PlaceId == 5712833750 then
				
			--  Animal Simulator
				
			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Animal%20Simulator.lua"))()
				
		elseif game.PlaceId == 9492364312 then
				
			--  +1 Jump Race
				
			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/%2B1JumpRace.lua"))()
				
		elseif game.PlaceId == 10476933477 then
				
			--  Strong Ninja Simulator
				
			loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Strong%20Ninja%20Simulator.lua"))()
				
				
				
		end
	else
		Enter.Text = "Wrong Key DumbAss"
	end

end)

Cancel.MouseButton1Click:Connect(function()
	UIV1KEY:Destroy()
end)

KeyLink.MouseButton1Click:Connect(function()
	local HttpService = game:GetService("HttpService")
	local http_req = (syn and syn.request) or (http and http.request) or http_request
	if http_req then
		http_req({
			Url = 'http://127.0.0.1:6463/rpc?v=1',
			Method = 'POST',
			Headers = {
				['Content-Type'] = 'application/json',
				Origin = 'https://discord.com'
			},
			Body = HttpService:JSONEncode({
				cmd = 'INVITE_BROWSER',
				nonce = HttpService:GenerateGUID(false),
				args = {code = 'ups8GeuYAD'}
			})
		})
		elseif setclipboard then
			setclipboard("https://discord.gg/ups8GeuYAD")
			game:GetService("StarterGui"):SetCore("SendNotification",{
				Title = "DumbHub", -- Required
				Text = "Link Copied To Clipboard", -- Required
				Icon = "rbxassetid://9327507243" -- Optional
			})
		else
			print("DumbHub Discord: https://discord.gg/ups8GeuYAD")
			game:GetService("StarterGui"):SetCore("SendNotification",{
				Title = "DumbHub", -- Required
				Text = "Press F9 or type /console to see the invite link", -- Required
				Icon = "rbxassetid://9327507243" -- Optional
			})
		end

end)
