if game.PlaceId == 9522149469 then

    loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Strong%20Clickers!.Lua"))()




elseif game.PlaceId == 8750997647 then

loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Tapping%20Simulator%20X.lua"))()







elseif game.PlaceId == 6022309314 then

loadstring(game:HttpGet("https://raw.githubusercontent.com/WHYSTRIV3/DumbHub-LoadStrings/main/Madness%20Tapping.lua"))()


    




elseif game.PlaceId == 9150032572 then



    local library = loadstring(game:HttpGet("https://gitlab.com/Ner0ox/versus/-/raw/main/ui/UIV2.lua", true))()
    local ui = library:CreateWindow("Clicking Gods")
    
    local Main = ui:new("Main")
    local Egg = ui:new("Eggs")
    local Teleport = ui:new("Teleport")
    local Misc = ui:new("Misc")
    
    local VU = game:GetService("VirtualUser")
    local Player = game:GetService("Players").LocalPlayer
    local WS = game:GetService("Workspace")
    local RS = game:GetService("ReplicatedStorage")
    --Variables
    local selectedEgg;
    local SelectedTeleport;
    local selectedRebirth;
    local Codes = {"Release", "Alien", "500Likes", "3kLikes", "BeastPet349", "BeastPet491", "BeastPet550"}
    
    
    -- Anti Afk
    Player.Idled:Connect(function()
        VU:Button2Down(Vector2.new(0, 0), WS.CurrentCamera.CFrame)
        wait(1)
        VU:Button2Up(Vector2.new(0, 0), WS.CurrentCamera.CFrame)
    end)
    
    
    
    
    
    
    --functions
    
    function getRebirthButtons()
        local Rebirths = {}
    
        for _,v in pairs(Player.PlayerGui.Main.MainFrame.RebirthFrame.ScrollingFrame:GetChildren()) do
            if v:IsA("Frame") then 
                table.insert(Rebirths, v.Name)
            end
        end
        return Rebirths
    end
    
    
    function getEggs()
        local Eggs = {}
    
        for _,v in pairs(WS.Eggs:GetChildren()) do
            table.insert(Eggs, v.Name)
        end
        return Eggs
    end
    
    function getTeleport()
        local Teleport = {}
    
        for _,v in pairs(WS.Portal.Teleport:GetChildren()) do
                table.insert(Teleport, v.Name)    
        end
        return Teleport
    end
    
    
    --Main
    
    Main:CreateToggle("Auto Tap", true, function()
        WS.Events.AddClick:FireServer()
    end)
    
    Main:CreateDropdown("Select Rebirth",getRebirthButtons(), function(Rebirth)
        selectedRebirth = Rebirth
    end)
    
    Main:CreateToggle("Auto Rebirth", true, function()
        if selectedRebirth then
            player.PlayerGui.Main.MainFrame.Rebirths:FireServer(tonumber(selectedRebirth))
        end
    end)
    
    
    
    
    
    
    
    
    -- Teleport
    
    
    Teleport:CreateDropdown("Teleport", getTeleport(), function(Teleport)
        SelectedTeleport = Teleport;
        print(SelectedTeleport)
    end)
    
    Teleport:CreateButton("Teleport", function()
        if SelectedTeleport then
            local TeleportCFrame = WS.Portal.Teleport[SelectedTeleport].CFrame
            Player.Character.HumanoidRootPart.CFrame = TeleportCFrame
        end
    end)
    
    
    
    -- Eggs
    
    
    
    Egg:CreateDropdown("Select Egg",getEggs(), function(Eggs)
        selectedEgg = Eggs
    end)
    
    Egg:CreateToggle("Auto Egg", true, function()
        if selectedEgg then
            RS.RemoteEvents.EggOpened:InvokeServer(selectedEgg,'Single')
        end
    end)
    
    Egg:CreateToggle("Auto Triple Egg", true, function()
        if selectedEgg then
            RS.RemoteEvents.EggOpened:InvokeServer(selectedEgg,'Triple')
        end
    end)
    
    
    
    -- Misc
    
    
    Misc:CreateButton("Redeem Codes", function()
        for _,v in pairs(Codes) do
            RS.EnterCode:FireServer(v)
        end
    end)
    
    
    Misc:CreateButton("Show/Hide FPS Counter", function()
        game:GetService("CoreGui")["UI V2"].FPStext.Visible = not game:GetService("CoreGui")["UI V2"].FPStext.Visible
        Ticking = not Ticking
    end)
    
    
    Misc:CreateSlider("WalkSpeed", {min = 16, max = 200, default = 16}, function(state)
        Player.Character.Humanoid.WalkSpeed = state
    end)
    
    Misc:CreateButton("Copy Discord Invite", function()
        setclipboard("https://discord.gg/8zzP4fXNFz")
    end)
    
    local TeleportService = game:GetService("TeleportService")
    
    Misc:CreateButton("Uninject", function()
        game:GetService("CoreGui")["UI V2"]:Destroy()
    end)
    
    Misc:CreateButton("Uninject and Rejoin", function()
        game:GetService("CoreGui")["UI V2"]:Destroy()
        TeleportService:Teleport(game.PlaceId)
    end)



