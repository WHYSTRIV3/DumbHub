if game.PlaceId == 9522149469 then

    local library = loadstring(game:HttpGet("https://gitlab.com/Ner0ox/versus/-/raw/main/ui/UIV2.lua", true))()
    local ui = library:CreateWindow("Strong Clickers!")
    
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
    local Codes = {"Release", "Alien", "500Likes", "3kLikes", "BeastPet349", "BeastPet491", "BeastPet550"}
    --Variables
    local selectedRebirth;
    local selectedEgg;
    local SelectedWorlds;
    local SelectedSellPads;
    
    -- Anti Afk
    
    Player.Idled:Connect(function()
        VU:Button2Down(Vector2.new(0, 0), WS.CurrentCamera.CFrame)
        wait(1)
        VU:Button2Up(Vector2.new(0, 0), WS.CurrentCamera.CFrame)
    end)
    
    
    
    
    
    
    --functions
    
    function getSellPads()
        local SellPads = {}
    
        for _,v in pairs(WS.TriggerAreas.SellPads:GetChildren()) do
                table.insert(SellPads, v.Name)    
        end
        return SellPads
    end
    
    
    
    
    function getWorlds()
        local Worlds = {}
    
        for _,v in pairs(WS.Portals.Locations:GetChildren()) do
                table.insert(Worlds, v.Name)    
        end
        return Worlds
    end
    
    function getEggs()
        local Eggs = {}
    
        for _,v in pairs(WS.Eggs:GetChildren()) do
            table.insert(Eggs, v.Name)
        end
        return Eggs
    end
    
    spawn(function()
        while wait() do
            if Sell == true then
                for i,v in pairs(game:GetService("Workspace").TriggerAreas:GetDescendants()) do
                    if v:IsA"TouchTransmitter" and v.Parent.Name == "Trigger" then
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
                    end
                end
            end
        end
    end)
    
    
    
    
    
    --Main
    Main:CreateLabel("Auto Farm")
    
    Main:CreateToggle("Auto Tap", true, function()
        RS.Remotes.TrainStrength:FireServer()
    end)
    
    Main:CreateDropdown("SellPads", getSellPads(), function(SellPads)
        SelectedSellPads = SellPads;
        print(SelectedSellPads)
    end)
    
      
    Main:CreateButton("Sell", function()
            if SelectedSellPads then
                local TeleportCFrame = WS.TriggerAreas.SellPads[SelectedSellPads].Platform.CFrame
                Player.Character.HumanoidRootPart.CFrame = TeleportCFrame
        end
    end)
    
    
    Main:CreateToggle("Auto Rebirth", true, function()
        RS.Remotes.Rebirth:FireServer()
    end)
    
    Main:CreateToggle("Auto Buff Strength", true, function()
        RS.Remotes.BuffStrength:FireServer()
    end)
    
    
    -- Teleport
    
    Teleport:CreateDropdown("Worlds", getWorlds(), function(Worlds)
        SelectedWorlds = Worlds;
        print(SelectedWorlds)
    end)
    
    Teleport:CreateButton("Teleport", function()
        if SelectedWorlds then
            local TeleportCFrame = WS.Portals.Locations[SelectedWorlds].CFrame
            Player.Character.HumanoidRootPart.CFrame = TeleportCFrame
        end
    end)
    
    Teleport:CreateButton("Tp Spawn",function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Portals.ReturnSpawn.CFrame
    end)
    
    Teleport:CreateButton("Upgrades Shop",function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").TriggerAreas.Upgrades.Platform.CFrame
    end)
    
    
    -- Eggs
    
    Egg:CreateDropdown("Select Egg",getEggs(), function(Eggs)
        selectedEgg = Eggs
    end)
    
    Egg:CreateToggle("Auto Egg", true, function()
        if selectedEgg then
            RS.Remotes.HatchEgg:FireServer(selectedEgg)
        end
    end)
    
    Egg:CreateToggle("Auto Egg", true, function()
        if selectedEgg then
            RS.Remotes.HatchEgg:FireServer(selectedEgg)
        end
    end)
    
    
    Egg:CreateButton("EquipBest",function()
        RS.Remotes.Pets.EquipBest:FireServer()
    end)
    
    
    Egg:CreateButton("CombineAll",function()
        RS.Remotes.Pets.CombineAll:FireServer()
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




elseif game.PlaceId == 8750997647 then






local library = loadstring(game:HttpGet("https://gitlab.com/Ner0ox/versus/-/raw/main/ui/UIV2.lua", true))()
local ui = library:CreateWindow("Tapping Simulator X")

local Main = ui:new("Main")
local Egg = ui:new("Eggs")
local Teleport = ui:new("Teleport")
local Misc = ui:new("Misc")

local VU = game:GetService("VirtualUser")
local Player = game:GetService("Players").LocalPlayer
local WS = game:GetService("Workspace")
local RS = game:GetService("ReplicatedStorage")
--Variables
local selectedRebirth;
local selectedEgg;
local SelectedTeleporters;
local EquipBestWait = 15;
local EquipBest = false;
-- Anti Afk
Player.Idled:Connect(function()
    VU:Button2Down(Vector2.new(0, 0), WS.CurrentCamera.CFrame)
    wait(1)
    VU:Button2Up(Vector2.new(0, 0), WS.CurrentCamera.CFrame)
end)

-- Functions


function getTeleporters()
    local Teleporters = {}

    for _,v in pairs(WS.Teleporters:GetChildren()) do
            table.insert(Teleporters, v.Name)    
    end
    return Teleporters
end

function getEggs()
    local Eggs = {}

    for _,v in pairs(WS.Eggs:GetChildren()) do
        table.insert(Eggs, v.Name)
    end
    return Eggs
end


function getRebirthButtons()
    local Rebirths = {}

    for _,v in pairs(Player.PlayerGui.Menus.Rebirth.Frame.List:GetChildren()) do
        if v:IsA("Frame") then 
            table.insert(Rebirths, v.Name)
        end
    end
    return Rebirths
end

function getClosestChest()
	local closest = math.huge
	local choice
	for _,v in pairs(WS.Chest:GetDescendants()) do
        if v:IsA("Model") then
            if v:FindFirstChild("PrimaryPart") then

                local dist = (Player.Character.HumanoidRootPart.Position - v.PrimaryPart.Position).Magnitude
                if dist <= closest then
                    closest = dist
                    choice = v
                end
                Player.Character.HumanoidRootPart.CFrame = choice.Position

            end
        end
	end
end












--Main

--local l__Modules__6 = game:GetService("ReplicatedStorage"):WaitForChild("Modules");
--local u4 = require(l__Modules__6:WaitForChild("Events"));

--Main:CreateToggle("Auto Tap", true, function()
   -- u4.ClientCall("ClickEvent");
--end)

Main:CreateToggle("Auto Tap", true, function()
    RS.Remotes.Tap:FireServer()
end)


Main:CreateDropdown("Select Rebirth",getRebirthButtons(), function(rebirth)
    selectedRebirth = rebirth
end)



Main:CreateToggle("Auto Rebirth", true, function()
    if selectedRebirth then
		RS.Remotes.Rebirth:FireServer(tonumber(selectedRebirth))
    end
end)


-- Teleport

Teleport:CreateDropdown("Teleporters", getTeleporters(), function(Teleporters)
    SelectedTeleporters = Teleporters;
    print(SelectedTeleporters)
end)




Teleport:CreateButton("Teleport", function()
    if SelectedTeleporters then
        local TeleportCFrame = WS.Teleporters[SelectedTeleporters].CFrame
        Player.Character.HumanoidRootPart.CFrame = TeleportCFrame
    end
end)

Teleport:CreateButton('Auto Collect Chest', function()
    getClosestChest()

    
end)


-- Eggs

Egg:CreateDropdown("Select Egg",getEggs(), function(Eggs)
    selectedEgg = Eggs
end)

Egg:CreateToggle("Auto Egg", true, function()
    if selectedEgg then
        RS.Remotes.BuyEgg:InvokeServer(selectedEgg,1)
    end
end)


Egg:CreateToggle("Auto Equip Best", true, function()
    if EquipBest == false then
        EquipBest = true
        RS.Remotes.UnequipAll:InvokeServer()
        RS.Remotes.EquipBest:InvokeServer("UIStrokeFixer")
        task.wait(EquipBestWait)
        EquipBest = false
    end
end)



-- Misc



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


elseif game.PlaceId == 6022309314 then




    local library = loadstring(game:HttpGet("https://gitlab.com/Ner0ox/versus/-/raw/main/ui/UIV2.lua", true))()
    local ui = library:CreateWindow("Madness Tapping")
    
    local Main = ui:new("Main")
    local Egg = ui:new("Eggs")
    local Teleport = ui:new("Teleport")
    local Misc = ui:new("Misc")
    
    local VU = game:GetService("VirtualUser")
    local Player = game:GetService("Players").LocalPlayer
    local WS = game:GetService("Workspace")
    local RS = game:GetService("ReplicatedStorage")
    
    local selectedRebirth;
    local selectedEgg;
    local SelectedIslands;
    -- Anti Afk
    Player.Idled:Connect(function()
        VU:Button2Down(Vector2.new(0, 0), WS.CurrentCamera.CFrame)
        wait(1)
        VU:Button2Up(Vector2.new(0, 0), WS.CurrentCamera.CFrame)
    end)
    
    -- Functions
    
    
    function getIslands()
        local islands = {}
    
        for _,v in pairs(game:GetService("Workspace").Portals.Portals:GetChildren()) do
            if v.Name ~= "Main" then
                table.insert(islands, v.Name)
            end
        end
        return islands
    end
    
    function getEggs()
        local Eggs = {}
    
        for _,v in pairs(WS.Eggs:GetChildren()) do
            table.insert(Eggs, v.Name)
        end
        return Eggs
    end
    
    
    function getRebirthButtons()
        local Rebirths = {}
    
        for _,v in pairs(Player.PlayerGui.MainGUI.SidebarFrames.Rebirth.Frame.Rebirth.List:GetChildren()) do
            if v:IsA("Frame") then 
                table.insert(Rebirths, v.Name)
            end
        end
        return Rebirths
    end
    
    
    --Main
    
    --local l__Modules__6 = game:GetService("ReplicatedStorage"):WaitForChild("Modules");
    --local u4 = require(l__Modules__6:WaitForChild("Events"));
    
    --Main:CreateToggle("Auto Tap", true, function()
       -- u4.ClientCall("ClickEvent");
    --end)
    
    Main:CreateToggle("Auto Tap", true, function()
        RS.Events.ClickEvent:FireServer()
    end)
    
    
    Main:CreateDropdown("Select Rebirth",getRebirthButtons(), function(rebirth)
        selectedRebirth = rebirth
    end)
    
    
    
    Main:CreateToggle("Auto Rebirth", true, function()
        if selectedRebirth then
            RS.Events.Rebirth:InvokeServer(tonumber(selectedRebirth))
        end
    end)
    
    
    
    -- Teleport
    
    Teleport:CreateDropdown("Islands", getIslands(), function(Islands)
        SelectedIslands = Islands;
        print(SelectedIslands)
    end)
    
    Teleport:CreateButton("Teleport", function()
        if SelectedIslands then
            local TeleportCFrame = WS.Portals.Portals[SelectedIslands].Touch.CFrame
            Player.Character.HumanoidRootPart.CFrame = TeleportCFrame
        end
    end)
    
    
    
    
    
    -- Eggs
    
    Egg:CreateDropdown("Select Egg",getEggs(), function(Eggs)
        selectedEgg = Eggs
    end)
    
    Egg:CreateToggle("Auto Egg", true, function()
        if selectedEgg then
            RS.Events.BuyEgg:InvokeServer(selectedEgg, "Buy1")
        end
    end)
    
    
    
    
    
    
    
    
    
    -- Misc
    
    
    local T = WS.Terrain
    local LI = game:GetService("Lighting")
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
end