elseif game.PlaceId == 8884334497 then

    local library = loadstring(game:HttpGet("https://gitlab.com/Ner0ox/versus/-/raw/main/ui/UIV2.lua", true))()
    local ui = library:CreateWindow("Mining Clicker Simulator")
    
    local Main = ui:new("Main")
    local Egg = ui:new("Eggs")
    local Teleport = ui:new("Teleport")
    local Misc = ui:new("Misc")
    
    local VU = game:GetService("VirtualUser")
    local Player = game:GetService("Players").LocalPlayer
    local WS = game:GetService("Workspace")
    local RS = game:GetService("ReplicatedStorage")
    local T = WS.Terrain
    local LI = game:GetService("Lighting")
    local CodesTable = {"SPYDER21", "UPDATE21", "50MVISITS", "UPDATE20", "UPDATE19", "SPYDER18", "UPDATE18", "UPDATE17", "UPDATE16", "40mvisits", "UPDATE15", "UPDATE14", "UPDATE13", "30MVisits", "UPDATE8", "UPDATE6", "UPDATE5", "UPDATE4", "10KLikes", "20KLIKES", "1KLIKES", "RELEASE"}
    --Variables
    local SelectedTeleportBricks;
    local SelectedEggsTable;
    local Remotes = RS:FindFirstChild("Remotes")
    local RedeemCodeRemote = Remotes:FindFirstChild("RedeemCode")
    local Remotes = RS:FindFirstChild("Remotes")
    local ClickRemote = Remotes:FindFirstChild("Click")
    local RebirthRemote = Remotes:FindFirstChild("Rebirth")
    local RebirthTopText = Player.PlayerGui.rebirths.mainRebirthPanel123.rebirthFrame123.a1.progressBar.standard.nameOfItem;
    local RewardScrollingFrame = Player.PlayerGui.rewards.achievementsPanel.RebirthCounter.scrollingFrame;
    local BuyZoneRemote = Remotes:FindFirstChild("BuyZone")
    local BuyAllRemote = Remotes:FindFirstChild("BuyAll")
    local PickaxeScrollingFrame = Player.PlayerGui.upgrades.real.a1.a2.scrollingFrame;
    -- Anti Afk
    
    Player.Idled:Connect(function()
        VU:Button2Down(Vector2.new(0, 0), WS.CurrentCamera.CFrame)
        wait(1)
        VU:Button2Up(Vector2.new(0, 0), WS.CurrentCamera.CFrame)
    end)
    
    
    
    
    
    
    --functions
    function getTeleportBricks()
        local TeleportBricks = {}
    
        for _,v in pairs(WS.TeleportBricks:GetChildren()) do
                table.insert(TeleportBricks, v.Name)    
        end
        return TeleportBricks
    end
    
    function getEggsTable()
        local EggsTable = {}
    
        for _,v in pairs(RS.itemStorage:GetChildren()) do
            if v:IsA("Model") then
                table.insert(EggsTable, v.Name)
            end
        end
    
        return EggsTable
    end
    
    
    
    function getEggs()
        local Eggs = {}
    
        for _,v in pairs(WS.Eggs:GetChildren()) do
            table.insert(Eggs, v.Name)
        end
        return Eggs
    end
    
    
    
    function getPickaxes()
        local PickaxeTable = {};
        for _,v in pairs(PickaxeScrollingFrame:GetChildren()) do
            if v:IsA("Frame") and v.Name ~= "newZone" and v.Visible == true then
                table.insert(PickaxeTable, v.Name);
            end;
        end;
        return PickaxeTable;
    end;
    
    
    
    --Main
    Main:CreateLabel("Auto Farm")
    
    
    Main:CreateToggle("Auto Click", true, function()
        ClickRemote:InvokeServer()
    end)
    
    
    
    Main:CreateToggle("Auto Rebirth", true, function()   
        if RebirthTopText.Text == "100%" then
            RebirthRemote:FireServer()
        end
    end)
    
    Main:CreateToggle("Auto Buy Pickaxe", true, function()
         BuyAllRemote:InvokeServer((getPickaxes()))
    end)
    
    
    
    
    
    
    Main:CreateToggle("Auto Rewards", true, function()
        for _,v in pairs(RewardScrollingFrame:GetChildren()) do
            if v:IsA("Frame") then
                if v.standard.buyAll.amtOfCurrency.Text == "CLAIM" then
                    Remotes.claimAchievment:FireServer(v.Name)
                end
            end
        end
    end)
    
    Main:CreateToggle("Auto Unlock Next Zone", true, function()
        pcall(function()
            BuyZoneRemote:FireServer(tostring(tonumber(Player:GetAttribute("currentZone")) + 1));
        end);
    end)
    
    
    -- Teleport
    
    Teleport:CreateDropdown("Zones", getTeleportBricks(), function(TeleportBricks)
        SelectedTeleportBricks = TeleportBricks;
        print(SelectedTeleportBricks)
    end)
    
    Teleport:CreateButton("Teleport", function()
        if SelectedTeleportBricks then
            local TeleportCFrame = WS.TeleportBricks[SelectedTeleportBricks].CFrame
            Player.Character.HumanoidRootPart.CFrame = TeleportCFrame
        end
    end)
    
    
    
    -- Eggs
    
    Egg:CreateDropdown("Select Egg",getEggsTable(), function(EggsTable)
        SelectedEggsTable = EggsTable
    end)
    
    Egg:CreateToggle("Auto Egg", true, function()
        if SelectedEggsTable then
            RS.Remotes.buyEgg:InvokeServer(SelectedEggsTable,1)
        end
    end)
    
    -- Misc
    
    
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
    
    TextLabel.Parent = game:GetService("CoreGui")["UI V2"]
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
            game:GetService("CoreGui")["UI V2"].FPStext.Text = "FPS: " .. tostring(fps) .. " Average: " .. string.format("%.0f", (sum / #FPSAverage))
            if (tick() - LastTick) >= 15 then
                FPSAverage = { }
                LastTick = tick()
            end
            LastTick = tick()
        end
    end)
    
    
    Main:CreateButton("Redeem Codes", function()
        for _,v in pairs(CodesTable) do
            RedeemCodeRemote:InvokeServer(string.lower(v))
        end
    end)
    
    Misc:CreateButton("Show/Hide FPS Counter", function()
        game:GetService("CoreGui")["UI V2"].FPStext.Visible = not game:GetService("CoreGui")["UI V2"].FPStext.Visible
        Ticking = not Ticking
    end)
    
    
    Misc:CreateSlider("WalkSpeed", {min = 16, max = 200, default = 16}, function(state)
        Player.Character.Humanoid.WalkSpeed = state
    end)
    
    Misc:CreateButton("Copy Discord Invite", function()
        setclipboard("https://discord.gg/8zzP4fXNFz")
    end)
    
    local TeleportService = game:GetService("TeleportService")
    
    Misc:CreateButton("Uninject", function()
        game:GetService("CoreGui")["UI V2"]:Destroy()
    end)
    
    Misc:CreateButton("Uninject and Rejoin", function()
        game:GetService("CoreGui")["UI V2"]:Destroy()
        TeleportService:Teleport(game.PlaceId)
    end)
	
	
elseif game.PlaceId == 9283132959 then

	
	

local library = loadstring(game:HttpGet("https://gitlab.com/Ner0ox/versus/-/raw/main/ui/UIV2.lua", true))()
local ui = library:CreateWindow("Block Breaker Simulator")

local Main = ui:new("Main")
local Egg = ui:new("Eggs")
local Misc = ui:new("Misc")

local VU = game:GetService("VirtualUser")
local Player = game:GetService("Players").LocalPlayer
local WS = game:GetService("Workspace")
local RS = game:GetService("ReplicatedStorage")
local T = WS.Terrain
local LI = game:GetService("Lighting")
local Codes = {"Release", "Alien", "500Likes", "3kLikes", "BeastPet349", "BeastPet491", "BeastPet550"}
--Variables
local selectedEggVendors;


-- Anti Afk

Player.Idled:Connect(function()
    VU:Button2Down(Vector2.new(0, 0), WS.CurrentCamera.CFrame)
    wait(1)
    VU:Button2Up(Vector2.new(0, 0), WS.CurrentCamera.CFrame)
end)






--functions

function getEggVendors()
    local EggVendors = {}

    for _,v in pairs(WS.EggVendors:GetChildren()) do
        table.insert(EggVendors, v.Name)
    end
    return EggVendors
end

--Main

Main:CreateToggle("Auto Throw Pickaxe", true, function()
    RS.Events.ThrowPickaxe:FireServer()
end)


Main:CreateToggle("Auto Sell", true, function()
    RS.Events.SellBlocks:FireServer()
end)

Main:CreateToggle("Auto Rebirth", true, function()
    RS.Events.PlayerRebirth:FireServer()
end)

Main:CreateToggle("Auto Upgrade", true, function()
    RS.Events.PlayerUpgradeAxe:FireServer("NumberOfAxes")    
    RS.Events.PlayerUpgradeAxe:FireServer("BackpackSize")  
    RS.Events.PlayerUpgradeAxe:FireServer("AxeDamage")   
    RS.Events.PlayerUpgradeAxe:FireServer("AxeRange")
    RS.Events.PlayerUpgradeAxe:FireServer("ThrowCooldown")
    RS.Events.PlayerUpgradeAxe:FireServer("AxeEvolution")
end)

Main:CreateToggle("Inf Money", true, function()
    game:GetService("ReplicatedStorage").Events.ClientBrokeBlocks:FireServer(math.huge)
    game:GetService("ReplicatedStorage").Events.SellBlocks:FireServer()
end)












-- Teleport











-- Eggs

Egg:CreateDropdown("Select Egg",getEggVendors(), function(EggVendors)
    selectedEggVendors = EggVendors
end)

Egg:CreateToggle("Auto Egg", true, function()
    if selectedEggVendors then
        RS.Events.PlayerPressedKeyOnEgg:FireServer(selectedEggVendors,'1')
    end
end)





-- Misc


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

TextLabel.Parent = game:GetService("CoreGui")["UI V2"]
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
		game:GetService("CoreGui")["UI V2"].FPStext.Text = "FPS: " .. tostring(fps) .. " Average: " .. string.format("%.0f", (sum / #FPSAverage))
		if (tick() - LastTick) >= 15 then
			FPSAverage = { }
			LastTick = tick()
		end
		LastTick = tick()
	end
end)


Misc:CreateButton("Redeem Codes", function()
    for _,v in pairs(Codes) do
        RS.EnterCode:FireServer(v)
    end
end)

Misc:CreateButton("Show/Hide FPS Counter", function()
	game:GetService("CoreGui")["UI V2"].FPStext.Visible = not game:GetService("CoreGui")["UI V2"].FPStext.Visible
	Ticking = not Ticking
end)


Misc:CreateSlider("WalkSpeed", {min = 16, max = 200, default = 16}, function(state)
    Player.Character.Humanoid.WalkSpeed = state
end)

Misc:CreateButton("Copy Discord Invite", function()
    setclipboard("https://discord.gg/8zzP4fXNFz")
end)

local TeleportService = game:GetService("TeleportService")

Misc:CreateButton("Uninject", function()
    game:GetService("CoreGui")["UI V2"]:Destroy()
end)

Misc:CreateButton("Uninject and Rejoin", function()
    game:GetService("CoreGui")["UI V2"]:Destroy()
    TeleportService:Teleport(game.PlaceId)
	end)
end
