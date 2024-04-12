if game.PlaceId == 2753915549 then
    Sea1 = true
elseif game.PlaceId == 4442272183 then
    Sea2 = true
elseif game.PlaceId == 7449423635 then
    Sea3 = true
else
    game:GetService("Players").LocalPlayer:Kick("Support Only Blox Fruits")
end

if Sea1 then
    MobList = {"Bandit","Monkey","Gorilla","Pirate","Brute","Desert Bandit","Desert Officer","Snow Bandit","Snowman","Chief Petty Officer","Sky Bandit","Dark Master","Prisoner", "Dangerous Prisoner","Toga Warrior","Gladiator","Military Soldier","Military Spy","Fishman Warrior","Fishman Commando","God's Guard","Shanda","Royal Squad","Royal Soldier","Galley Pirate","Galley Captain"} 
elseif Sea2 then
    MobList = {"Raider","Mercenary","Swan Pirate","Factory Staff","Marine Lieutenant","Marine Captain","Zombie","Vampire","Snow Trooper","Winter Warrior","Lab Subordinate","Horned Warrior","Magma Ninja","Lava Pirate","Ship Deckhand","Ship Engineer","Ship Steward","Ship Officer","Arctic Warrior","Snow Lurker","Sea Soldier","Water Fighter"} 
elseif Sea3 then
    MobList = {"Pirate Millionaire","Dragon Crew Warrior","Dragon Crew Archer","Female Islander","Giant Islander","Marine Commodore","Marine Rear Admiral","Fishman Raider","Fishman Captain","Forest Pirate","Mythological Pirate","Jungle Pirate","Musketeer Pirate","Reborn Skeleton","Living Zombie","Demonic Soul","Posessed Mummy", "Peanut Scout", "Peanut President", "Ice Cream Chef", "Ice Cream Commander", "Cookie Crafter", "Cake Guard", "Baking Staff", "Head Baker", "Cocoa Warrior", "Chocolate Bar Battler", "Sweet Thief", "Candy Rebel", "Candy Pirate", "Snow Demon","Isle Outlaw","Island Boy","Isle Champion"}
end
if Sea1 then
    Boss = {"The Gorilla King","Bobby","Yeti","Mob Leader","Vice Admiral","Warden","Chief Warden","Swan","Magma Admiral","Fishman Lord","Wysper","Thunder God","Cyborg","Saber Expert"}
elseif Sea2 then
    Boss = {"Diamond","Jeremy","Fajita","Don Swan","Smoke Admiral","Cursed Captain","Darkbeard","Order","Awakened Ice Admiral","Tide Keeper"}
elseif Sea3 then
    Boss = {"Stone","Island Empress","Kilo Admiral","Captain Elephant","Beautiful Pirate","rip_indra True Form","Longma","Soul Reaper","Cake Queen"}
end
local PosTemplete = CFrame.new(28282.5703125, 14896.8505859375, 105.1042709350586)
local Players = game:GetService("Players")
local playerCount = #game:GetService("Players"):GetPlayers()
local ChoMuaThuyen = CFrame.new(-16921.853515625, 9.0863618850708, 433.9601135253906)
local ConNPCTemplete = CFrame.new(28612.7148, 14896.4893, 103.860237)
local AdminPos = CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781)
local Memaybeo = CFrame.new(-731.2034301757812, 381.5658874511719, -11198.4951171875)
local Anhjack5cu = CFrame.new(-13348.0654296875, 405.8904113769531, -8570.62890625)
local CavandisPos = CFrame.new(5314.58203, 22.8796749, -125.942276)
local PolePos = CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625)
local PosRaidCastle = CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125)
local PosBone = CFrame.new(-9515.75, 174.8521728515625, 6079.40625)
local PosCake = CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375)
local plr = game.Players.LocalPlayer
local CbFw = getupvalues(require(plr.PlayerScripts.CombatFramework))
local CbFw2 = CbFw[2]
local CamShake = require(game.ReplicatedStorage.Util.CameraShaker)
CamShake:Stop()

function AntiKick()
    for _, descendant in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
        if descendant:IsA("LocalScript") then
            local blacklistNames = {"General", "Shiftlock", "FallDamage", "4444", "CamBob", "JumpCD", "Looking", "Run"}
            if table.find(blacklistNames, descendant.Name) then
                descendant:Destroy()
            end
        end
    end
    for _, descendant in pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetDescendants()) do
        if descendant:IsA("LocalScript") then
            local blacklistNames = {"RobloxMotor6DBugFix", "Clans", "Codes", "CustomForceField", "MenuBloodSp", "PlayerList"}
            if table.find(blacklistNames, descendant.Name) then
                descendant:Destroy()
            end
        end
    end
end
AntiKick()

function QuestCheck()
    MyLevel = game: GetService("Players").LocalPlayer.Data.Level.Value
    if Sea1 then
    if MyLevel == 1 or MyLevel <= 9 then
    Mon = "Bandit"
    LevelQuest = 1
    NameQuest = "BanditQuest1"
    NameMon = "Bandit"
    CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
    CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
    elseif MyLevel == 10 or MyLevel <= 14 then
    Mon = "Monkey"
    LevelQuest = 1
    NameQuest = "JungleQuest"
    NameMon = "Monkey"
    CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)
    elseif MyLevel == 15 or MyLevel <= 29 then
    Mon = "Gorilla"
    LevelQuest = 2
    NameQuest = "JungleQuest"
    NameMon = "Gorilla"
    CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)
    elseif MyLevel == 30 or MyLevel <= 39 then
    Mon = "Pirate"
    LevelQuest = 1
    NameQuest = "BuggyQuest1"
    NameMon = "Pirate"
    CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
    CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)
    elseif MyLevel == 40 or MyLevel <= 59 then
    Mon = "Brute"
    LevelQuest = 2
    NameQuest = "BuggyQuest1"
    NameMon = "Brute"
    CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
    CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)
    elseif MyLevel == 60 or MyLevel <= 74 then
    Mon = "Desert Bandit"
    LevelQuest = 1
    NameQuest = "DesertQuest"
    NameMon = "Desert Bandit"
    CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
    CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
    elseif MyLevel == 75 or MyLevel <= 89 then
    Mon = "Desert Officer"
    LevelQuest = 2
    NameQuest = "DesertQuest"
    NameMon = "Desert Officer"
    CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
    CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)
    elseif MyLevel == 90 or MyLevel <= 99 then
    Mon = "Snow Bandit"
    LevelQuest = 1
    NameQuest = "SnowQuest"
    NameMon = "Snow Bandit"
    CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
    CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125)
    elseif MyLevel == 100 or MyLevel <= 119 then
    Mon = "Snowman"
    LevelQuest = 2
    NameQuest = "SnowQuest"
    NameMon = "Snowman"
    CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
    CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
    elseif MyLevel == 120 or MyLevel <= 149 then
    Mon = "Chief Petty Officer"
    LevelQuest = 1
    NameQuest = "MarineQuest2"
    NameMon = "Chief Petty Officer"
    CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
    elseif MyLevel == 150 or MyLevel <= 174 then
    Mon = "Sky Bandit"
    LevelQuest = 1
    NameQuest = "SkyQuest"
    NameMon = "Sky Bandit"
    CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
    CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)
    elseif MyLevel == 175 or MyLevel <= 189 then
    Mon = "Dark Master"
    LevelQuest = 2
    NameQuest = "SkyQuest"
    NameMon = "Dark Master"
    CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
    CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
    elseif MyLevel == 190 or MyLevel <= 209 then
    Mon = "Prisoner"
    LevelQuest = 1
    NameQuest = "PrisonerQuest"
    NameMon = "Prisoner"
    CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
    CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
    elseif MyLevel == 210 or MyLevel <= 249 then
    Mon = "Dangerous Prisoner"
    LevelQuest = 2
    NameQuest = "PrisonerQuest"
    NameMon = "Dangerous Prisoner"
    CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
    CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
    elseif MyLevel == 250 or MyLevel <= 274 then
    Mon = "Toga Warrior"
    LevelQuest = 1
    NameQuest = "ColosseumQuest"
    NameMon = "Toga Warrior"
    CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
    CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
    elseif MyLevel == 275 or MyLevel <= 299 then
    Mon = "Gladiator"
    LevelQuest = 2
    NameQuest = "ColosseumQuest"
    NameMon = "Gladiator"
    CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
    CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
    elseif MyLevel == 300 or MyLevel <= 324 then
    Mon = "Military Soldier"
    LevelQuest = 1
    NameQuest = "MagmaQuest"
    NameMon = "Military Soldier"
    CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
    CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
    elseif MyLevel == 325 or MyLevel <= 374 then
    Mon = "Military Spy"
    LevelQuest = 2
    NameQuest = "MagmaQuest"
    NameMon = "Military Spy"
    CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
    CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
    elseif MyLevel == 375 or MyLevel <= 399 then
    Mon = "Fishman Warrior"
    LevelQuest = 1
    NameQuest = "FishmanQuest"
    NameMon = "Fishman Warrior"
    CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
    CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
    if _G.LevelFarm and(CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
    game: GetService("ReplicatedStorage").Remotes.CommF_: InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
    end
    elseif MyLevel == 400 or MyLevel <= 449 then
    Mon = "Fishman Commando"
    LevelQuest = 2
    NameQuest = "FishmanQuest"
    NameMon = "Fishman Commando"
    CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
    CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
    if _G.LevelFarm and(CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
    game: GetService("ReplicatedStorage").Remotes.CommF_: InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
    end
    elseif MyLevel == 450 or MyLevel <= 474 then
    Mon = "God's Guard"
    LevelQuest = 1
    NameQuest = "SkyExp1Quest"
    NameMon = "God's Guard"
    CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
    CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
    if _G.LevelFarm and(CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
    game: GetService("ReplicatedStorage").Remotes.CommF_: InvokeServer("requestEntrance", Vector3.new(-4607.82275, 872.54248, -1667.55688))
    end
    elseif MyLevel == 475 or MyLevel <= 524 then
    Mon = "Shanda"
    LevelQuest = 2
    NameQuest = "SkyExp1Quest"
    NameMon = "Shanda"
    CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
    CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
    if _G.LevelFarm and(CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
    game: GetService("ReplicatedStorage").Remotes.CommF_: InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
    end
    elseif MyLevel == 525 or MyLevel <= 549 then
    Mon = "Royal Squad"
    LevelQuest = 1
    NameQuest = "SkyExp2Quest"
    NameMon = "Royal Squad"
    CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
    elseif MyLevel == 550 or MyLevel <= 624 then
    Mon = "Royal Soldier"
    LevelQuest = 2
    NameQuest = "SkyExp2Quest"
    NameMon = "Royal Soldier"
    CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
    elseif MyLevel == 625 or MyLevel <= 649 then
    Mon = "Galley Pirate"
    LevelQuest = 1
    NameQuest = "FountainQuest"
    NameMon = "Galley Pirate"
    CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
    CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
    elseif MyLevel >= 650 then
    Mon = "Galley Captain"
    LevelQuest = 2
    NameQuest = "FountainQuest"
    NameMon = "Galley Captain"
    CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
    CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
    end
    elseif Sea2 then
    if MyLevel == 700 or MyLevel <= 724 then
    Mon = "Raider"
    LevelQuest = 1
    NameQuest = "Area1Quest"
    NameMon = "Raider"
    CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
    CFrameMon = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125)
    elseif MyLevel == 725 or MyLevel <= 774 then
    Mon = "Mercenary"
    LevelQuest = 2
    NameQuest = "Area1Quest"
    NameMon = "Mercenary"
    CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
    CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
    elseif MyLevel == 775 or MyLevel <= 799 then
    Mon = "Swan Pirate"
    LevelQuest = 1
    NameQuest = "Area2Quest"
    NameMon = "Swan Pirate"
    CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
    CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)
    elseif MyLevel == 800 or MyLevel <= 874 then
    Mon = "Factory Staff"
    NameQuest = "Area2Quest"
    LevelQuest = 2
    NameMon = "Factory Staff"
    CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
    CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
    elseif MyLevel == 875 or MyLevel <= 899 then
    Mon = "Marine Lieutenant"
    LevelQuest = 1
    NameQuest = "MarineQuest3"
    NameMon = "Marine Lieutenant"
    CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
    CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125)
    elseif MyLevel == 900 or MyLevel <= 949 then
    Mon = "Marine Captain"
    LevelQuest = 2
    NameQuest = "MarineQuest3"
    NameMon = "Marine Captain"
    CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
    CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
    elseif MyLevel == 950 or MyLevel <= 974 then
    Mon = "Zombie"
    LevelQuest = 1
    NameQuest = "ZombieQuest"
    NameMon = "Zombie"
    CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
    CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
    elseif MyLevel == 975 or MyLevel <= 999 then
    Mon = "Vampire"
    LevelQuest = 2
    NameQuest = "ZombieQuest"
    NameMon = "Vampire"
    CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
    CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
    elseif MyLevel == 1000 or MyLevel <= 1049 then
    Mon = "Snow Trooper"
    LevelQuest = 1
    NameQuest = "SnowMountainQuest"
    NameMon = "Snow Trooper"
    CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
    CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
    elseif MyLevel == 1050 or MyLevel <= 1099 then
    Mon = "Winter Warrior"
    LevelQuest = 2
    NameQuest = "SnowMountainQuest"
    NameMon = "Winter Warrior"
    CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
    CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
    elseif MyLevel == 1100 or MyLevel <= 1124 then
    Mon = "Lab Subordinate"
    LevelQuest = 1
    NameQuest = "IceSideQuest"
    NameMon = "Lab Subordinate"
    CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
    CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
    elseif MyLevel == 1125 or MyLevel <= 1174 then
    Mon = "Horned Warrior"
    LevelQuest = 2
    NameQuest = "IceSideQuest"
    NameMon = "Horned Warrior"
    CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
    CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
    elseif MyLevel == 1175 or MyLevel <= 1199 then
    Mon = "Magma Ninja"
    LevelQuest = 1
    NameQuest = "FireSideQuest"
    NameMon = "Magma Ninja"
    CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
    CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
    elseif MyLevel == 1200 or MyLevel <= 1249 then
    Mon = "Lava Pirate"
    LevelQuest = 2
    NameQuest = "FireSideQuest"
    NameMon = "Lava Pirate"
    Mon = "Mythological Pirate"
    LevelQuest = 2
    NameQuest = "DeepForestIsland"
    NameMon = "Mythological Pirate"
    CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
    CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
    elseif MyLevel == 1900 or MyLevel <= 1924 then
    Mon = "Jungle Pirate"
    LevelQuest = 1
    NameQuest = "DeepForestIsland2"
    NameMon = "Jungle Pirate"
    CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
    CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
    elseif MyLevel == 1925 or MyLevel <= 1974 then
    Mon = "Musketeer Pirate"
    LevelQuest = 2
    NameQuest = "DeepForestIsland2"
    NameMon = "Musketeer Pirate"
    CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
    CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
    elseif MyLevel == 1975 or MyLevel <= 1999 then
    Mon = "Reborn Skeleton"
    LevelQuest = 1
    NameQuest = "HauntedQuest1"
    NameMon = "Reborn Skeleton"
    CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
    elseif MyLevel == 2000 or MyLevel <= 2024 then
    Mon = "Living Zombie"
    LevelQuest = 2
    NameQuest = "HauntedQuest1"
    NameMon = "Living Zombie"
    CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
    elseif MyLevel == 2025 or MyLevel <= 2049 then
    Mon = "Demonic Soul"
    LevelQuest = 1
    NameQuest = "HauntedQuest2"
    NameMon = "Demonic Soul"
    CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
    elseif MyLevel == 2050 or MyLevel <= 2074 then
    Mon = "Posessed Mummy"
    LevelQuest = 2
    NameQuest = "HauntedQuest2"
    NameMon = "Posessed Mummy"
    CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
    elseif MyLevel == 2075 or MyLevel <= 2099 then
    Mon = "Peanut Scout"
    LevelQuest = 1
    NameQuest = "NutsIslandQuest"
    NameMon = "Peanut Scout"
    CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
    elseif MyLevel == 2100 or MyLevel <= 2124 then
    Mon = "Peanut President"
    LevelQuest = 2
    NameQuest = "NutsIslandQuest"
    NameMon = "Peanut President"
    CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
    elseif MyLevel == 2125 or MyLevel <= 2149 then
    Mon = "Ice Cream Chef"
    LevelQuest = 1
    NameQuest = "IceCreamIslandQuest"
    NameMon = "Ice Cream Chef"
    CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
    elseif MyLevel == 2150 or MyLevel <= 2199 then
    Mon = "Ice Cream Commander"
    LevelQuest = 2
    NameQuest = "IceCreamIslandQuest"
    NameMon = "Ice Cream Commander"
    CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
    elseif MyLevel == 2200 or MyLevel <= 2224 then
    Mon = "Cookie Crafter"
    LevelQuest = 1
    NameQuest = "CakeQuest1"
    NameMon = "Cookie Crafter"
    CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
    CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
    elseif MyLevel == 2225 or MyLevel <= 2249 then
    Mon = "Cake Guard"
    LevelQuest = 2
    NameQuest = "CakeQuest1"
    NameMon = "Cake Guard"
    CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
    CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
    elseif MyLevel == 2250 or MyLevel <= 2274 then
    Mon = "Baking Staff"
    LevelQuest = 1
    NameQuest = "CakeQuest2"
    NameMon = "Baking Staff"
    CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
    CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
    elseif MyLevel == 2275 or MyLevel <= 2299 then
    Mon = "Head Baker"
    LevelQuest = 2
    NameQuest = "CakeQuest2"
    NameMon = "Head Baker"
    CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
    CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
    elseif MyLevel == 2300 or MyLevel <= 2324 then
    Mon = "Cocoa Warrior"
    LevelQuest = 1
    NameQuest = "ChocQuest1"
    NameMon = "Cocoa Warrior"
    CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
    CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
    elseif MyLevel == 2325 or MyLevel <= 2349 then
    Mon = "Chocolate Bar Battler"
    LevelQuest = 2
    NameQuest = "ChocQuest1"
    NameMon = "Chocolate Bar Battler"
    CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
    CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
    elseif MyLevel == 2350 or MyLevel <= 2374 then
    Mon = "Sweet Thief"
    LevelQuest = 1
    NameQuest = "ChocQuest2"
    NameMon = "Sweet Thief"
    CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
    CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
    elseif MyLevel == 2375 or MyLevel <= 2399 then
    Mon = "Candy Rebel"
    LevelQuest = 2
    NameQuest = "ChocQuest2"
    NameMon = "Candy Rebel"
    CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
    CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)
    elseif MyLevel == 2400 or MyLevel <= 2424 then
    Mon = "Candy Pirate"
    LevelQuest = 1
    NameQuest = "CandyQuest1"
    NameMon = "Candy Pirate"
    CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
    CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
    elseif MyLevel == 2425 or MyLevel <= 2449 then
    Mon = "Snow Demon"
    LevelQuest = 2
    NameQuest = "CandyQuest1"
    NameMon = "Snow Demon"
    CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
    CFrameMon = CFrame.new(-880.2006225585938, 71.24776458740234, -14538.609375)
    elseif MyLevel == 2450 or MyLevel <= 2474 then
    Mon = "Isle Outlaw"
    LevelQuest = 1
    NameQuest = "TikiQuest1"
    NameMon = "Isle Outlaw"
    CFrameQuest = CFrame.new(-16545.9355, 55.6863556, -173.230499)
    CFrameMon = CFrame.new(-16120.6035, 116.520554, -103.038849)
    elseif MyLevel == 2475 or MyLevel <= 2524 then
    Mon = "Island Boy"
    LevelQuest = 2
    NameQuest = "TikiQuest1"
    NameMon = "Island Boy"
    CFrameQuest = CFrame.new(-16545.9355, 55.6863556, -173.230499)
    CFrameMon = CFrame.new(-16751.3125, 121.226219, -264.015015)
    elseif MyLevel >= 2525 then
    Mon = "Isle Champion"
    LevelQuest = 2
    NameQuest = "TikiQuest2"
    NameMon = "Isle Champion"
    CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
    CFrameMon = CFrame.new(-16933.2129, 93.3503036, 999.450989)
    end
    end
end

function Tween(Pos)
    local Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if game.Players.LocalPlayer.Character.Humanoid.Sit then
        game.Players.LocalPlayer.Character.Humanoid.Sit = false
    end
    pcall(function()
        local tween = game:GetService("TweenService"):Create(
            game.Players.LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance/300, Enum.EasingStyle.Linear),
            {CFrame = Pos}
        )
        tween:Play()
        if Distance <= 300 or _G.StopTween then
            tween:Cancel()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
            NoClip = false
        end
    end)
end

function Teleport(P)
    local Distance = (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    local Speed = Distance >= 1 and 300 or 1
    pcall(function()
        local teleport = game:GetService("TweenService"):Create(
            game.Players.LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
            {CFrame = P}
        )
        teleport:Play()
        if _G.StopTween then
            teleport:Cancel()
            NoClip = false
        end
        NoClip = true
        wait(Distance/Speed)
        NoClip = false
    end)
end

function BP(P)
	pcall(function()
        repeat task.wait()
		    game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
		    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
		    task.wait()
		    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
            task.wait()
		    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
            task.wait()
		    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
        until (P.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000
    end)
end

function EquipTool(Toolse)
    local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(Toolse)
    if tool then
        wait(0.5)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
    end
end

function AutoHaki()
    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end

function GetCurrentBlade() 
    local p13 = CbFw2.activeController
    local ret = p13.blades[1]
    if not ret then
        return
    end
    while ret.Parent ~= game.Players.LocalPlayer.Character do
        ret = ret.Parent
    end
    return ret
end

local ExamList = {}

for i = 1, 20 do
    table.insert(ExamList, "Option "..i)
end
local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local CombatFrameworkR = getupvalues(CombatFramework)[2]
local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
local RigControllerR = getupvalues(RigController)[2]
local realbhit = require(game.ReplicatedStorage.CombatFramework.RigLib)
local cooldownfastattack = tick()

function CurrentWeapon()
	local ac = CombatFrameworkR.activeController
	local ret = ac.blades[1]
	if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
	pcall(function()
		while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
	end)
	if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
	return ret
end

function getAllBladeHitsPlayers(Sizes)
	local Hits = {}
	local Client = game.Players.LocalPlayer
	local Characters = game:GetService("Workspace").Characters:GetChildren()
	for i=1,#Characters do local v = Characters[i]
		local Human = v:FindFirstChildOfClass("Humanoid")
		if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
			table.insert(Hits,Human.RootPart)
		end
	end
	return Hits
end

function getAllBladeHits(Sizes)
	local Hits = {}
	local Client = game.Players.LocalPlayer
	local Enemies = game:GetService("Workspace").Enemies:GetChildren()
	for i=1,#Enemies do local v = Enemies[i]
		local Human = v:FindFirstChildOfClass("Humanoid")
		if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
			table.insert(Hits,Human.RootPart)
		end
	end
	return Hits
end

function AttackFunction()
	local ac = CombatFrameworkR.activeController
	if ac and ac.equipped then
		for indexincrement = 1, 1 do
			local bladehit = getAllBladeHits(50)
			if #bladehit > 0 then
				local AcAttack8 = debug.getupvalue(ac.attack, 5)
				local AcAttack9 = debug.getupvalue(ac.attack, 6)
				local AcAttack7 = debug.getupvalue(ac.attack, 4)
				local AcAttack10 = debug.getupvalue(ac.attack, 7)
				local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
				local NumberAc13 = AcAttack7 * 798405
				(function()
					NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
					AcAttack8 = math.floor(NumberAc12 / AcAttack9)
					AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
				end)()
				AcAttack10 = AcAttack10 + 1
				debug.setupvalue(ac.attack, 5, AcAttack8)
				debug.setupvalue(ac.attack, 6, AcAttack9)
				debug.setupvalue(ac.attack, 4, AcAttack7)
				debug.setupvalue(ac.attack, 7, AcAttack10)
				for k, v in pairs(ac.animator.anims.basic) do
					v:Play(0.1,0.5,0.2,0.8)
				end                 
				if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
					game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 2, "") 
				end
			end
		end
	end
end

function CancelTween(FUCK)
    if not FUCK then
        _G.StopTween = true
        wait()
        Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
        end
        _G.StopTween = false
        NoClip = false
    end
end

function TweenIsland()
    if _G.SelectIsland == "WindMill" then
        Teleport(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
    elseif _G.SelectIsland == "Marine" then
        Teleport(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
    elseif _G.SelectIsland == "Middle Town" then
        Teleport(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
    elseif _G.SelectIsland == "Jungle" then
        Teleport(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
    elseif _G.SelectIsland == "Pirate Village" then
        Teleport(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
    elseif _G.SelectIsland == "Desert" then
        Teleport(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
    elseif _G.SelectIsland == "Snow Island" then
        Teleport(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
    elseif _G.SelectIsland == "MarineFord" then
        Teleport(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
    elseif _G.SelectIsland == "Colosseum" then
        Teleport(CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
    elseif _G.SelectIsland == "Sky Island 1" then
        Teleport(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
    elseif _G.SelectIsland == "Sky Island 2" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
    elseif _G.SelectIsland == "Sky Island 3" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
    elseif _G.SelectIsland == "Prison" then
        Teleport(CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
    elseif _G.SelectIsland == "Magma Village" then
        Teleport(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
    elseif _G.SelectIsland == "Under Water Island" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
    elseif _G.SelectIsland == "Fountain City" then
        Teleport(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
    elseif _G.SelectIsland == "Shank Room" then
        Teleport(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
    elseif _G.SelectIsland == "Mob Island" then
        Teleport(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
    elseif _G.SelectIsland == "The Cafe" then
        Teleport(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
    elseif _G.SelectIsland == "Frist Spot" then
        Teleport(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
    elseif _G.SelectIsland == "Dark Area" then
        Teleport(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
    elseif _G.SelectIsland == "Flamingo Mansion" then
        Teleport(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
    elseif _G.SelectIsland == "Flamingo Room" then
        Teleport(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
    elseif _G.SelectIsland == "Green Zone" then
        Teleport(CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
    elseif _G.SelectIsland == "Factory" then
        Teleport(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
    elseif _G.SelectIsland == "Colossuim" then
        Teleport(CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
    elseif _G.SelectIsland == "Zombie Island" then
        Teleport(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
    elseif _G.SelectIsland == "Two Snow Mountain" then
        Teleport(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
    elseif _G.SelectIsland == "Punk Hazard" then
        Teleport(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
    elseif _G.SelectIsland == "Cursed Ship" then
        Teleport(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
    elseif _G.SelectIsland == "Ice Castle" then
        Teleport(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
    elseif _G.SelectIsland == "Forgotten Island" then
        Teleport(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
    elseif _G.SelectIsland == "Ussop Island" then
        Teleport(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
    elseif _G.SelectIsland == "Mini Sky Island" then
        Teleport(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
    elseif _G.SelectIsland == "Great Tree" then

                    if v.Character.Head:FindFirstChild('NameEsp'..Number) then
                        v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
                    end
                end
            end
        end)
    end
end

function UpdateRealFruitChams() 
    for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
        if v:IsA("Tool") then
            if _G.DinhViQua then 
                if not v.Handle:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Handle)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                else
                    v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                end
            else
                if v.Handle:FindFirstChild('NameEsp'..Number) then
                    v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end 
        end
    end
    for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
        if v:IsA("Tool") then
            if _G.DinhViQua then 
                if not v.Handle:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Handle)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 174, 0)
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                else
                    v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                end
            else
                if v.Handle:FindFirstChild('NameEsp'..Number) then
                    v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end 
        end
    end
    for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
        if v:IsA("Tool") then
            if _G.DinhViQua then 
                if not v.Handle:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Handle)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(251, 255, 0)
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                else
                    v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                end
            else
                if v.Handle:FindFirstChild('NameEsp'..Number) then
                    v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end 
        end
    end
end

    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _,Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(4)
                end
            end
        end
    end
    function Teleport() 
        while wait() do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
        end
    end
    Teleport()
end

function Click()
    local Module = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework)
    local CombatFramework = debug.getupvalues(Module)[2]
    local CamShake = require(game.ReplicatedStorage.Util.CameraShaker)
    CamShake:Stop()
    CombatFramework.activeController.attacking = false
    CombatFramework.activeController.timeToNextAttack = 0
    CombatFramework.activeController.hitboxMagnitude = 180
    game:GetService'VirtualUser':CaptureController()
    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end

assert(getrawmetatable)
    grm = getrawmetatable(game)
    setreadonly(grm, false)
    old = grm.__namecall
    grm.__namecall = newcclosure(function(self, ...)
        local args = {...}
        if tostring(args[1]) == "TeleportDetect" then
            return
        elseif tostring(args[1]) == "CHECKER_1" then
            return
        elseif tostring(args[1]) == "CHECKER" then
            return
        elseif tostring(args[1]) == "GUI_CHECK" then
            return
        elseif tostring(args[1]) == "OneMoreTime" then
            return
        elseif tostring(args[1]) == "checkingSPEED" then
            return
        elseif tostring(args[1]) == "BANREMOTE" then
            return
        elseif tostring(args[1]) == "PERMAIDBAN" then
            return
        elseif tostring(args[1]) == "KICKREMOTE" then
            return
        elseif tostring(args[1]) == "BR_KICKPC" then
            return
        elseif tostring(args[1]) == "BR_KICKMOBILE" then
            return
        end
        return old(self, ...)
    end)

getgenv().NoDieEffect = true
if getgenv().NoDieEffect then
    local effectContainer = game:GetService("ReplicatedStorage").Effect.Container
    if effectContainer:FindFirstChild("Death") then
        effectContainer.Death:Destroy()
    end
    if effectContainer:FindFirstChild("Respawn") then
        effectContainer.Respawn:Destroy()
    end
end

spawn(function()
    while wait() do
        local rs = game:GetService("ReplicatedStorage")
        local guiAssets = rs.Assets.GUI
        local soundStorage = rs.Util.Sound.Storage.Other
        guiAssets.DamageCounter.Enabled = false
        soundStorage:FindFirstChild("LevelUp_Proxy"):Destroy()
        soundStorage:FindFirstChild("LevelUp"):Destroy()
        effectContainer.Respawn:Destroy()  
        effectContainer.LevelUp:Destroy()
    end
end)

local slashHit = game:GetService("ReplicatedStorage").Assets:FindFirstChild('SlashHit')
if slashHit then
    slashHit:Destroy()
end

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.TrainToc or _G.Tansat or _G.Zone6 or _G.KillFishCrew or _G.KillTerrorShark or _G.KillShark or _G.KillPiranha or _G.AutoTrials or _G.TrialV4 or _G.OneClick or _G.AutoHallowSycthe or _G.AutoDarkDagger or _G.AutoBudySword or _G.AutoCarvender or _G.AutoTwinHook or _G.AutoKen or _G.AutoRengoku or _G.AutoSecondSea or _G.Tweenfruit or _G.AutoMob or _G.ThirdSea or _G.AutoSwan or _G.Autopole or _G.AutoSaber or _G.AutoBartilo or _G.AutoBoss or _G.DjtFactorybantumlum or _G.DjtElite or _G.DjtPirates or _G.AutoBone or _G.LevelFarm or _G.AutoKatakuri or NoClip == true then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000,100000,100000)
                    Noclip.Velocity = Vector3.new(0,0,0)
                end
            else
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
            end
        end)
    end
end)

spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.TrainToc or _G.Tansat or _G.Zone6 or _G.KillFishCrew or _G.KillTerrorShark or _G.KillShark or _G.KillPiranha or _G.AutoTrials or _G.TrialV4 or _G.OneClick or _G.AutoHallowSycthe or _G.AutoDarkDagger or _G.AutoBudySword or _G.AutoCarvender or _G.AutoTwinHook or _G.AutoKen or _G.AutoRengoku or _G.AutoSecondSea or _G.Tweenfruit or _G.AutoMob or _G.ThirdSea or _G.AutoSwan or _G.Autopole or _G.AutoSaber or _G.AutoBartilo or _G.AutoBoss or _G.DjtFactorybantumlum or _G.DjtElite or _G.DjtPirates or _G.AutoBone or _G.LevelFarm or _G.AutoKatakuri or NoClip == true then
                for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        end)
    end)
end)

if game:GetService("ReplicatedStorage").Assets:FindFirstChild('SlashHit') then
    game:GetService("ReplicatedStorage").Assets:FindFirstChild('SlashHit'):Destroy()
end

game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Nghiavndeptraivcc/Orion-nhu-cut/main/Orion.Source')))()
local Window = OrionLib:MakeWindow({Name = "Xozaity HUB", HidePremium = false,IntroText = "Xozaity Library", SaveConfig = true, ConfigFolder = "Xozaity Setting"})

local I = Window:MakeTab({
	Name = "Info",
	Icon = "rbxassetid://16035137478",
	PremiumOnly = false
})

local G = Window:MakeTab({
	Name = "เมนูหลัก",
	Icon = "rbxassetid://16035137478",
	PremiumOnly = false
})

local IQ = Window:MakeTab({
	Name = "ไอเทม&เควส",
	Icon = "rbxassetid://16035137478",
	PremiumOnly = false
})

local ST = Window:MakeTab({
	Name = "อื่นๆ",
	Icon = "rbxassetid://16035137478",
	PremiumOnly = false
})

local TL = Window:MakeTab({
	Name = "เดินทาง",
	Icon = "rbxassetid://16035137478",
	PremiumOnly = false
})

local DF = Window:MakeTab({
	Name = "ผลไม้",
	Icon = "rbxassetid://16035137478",
	PremiumOnly = false
})

local ER = Window:MakeTab({
	Name = "บอกตำแหน่ง&ลงดัน",
	Icon = "rbxassetid://16035137478",
	PremiumOnly = false
})

local SE = Window:MakeTab({
	Name = "ทะเล",
	Icon = "rbxassetid://16035137478",
	PremiumOnly = false
})

local RC = Window:MakeTab({
	Name = "เผ่าวี4",
	Icon = "rbxassetid://16035137478",
	PremiumOnly = false
})

local SH = Window:MakeTab({
	Name = "ร้านค้า",
	Icon = "rbxassetid://16035137478",
	PremiumOnly = false
})

local S = Window:MakeTab({
	Name = "ตั้งค่า",
	Icon = "rbxassetid://16035137478",
	PremiumOnly = false
})

local Section = I:AddSection({
    Name = "Info Owner"
})

I:AddLabel("By : Raphae1")
I:AddLabel("BirthDay : 9/03/2009")

local Section = I:AddSection({
    Name = "New Update"
})

I:AddLabel("Update Bring Mob Large")
I:AddLabel("Update FastAttack")
I:AddLabel("Fixed Lag")
I:AddLabel("Auto Bone Fixed")
I:AddLabel("Auto Katakuri FIxed")
I:AddLabel("Auto Mob, boss,... New")
I:AddLabel("Race V4, Sea Event,... [Comming Soon]")

local Section = G:AddSection({
    Name = "ผู้เล่น"
})

G:AddButton({
	Name = "รีเซ็ตตัวละคร",
	Callback = function()
      	game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
  	end    
})

G:AddButton({
	Name = "ลบหมอก",
	Callback = function()
        game:GetService("Lighting").LightingLayers:Destroy()
        game:GetService("Lighting").Sky:Destroy()
  	end    
})

local Section = G:AddSection({
    Name = "เลือกอาวุธ"
})

G:AddParagraph("Select Weapon","Click the DropDown and Select Tool You Like To Farm >w<")

G:AddDropdown({
	Name = "เลือกอาวุธ",
	Default = "Melee",
	Options = {"Melee", "Sword"},
	Callback = function(Value)
		SelectWP = Value
	end    
})

G:AddParagraph("SETTINGS FARM","Click The Box To Enable Settings Farm You Like >w<")

G:AddToggle({
	Name = "ออโต้เปิดเผ่าวี4",
	Default = false,
	Callback = function(Value)
		_G.V4 = Value
	end    
})

G:AddParagraph("TOGGLE FARM","Click The Box To Enable Mode Farm You Like >w<")

G:AddToggle({
	Name = "ออโต้ฟาร์มเลเวล",
	Default = false,
	Callback = function(Value)
		_G.LevelFarm = Value
        CancelTween(_G.LevelFarm)
	end    
})

G:AddToggle({
	Name = "ออโต้ฟาร์มคาตาคุริ",
	Default = false,
	Callback = function(Value)
		_G.AutoKatakuri = Value
        CancelTween(_G.AutoKatakuri)
	end    
})

G:AddToggle({
	Name = "ออโต้ฟาร์มโบน",
	Default = false,
	Callback = function(Value)
		_G.AutoBone = Value
        CancelTween(_G.AutoBone)
	end    
})

local Section = G:AddSection({
    Name = "เลือกบอส"
})

G:AddParagraph("เลือกบอส(ทดลอง)","เลือกบอสเพื่อฟาร์มถ้าไม่ฟาร์มแปลว่าบัค")

G:AddDropdown({
	Name = "เลือกบอส",
	Default = "",
	Options = Boss,
	Callback = function(Value)
		_G.SelectBoss = Value
	end    
})

G:AddToggle({
	Name = "ออโต้ฟาร์มบอส",
	Default = false,
	Callback = function(Value)
		_G.AutoBoss = Value
        CancelTween(_G.AutoBoss)
	end    
})

local Section = G:AddSection({
    Name = "ออโต้ฟาร์มมอน"
})

G:AddParagraph("ออโต้ฟาร์มมอน(ทดลอง)","เลือกมอนเพื่อฟาร์มถ้าไม่ฟาร์มแปลว่าบัค")

G:AddDropdown({
	Name = "เลือกมอน",
	Default = "",
	Options = MobList,
	Callback = function(Value)
		_G.SelectMob = Value
	end    
})

G:AddToggle({
	Name = "ออโต้ฟาร์มมอน",
	Default = false,
	Callback = function(Value)
		_G.AutoMob = Value
        CancelTween(_G.AutoMob)
	end    
})

local Section = G:AddSection({
    Name = "อื่นๆ"
})

G:AddParagraph("บอส","")

G:AddToggle({
	Name = "ออโต้ฟาร์มอีลิท",
	Default = false,
	Callback = function(Value)
		_G.DjtElite = Value
        CancelTween(_G.DjtElite)
	end    
})

G:AddToggle({
	Name = "ออโต้ฟาร์มโจรสลัดเกาะกลาง",
	Default = false,
	Callback = function(Value)
		_G.DjtPirates = Value
        CancelTween(_G.DjtPirates)
	end    
})

G:AddToggle({
	Name = "ออโต้ฟาร์มโรงงาน",
	Default = false,
	Callback = function(Value)
		_G.DjtFactorybantumlum = Value
        CancelTween(_G.DjtFactorybantumlum)
	end    
})

local Section = IQ:AddSection({
    Name = "ไอเทม"
})

IQ:AddParagraph("ออโต้ไอเทม","")

if Sea1 then
    IQ:AddToggle({
	Name = "ออโต้ดาบเซเบอร์",
	Default = false,
	Callback = function(Value)
		_G.AutoSaber = Value
        CancelTween(_G.AutoSaber)
	end    
})

IQ:AddToggle({
	Name = "ออโต้โพลวี1",
	Default = false,
	Callback = function(Value)
		_G.Autopole = Value
        CancelTween(_G.Autopole)
	end    
})
end

if Sea2 then
    IQ:AddToggle({
        Name = "ออโต้ดาบเรนโงคุ",
        Default = false,
        Callback = function(Value)
            _G.AutoRengoku = Value
            CancelTween(_G.AutoRengoku)
        end    
    })
end

IQ:AddToggle({
    Name = "ออโต้ฟาร์มฮาคิสังเกตุ",
    Default = false,
    Callback = function(Value)
        _G.AutoKen = Value
        CancelTween(_G.AutoKen)
    end    
})

IQ:AddToggle({
    Name = "ออโต้ฟาร์มฮาคิสังเกตุ [Hop]",
    Default = false,
    Callback = function(Value)
        _G.AutoKenHop = Value
    end    
})

IQ:AddToggle({
    Name = "ออโต้ทำหมัดซุป",
    Default = false,
    Flag = "Auto SuperHuman",
    Save = true,
    Callback = function(Value)
        _G.AutoSuperhuman = Value
        CancelTween(_G.AutoSuperhuman)
    end    
})

if Sea2 or Sea3 then
IQ:AddToggle({
    Name = "ออโต้ซื้อ3ดาบ",
    Default = false,
    Flag = "Auto Legend",
    Save = true,
    Callback = function(Value)
        _G.AutoBuyLegendarySword = Value
    end    
})
end

if Sea3 then
IQ:AddToggle({
    Name = "ออโต้ดาบคาเวนเดอร์",
    Default = false,
    Flag = "Auto Cavander",
    Save = true,
    Callback = function(Value)
        _G.AutoCarvender = Value
        CancelTween( _G.AutoCarvender)
    end    
})
end

if Sea3 then
IQ:AddToggle({
    Name = "ออโต้ดาบบิ๊กมัม",
    Default = false,
    Flag = "Auto Buddy",
    Save = true,
    Callback = function(Value)
        _G.AutoBudySword = Value
        CancelTween(_G.AutoBudySword)
    end    
})
end

if Sea3 then
    IQ:AddToggle({
        Name = "ออโต้เคียวคู่",
        Default = false,
        Flag = "Auto Twin",
        Save = true,
        Callback = function(Value)
            _G.AutoTwinHook = Value
            CancelTween( _G.AutoTwinHook)
        end    
    })
end


        Flag = "ออโต้เคียว",
        Save = true,
        Callback = function(Value)
            _G.AutoHallowSycthe = Value
            CancelTween(_G.AutoHallowSycthe)
        end    
    })
end

if Sea3 then
    IQ:AddToggle({
        Name = "ออโต้โยรุจิ๋ว",
        Default = false,
        Flag = "Auto Dark",
        Save = true,
        Callback = function(Value)
            _G.AutoDarkDagger = Value
            CancelTween(_G.AutoDarkDagger)
        end    
    })
end

if Sea3 then
    IQ:AddToggle({
        Name = "ออโต้ดาบยามะ(Only Elite Process 30)",
        Default = false,
        Flag = "Auto Taken Yama",
        Save = true,
        Callback = function(Value)
            _G.TakenYama = Value
        end    
    })
end

local Section = IQ:AddSection({
    Name = "เควส"
})

IQ:AddParagraph("Quest Auto","Wait I Update...")

if Sea1 then
    IQ:AddToggle({
        Name = "ออโต้เควสไปโลก2",
        Default = false,
        Callback = function(Value)
            _G.AutoSecondSea = Value
            CancelTween(_G.AutoSecondSea)
        end    
    })
end

if Sea2 then
    IQ:AddToggle({
        Name = "ออโต้เควสบาโทโรมีโอ",
        Default = false,
        Callback = function(Value)
            _G.AutoBartilo = Value
            CancelTween(_G.AutoBartilo)
        end    
    })

    IQ:AddToggle({
        Name = "ออโต้ฟาร์มโดฟรามิงโก้",
        Default = false,
        Callback = function(Value)
            _G.AutoSwan = Value
            CancelTween(_G.AutoSwan)
        end    
    })

    IQ:AddToggle({
        Name = "ออโต้เควสไปโลก3",
        Default = false,
        Callback = function(Value)
            _G.ThirdSea = Value
            CancelTween(_G.ThirdSea)
        end    
    })
end

local Section = TL:AddSection({
    Name = "เดินทาง"
})

TL:AddDropdown({
	Name = "เลือกทะเลเพื่อเดินทาง",
	Default = "",
	Options = {"1", "2", "3"},
	Callback = function(Value)
		_G.SelectSea = Value
	end    
})

TL:AddButton({
    Name = "เดินทาง",
    Callback = function()
        teleporttosea()
    end
})

local Section = TL:AddSection({
    Name = "เดินทาง"
})

if Sea1 then
TL:AddDropdown({
    Name = "เลือกเกาะ",
    Default = "",
    Options = {"WindMill",
    "Marine",
    "Middle Town",
    "Jungle",
    "Pirate Village",
    "Desert",
    "Snow Island",
    "MarineFord",
    "Colosseum",
    "Sky Island 1",
    "Sky Island 2",
    "Sky Island 3",
    "Prison",
    "Magma Village",
    "Under Water Island",
    "Fountain City",
    "Shank Room",
    "Mob Island",},
    Flag = "Select Island",
    Save = true,
    Callback = function(Value)
        _G.SelectIsland = Value
    end    
})

if Sea2 then
TL:AddDropdown({
    Name = "Select Island",
    Default = "",
    Options = {"The Cafe",
    "Frist Spot",
    "Dark Area",
    "Flamingo Mansion",
    "Flamingo Room",
    "Green Zone",
    "Factory",
    "Colossuim",
    "Zombie Island",
    "Two Snow Mountain",
    "Punk Hazard",
    "Cursed Ship",
    "Ice Castle",
    "Forgotten Island",
    "Ussop Island",
    "Mini Sky Island"},
    Flag = "Select Island",
    Save = true,
    Callback = function(Value)
        _G.SelectIsland = Value
    end    
})
end

if Sea3 then
TL:AddDropdown({
    Name = "Select Island",
    Default = "",
    Options = {"Mansion",
    "Port Town",
    "Great Tree",
    "Castle On The Sea",
    "MiniSky", 
    "Hydra Island",
    "Floating Turtle",
    "Haunted Castle",
    "Ice Cream Island",
    "Peanut Island",
    "Cake Island",
    "Cocoa Island",
    "Tiki Outpost New",
    "Candy Island Newโ"},
    Flag = "Select Island",
    Save = true,
    Callback = function(Value)
        _G.SelectIsland = Value
    end    
})
end

TL:AddButton({
    Name = "Teleport To Island",
    Callback = function()
        TweenIsland()
    end
})

TL:AddButton({
    Name = "Teleport To Frozen Leviathan",
    Callback = function()
        TweenFrozen()
    end
})

TL:AddButton({
    Name = "Teleport To Mirrage Island",
    Callback = function()
        TweenDaobian()
    end
})

TL:AddButton({
	Name = "Stop Teleport",
	Callback = function()
        CancelTween(All)
  	end    
})

local Section = DF:AddSection({
	Name = "Devil Fruit"
})

DF:AddButton({
    Name = "Random Fruits",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
    end    
})

DF:AddToggle({
    Name = "Auto Random Fruits",
    Default = false,
    Flag = "Auto Random Fruits",
    Save = true,
    Callback = function(Value)
        _G.Random_Auto = Value
    end    
})

DF:AddToggle({
    Name = "Auto Store Fruit",
    Default = false,
    Flag = "Auto Store Fruit",
    Save = true,
    Callback = function(Value)
        _G.AutoStoreFruit = Value
    end    
})

DF:AddToggle({
    Name = "Teleport To Fruit",
    Default = false,
    Flag = "Teleport To Fruit",
    Save = true,
    Callback = function(Value)
        _G.Tweenfruit = Value
        CancelTween(_G.Tweenfruit)
    end    
})

local Section = ER:AddSection({
	Name = "ESP"
})

ER:AddToggle({
    Name = "ESP Players",
    Default = false,
    Flag = "ESP Players",
    Save = true,
    Callback = function(Value)
        _G.ESPPlayers = Value
        UpdatePlayerChams()
    end    
})

ER:AddToggle({
    Name = "ESP Fruits",
    Default = false,
    Flag = "ESP Fruits",
    Save = true,
    Callback = function(Value)
        _G.ESPFRUIT = Value
        while _G.ESPFRUIT do wait()
        UpdateDevilChams() 
        end
    end    
})

ER:AddToggle({
    Name = "ESP Island",
    Default = false,
    Flag = "ESP Island",
    Save = true,
    Callback = function(Value)
        _G.ESPISLAND = Value
        while _G.ESPISLAND do wait()
        UpdateIslandESP() 
        end
    end    
})

local Section = ER:AddSection({
	Name = "One Click Raid"
})

_G.SelectChip = selectraids or ""
    Raidslist = {}
    RaidsModule = require(game.ReplicatedStorage.Raids)
    for i,v in pairs(RaidsModule.raids) do
        table.insert(Raidslist,v)
    end
    for i,v in pairs(RaidsModule.advancedRaids) do
        table.insert(Raidslist,v)
end

ER:AddDropdown({
    Name = "Select Chips",
    Default = "",
    Options = Raidslist,
    Flag = "Select Chips",
    Save = true,
    Callback = function(Value)
        _G.SelectChip = Value
    end    
})

ER:AddToggle({
    Name = "One Click Full Raid",
    Default = false,
    Flag = "Auto Start",
    Save = true,
    Callback = function(Value)
        _G.OneClick = Value
    end    
})

local Section = SE:AddSection({
	Name = "Boats"
})

SE:AddButton({
	Name = "Buy Boats",
	Callback = function()
      	Teleport(ChoMuaThuyen)
        wait(0.5)
        local args = {
        [1] = "BuyBoat",
        [2] = "PirateBrigade"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
  	end    
})

SE:AddToggle({
    Name = "Set Speed Boats To 350",
    Default = false,
    Flag = "Set Speed Boats To 350",
    Save = true,
    Callback = function(Value)
        _G.SpeedBoats = Value
    end    
})

SE:AddToggle({
	Name = "เดินทางไปทะเลเขตุที่6",
	Default = false,
    Flag = "Teleport Boats To Zone 6",
    Save = true,
	Callback = function(Value)
		_G.Zone6 = Value
        CancelTween(_G.Zone6)
	end    
})

SE:AddToggle({
	Name = "ออโต้กด W",
	Default = false,
    Flag = "Auto Press W",
    Save = true,
	Callback = function(Value)
		_G.PressW = Value
	end    
})

SE:AddParagraph("FARMMING SEA EVENT","Click The Box Toggle To Choose You FARMMING Mob Sea")

SE:AddToggle({
	Name = "ออโต้ตีฉลาม",
	Default = false,
    Flag = "Auto Shark",
    Save = true,
	Callback = function(Value)
		_G.KillShark = Value
        CancelTween(_G.KillShark)
	end    
})

SE:AddToggle({
	Name = "ออโต้ตีฉลามยักษ์",
	Default = false,
    Flag = "Auto Terror Shark",
    Save = true,
	Callback = function(Value)
		_G.KillTerrorShark = Value
        CancelTween(_G.KillTerrorShark)
	end    
})

SE:AddToggle({
	Name = "ออโต้ตีมอนเรือผี",
	Default = false,
    Flag = "Auto Fish Crew Member",
    Save = true,
	Callback = function(Value)
		_G.KillFishCrew = Value
        CancelTween(_G.KillFishCrew)
	end    
})

SE:AddToggle({
	Name = "ออโต้ตีปลาสายฟ้า",
	Default = false,
    Flag = "Auto Piranha",
    Save = true,
	Callback = function(Value)
		_G.KillPiranha = Value
        CancelTween(_G.KillPiranha)
	end    
})

local Section = RC:AddSection({
	Name = "วัดแห่งการเวลา"
})

RC:AddButton({
	Name = "เดินทางไปบนต้นไม้ยักษ์",
	Callback = function()
      	TweenTopOnGreatTree()
  	end    
})

RC:AddButton({
	Name = "เดินทางไปที่วัดแห่งการเวลา",
	Callback = function()
        Templeteleport()
  	end    
})

RC:AddButton({
	Name = "เดินทางไปที่ประตูของเผ่า",
	Callback = function()
        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - PosTemplete.Position).Magnitude > 1000 then
            Templeteleport()
        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - PosTemplete.Position).Magnitude < 1000 then
            wait(0.5)
            if game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
                wait(1)
                Teleport(CFrame.new(28224.056640625, 14889.4267578125, -210.5872039794922))
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
                wait(1)
                Teleport(CFrame.new(29237.294921875, 14889.4267578125, -206.94955444335938))
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
                wait(1)
                Teleport(CFrame.new(28492.4140625, 14894.4267578125, -422.1100158691406))
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
                wait(1)
                Teleport(CFrame.new(28967.408203125, 14918.0751953125, 234.31198120117188))
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
                wait(1)
                Teleport(CFrame.new(28672.720703125, 14889.1279296875, 454.5961608886719))
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
                wait(1)
                Teleport(CFrame.new(29020.66015625, 14889.4267578125, -379.2682800292969))
            end
        end
  	end    
})

RC:AddButton({
	Name = "เดินทางไปหาเอนเชี่ยน1",
	Callback = function()
        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - PosTemplete.Position).Magnitude > 1000 then
            Templeteleport()
        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - PosTemplete.Position).Magnitude < 1000 then
            wait(0.5)
            Teleport(CFrame.new(28973.0879, 14889.9756, -120.298691))
        end
  	end    
})

RC:AddButton({
	Name = "เดินทางไปหานาฬิกา",
	Callback = function()
        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - PosTemplete.Position).Magnitude > 1000 then
            Templeteleport()
        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - PosTemplete.Position).Magnitude < 1000 then
            wait(0.5)
      	    Teleport(CFrame.new(29551.9941, 15069.002, -85.5179291))
        end
  	end    
})

local Section = RC:AddSection({
	Name = "Trials"
})

RC:AddToggle({
	Name = "Auto Trials",
	Default = false,
	Save = true,
	Flag = "Auto Trials",
	Callback = function(Value)
		_G.AutoTrials = Value
        CancelTween(_G.AutoTrials)
	end    
})

RC:AddToggle({
	Name = "Auto Train Race",
	Default = false,
	Save = true,
	Flag = "Auto Train Race",
	Callback = function(Value)
		_G.TrainToc = Value
        _G.BattocV4detraintoc = Value
        CancelTween(_G.BattocV4detraintoc)
        CancelTween(_G.TrainToc)
	end    
})

RC:AddToggle({
	Name = "Auto Kill Players After Trials",
	Default = false,
	Save = true,
	Flag = "Auto Kill Players After Trials",
	Callback = function(Value)
		_G.TrialV4 = Value
        CancelTween(_G.TrialV4)
	end    
})



RC:AddDropdown({
	Name = "Select Weapon Trials",
	Default = "Melee",
	Options = {"Melee", "Sword"},
	Callback = function(Value)
		_G.SelectWeaponTrial = Value
	end    
})

RC:AddToggle({
    Name = "Skill Z",
    Default = false,
    Flag = "Skill Z",
    Save = true,
    Callback = function(Value)
        _G.Z = Value
    end    
})

RC:AddToggle({
    Name = "Skill X",
    Default = false,
    Flag = "Skill X",
    Save = true,
    Callback = function(Value)
        _G.X = Value
    end    
})

RC:AddToggle({
    Name = "Skill C",
    Default = false,
    Flag = "Skill C",
    Save = true,
    Callback = function(Value)
        _G.C = Value
    end    
})


RC:AddToggle({
    Name = "Skill V",
    Default = false,
    Flag = "Skill V",
    Save = true,
    Callback = function(Value)
        _G.V = Value
    end    
})

local Section = ST:AddSection({
	Name = "Status Servers"
})

local Moon = ST:AddLabel("ฤeo co Moon")
local Elite = ST:AddLabel("Elite : โ Not Spawn")
local MobKatakuri = ST:AddLabel("Defeat : 0")
local Mirrage = ST:AddLabel("Mirrage : โ Not Spawn")
local KitsuneIsland = ST:AddLabel("Kitsune Island : โ Not Spawn")
local Frozen = ST:AddLabel("Frozen Dimension : โ Not Spawn")

local Section = ST:AddSection({
	Name = "Servers"
})

ST:AddTextbox({
    Name = "Job Id",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        _G.Job = Value 
    end	  
})

ST:AddButton({
    Name = "Join Job Id",
    Callback = function()
        _G.AutoRejoin = false
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId,_G.Job, game.Players.LocalPlayer)
      end    
})

ST:AddButton({
    Name = "Copy Job Id",
    Callback = function()
        setclipboard(tostring(game.JobId))
      end    
    })

ST:AddButton({
    Name = "Hop Sever",
    Callback = function()
        Hop()
      end    
})

ST:AddButton({
    Name = "Rejoin Sever",
    Callback = function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
      end    
})

local Section = SH:AddSection({
    Name = "Melee"
})

SH:AddButton({
    Name = "Black Leg",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
    end    
})

SH:AddButton({
    Name = "Electrol",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
    end    
})

SH:AddButton({
    Name = "FishMan Karate",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
    end    
})

SH:AddButton({
    Name = "Dragon Claw",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
    end    
})

SH:AddButton({
    Name = "SuperHuman",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
    end    
})


SH:AddButton({
    Name = "Death Step",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
    end    
})

SH:AddButton({
    Name = "Electric Claw",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
    end    
})

SH:AddButton({
    Name = "SharkMan Karate",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
    end    
})

SH:AddButton({
    Name = "Dragon Talon",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
    end    
})

SH:AddButton({
    Name = "GodHuman",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
    end    
})

local Section = SH:AddSection({
    Name = "Haki :"
})

SH:AddButton({
    Name = "Buy Buso Haki",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
    end    
})

SH:AddButton({
    Name = "Buy Geppo Haki",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
    end    
})

SH:AddButton({
    Name = "Buy Flash Step(Soru)",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
    end    
})

SH:AddButton({
    Name = "Buy Observation(Ken) Haki",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
    end    
})

local Section = SH:AddSection({
    Name = "Race :"
})

SH:AddButton({
    Name = "Buy Ghoul Race",
    Callback = function()
        local a = {
            [1] = "Ectoplasm",
            [2] = "BuyCheck",
            [3] = 4
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(a))
        local a = {
            [1] = "Ectoplasm",
            [2] = "Change",
            [3] = 4
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(a))
    end    
})

SH:AddButton({
    Name = "Buy Ghoul Race",
    Callback = function()
        local a = {
            [1] = "CyborgTrainer",
            [2] = "Buy"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(a))
    end    
}

})

local Section = S:AddSection({
	Name = "Bypass"
})

S:AddToggle({
	Name = "Bypass Teleport",
	Default = true,
	Callback = function(Value)
		BypassTP = Value
	end    
})

local Section = S:AddSection({
	Name = "Settings Use Skill Players Aura"
})

S:AddToggle({
    Name = "Skill Z",
    Default = false,
    Flag = "Skill Z",
    Save = true,
    Callback = function(Value)
        _G.Z2 = Value
    end    
})

S:AddToggle({
    Name = "Skill X",
    Default = false,
    Flag = "Skill X",
    Save = true,
    Callback = function(Value)
        _G.X2 = Value
    end    
})

S:AddToggle({
    Name = "Skill C",
    Default = false,
    Flag = "Skill C",
    Save = true,
    Callback = function(Value)
        _G.C2 = Value
    end    
})

S:AddToggle({
    Name = "Skill V",
    Default = false,
    Flag = "Skill V",
    Save = true,
    Callback = function(Value)
        _G.V2 = Value
    end    
})



                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                        StartCheckBone = true
                                        PosMonBone = v.HumanoidRootPart.CFrame
                                    until v.Humanoid.Health <= 0 or not v.Parent or not v:FindFirstChild("HumanoidRootPart") or not _G.AutoBone
                                end
                            end
                        end
                    end
                else
                    StartCheckBone = false
                    for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                        if v.Name == "Reborn Skeleton" then
                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        elseif v.Name == "Living Zombie" then
                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        elseif v.Name == "Demonic Soul" then
                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        elseif v.Name == "Posessed Mummy" then
                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end
            end)
        end
    end
end)


spawn(function()
    while wait() do
        if _G.AutoKatakuri then
            pcall(function()
                local spawnerData = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                local dataLength = string.len(spawnerData)
                if dataLength == 88 then
                    CountMob = tonumber(string.sub(spawnerData, 39, 41)) - 500
                elseif dataLength == 87 then
                    CountMob = tonumber(string.sub(spawnerData, 40, 41)) - 500
                elseif dataLength == 86 then
                    CountMob = tonumber(string.sub(spawnerData, 41, 41)) - 500
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if _G.AutoKatakuri then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Cake Prince" or v.Name == "Dough King" then
                            if v.Humanoid.Health > 0 and (v:FindFirstChild("HumanoidRootPart") or v.Parent or _G.AutoKatakuri) then
                                repeat
                                    wait()
                                    AutoHaki()
                                    EquipTool(SelectWP)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(0, -50, 0))
                                until v.Humanoid.Health <= 0 or not v.Parent or not v:FindFirstChild("HumanoidRootPart") or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
                        Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * CFrame.new(20,- 50 ,20))
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") then
                        Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Dough King").HumanoidRootPart.CFrame * CFrame.new(20,- 50 ,20))
                    else
                        if CountMob == 0 then
                        end
                        if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
                                        if v.Humanoid.Health > 0 and (v:FindFirstChild("HumanoidRootPart") or v.Parent or _G.AutoKatakuri) then
                                            repeat
                                                wait()
                                                AutoHaki()
                                                EquipTool(SelectWP)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                                Tween(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                                MagnetDought = true
                                                PosMonDoughtOpenDoor = v.HumanoidRootPart.CFrame
                                            until v.Humanoid.Health <= 0 or not v.Parent or not v:FindFirstChild("HumanoidRootPart") or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0
                                        end
                                    end
                                end
                            else
                                if BypassTP then
                                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - PosCake.Position).Magnitude > 2000 then
                                        BP(PosCake)
                                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - PosCake.Position).Magnitude < 2000 then
                                        Tween(PosCake)
                                    end
                                else
                                    Tween(PosCake)
                                end
                                MagnetDought = false
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter") then
                                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter").HumanoidRootPart.CFrame * CFrame.new(2,20,2)) 
                                else
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard") then
                                        Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard").HumanoidRootPart.CFrame * CFrame.new(2,20,2)) 
                                    else
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff") then
                                            Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                        else
                                            if game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker") then
                                                Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                            end
                                        end
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
                                Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * CFrame.new(20,40,20))
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") then
                                Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Dough King").HumanoidRootPart.CFrame * CFrame.new(20,40,20))
                            end
                        end
                    end
                end
            end)
        end
    end
end)

                    until not _G.OneClick or not v.Parent or v.Humanoid.Health <= 0
                end
            end
        end
    end
end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.OneClick then
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*RaidPos)
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*RaidPos)
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*RaidPos)
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*RaidPos)
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*RaidPos)
                    end
                end
            end
        end
    end)
end)

Type = 1
spawn(function()
while wait(.1) do
    if Type == 1 then
        RaidPos = CFrame.new(0,25,0)
    elseif Type == 2 then
        RaidPos = CFrame.new(0,25,-40)
    elseif Type == 3 then
        RaidPos = CFrame.new(40,25,0)
    elseif Type == 4 then
        RaidPos = CFrame.new(0,25,40)	
    elseif Type == 5 then
        RaidPos = CFrame.new(-40,25,0)
    elseif Type == 6 then
        RaidPos = CFrame.new(0,25,0)
    end
    end
end)

spawn(function()
    while wait(.1) do
        Type = 1
        wait(0.9)
        Type = 2
        wait(0.9)
        Type = 3
        wait(0.9)
        Type = 4
        wait(0.9)
        Type = 5
        wait(0.9)
    end
end)

                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy") then
                        repeat Tween(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                        wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
                        wait(1)
                        repeat Tween(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                        wait(2)
                    else
                        repeat Tween(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
                    repeat Tween(CFrame.new(-1850.49329, 13.1789551, 1750.89685)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10
                    wait(1)
                    repeat Tween(CFrame.new(-1858.87305, 19.3777466, 1712.01807)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10
                    wait(1)
                    repeat Tween(CFrame.new(-1803.94324, 16.5789185, 1750.89685)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10
                    wait(1)
                    repeat Tween(CFrame.new(-1858.55835, 16.8604317, 1724.79541)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10
                    wait(1)
                    repeat Tween(CFrame.new(-1869.54224, 15.987854, 1681.00659)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10
                    wait(1)
                    repeat Tween(CFrame.new(-1800.0979, 16.4978027, 1684.52368)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10
                    wait(1)
                    repeat Tween(CFrame.new(-1819.26343, 14.795166, 1717.90625)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10
                    wait(1)
                    repeat Tween(CFrame.new(-1813.51843, 14.8604736, 1724.79541)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10
                end
            end 
        end
    end)
end)

                    [1] = "LegendarySwordDealer",
                    [2] = "3"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end)
        end 
    end
end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoDarkDagger and Sea3 then
                if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == ("rip_indra True Form" or v.Name == "rip_indra") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                            repeat task.wait()
                                pcall(function()
                                    AutoHaki()
                                    EquipTool(SelectWP)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(2, 50, 2))
                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                end)
                            until _G.AutoDarkDagger == false or v.Humanoid.Health <= 0
                        end
                    end
                else
                if BypassTP then
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - AdminPos.Position).Magnitude > 1500 then
                BP(AdminPos)
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - AdminPos.Position).Magnitude < 1500 then
                Tween(AdminPos)
                end
            else
                Tween(AdminPos)
            end
                Tween(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781))
                end
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoTrials then
				if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
					for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							pcall(function()
								repeat wait(.1)
									v.Humanoid.Health = 0
									v.HumanoidRootPart.CanCollide = false
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								until not _G.AutoTrials or not v.Parent or v.Humanoid.Health <= 0
							end)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
					for i,v in pairs(game:GetService("Workspace").Map.SkyTrial.Model:GetDescendants()) do
						if v.Name ==  "snowisland_Cylinder.081" then
							Tween(v.CFrame* CFrame.new(0,0,0))
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
					for i,v in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
						if v.Name ==  "HumanoidRootPart" then
							Tween(v.CFrame* CFrame.new(2, 30, 2))
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Melee" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"

                    game:GetService("VirtualUser"):SetKeyUp("0x65")
                end
            until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not _G.KillV4
        end
    end
end)

spawn(function()
    while wait() do
        if _G.Zone6 then
            for i, v in pairs(workspace.Boats:GetChildren()) do
                if v:FindFirstChild("Owner") and v:FindFirstChild("Owner").Value == plr then
                    table.foreach(v:GetDescendants(), function(a, child)
                        if child:IsA("BasePart") or child:IsA("MeshPart") or child:IsA("Part") then
                            child.CanCollide = false
                        end
                    end)
                    v:FindFirstChild("Humanoid"):GetPropertyChangedSignal("Value"):Connect(function(g)
                        if g == 0 then
                        print("Vailon")
                        end
                    end)
                    v:FindFirstChild("VehicleSeat").CFrame = CFrame.new(-44842.3945, 10.7790766, 16911.3477)
                    wait(1.0)
                    Tween(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame * CFrame.new(0, 3, 0))
                end
            end
        end
    end
end)

spawn(function()
    while wait() do
        if _G.SpeedBoats then
            for i, v in pairs(workspace.Boats:GetChildren()) do
                if v:FindFirstChild("Owner") then
                    if v:FindFirstChild("Owner").Value == plr then
                        table.foreach(v:GetDescendants(), function(a, child)
                            if child:IsA("BasePart") or child:IsA("MeshPart") or child:IsA("Part") then
                            child.CanCollide = false
                            end
                        end)
                        v:FindFirstChild("Humanoid"):GetPropertyChangedSignal("Value"):Connect(function(g)
                            if g == 0 then
                            print("Vailon")
                        end
                    end)
                    repeat wait()
                        plr.Character:SetPrimaryPartCFrame(v:FindFirstChild("VehicleSeat").CFrame * CFrame.new(0, 3, 0))
                        until plr.Character:FindFirstChildOfClass("Humanoid").Sit == true
                        v:FindFirstChild("VehicleSeat").MaxSpeed = 350
                    end
                end
            end
        end
    end
end)

                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                end
                if _G.AutoMob and BringMobSelect then
                    if (v.Name == _G.SelectMob) and (v.HumanoidRootPart.Position - PosMobSelect.Position).Magnitude <= 350 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                        v.Humanoid:ChangeState(14)
                        v.HumanoidRootPart.CanCollide = false
                        v.Head.CanCollide = false
                        v.HumanoidRootPart.CFrame = PosMobSelect
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                    end
                end
                if _G.AutoRengoku and BringRengoku then
                    if (v.Name == "Snow Trooper" or v.Name == "Awakened Ice Admiral" or v.Name == "Winter Warrior") and (v.HumanoidRootPart.Position - PosRengoku.Position).Magnitude <= 350 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                        v.Humanoid:ChangeState(14)
                        v.HumanoidRootPart.CanCollide = false
                        v.Head.CanCollide = false
                        v.HumanoidRootPart.CFrame = PosRengoku
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                    end
                end
                if _G.TrainToc and BringQuaiNoToc then
                    if (v.Name == "Sweet Thief" or v.Name == "Candy Rebel" or v.Name == "Cocoa Warrior" or v.Name == "Chocolate Bar Battler") and (v.HumanoidRootPart.Position - PosQuaithichdjt.Position).Magnitude <= 350 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                        v.Humanoid:ChangeState(14)
                        v.HumanoidRootPart.CanCollide = false
                        v.Head.CanCollide = false
                        v.HumanoidRootPart.CFrame = PosQuaithichdjt
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                    end
                end

            end)
        end
    end
end)

spawn(function()
    while wait(2) do
        if _G.ESPHOA then
            UpdateFlowerChams() 
        end
        if _G.ESPFRUIT then
            UpdateDevilChams() 
        end
        if _G.ESPPlayers then
            UpdatePlayerChams()
        end
        if _G.DinhViQua then
            UpdateRealFruitChams()
        end
    end
end)

Light",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Love-Love",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rubber-Rubber",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Barrier-Barrier",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Magma-Magma",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Portal Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Door-Door",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Quake-Quake",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Human-Human: Buddha",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spider Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spider-Spider",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Phoenix",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rumble-Rumble",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pain Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Pain-Pain",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Gravity-Gravity",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dough-Dough",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Shadow-Shadow",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Venom-Venom",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Control-Control",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spirit Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Soul Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Soul-Soul",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dragon-Dragon",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit"))
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Leopard-Leopard",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit"))
                    end
                end
                end
            end)
        end
        wait(0.3)
    end
end)

"'..game.JobId..'", game.Players.LocalPlayer)```',
                        ["inline"] = true
                    },
                }              
            }
        }
    }
    local Headers = {["Content-Type"]="application/json"}
    local Encoded = HttpService:JSONEncode(Data)
    
    Request = http_request or request or HttpPost or syn.request
    local Final1 = {Url = Webhookdao , Body = Encoded, Method = "POST", Headers = Headers}
    
    Request(Final1)
end

if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or  game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
    WebhookElite = "https://discord.com/api/webhooks/1199318001678299146/3Auil4er_c5KKHNL2Y4Mf8hLTqy6ynkeGof6_fCB-FT6euWz6LeTwHOC-YFXSloN0w9a"
    local HttpService = game:GetService("HttpService")
    local Data = {
        ["embeds"]= {
            {            
                ["title"]= "Elite Find";
                ["color"]= tonumber(0x7269da);
                ["fields"]= {
                    {
                        ["name"] = "Players Count",
                        ["value"] = "```"..playerCount.."/12```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "Elite",
                        ["value"] = "**true**",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "Job Id",
                        ["value"] = "```"..game.JobId.."```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "Script Job Id",
                        ["value"]= '```game:GetService("TeleportService"):TeleportToPlaceInstance('..game.PlaceId..', "'..game.JobId..'", game.Players.LocalPlayer)```',
                        ["inline"] = true
                    },
                }              
            }
        }
    }
    local Headers = {["Content-Type"]="application/json"}
    local Encoded = HttpService:JSONEncode(Data)
    
    Request = http_request or request or HttpPost or syn.request
    local Final1 = {Url = WebhookElite , Body = Encoded, Method = "POST", Headers = Headers}
    
    Request(Final1)
end

if game:GetService("ReplicatedStorage"):FindFirstChild("Cursed Captain") then
    WebhookBoss = "https://discord.com/api/webhooks/1199318124319735878/VEseTtAbhD_DIRRF26VCxtD8aT7TtKuGPfDee4AzruQcuD_CCFuGemX9_ZT26KQDt0wb"
    local HttpService = game:GetService("HttpService")
    local Data = {
        ["embeds"]= {
            {            
                ["title"]= "Boss Find Sea 2";
                ["color"]= tonumber(0x7269da);
                ["fields"]= {
                    {
                        ["name"] = "Players Count",
                        ["value"] = "```"..playerCount.."/12```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "Sea",
                        ["value"] = "**2**",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "Job Id",
                        ["value"] = "```"..game.JobId.."```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "Script Job Id",
                        ["value"]= '```game:GetService("TeleportService"):TeleportToPlaceInstance('..game.PlaceId..', "'..game.JobId..'", game.Players.LocalPlayer)```',
                        ["inline"] = true
                    },
                }              
            }
        }
    }
    local Headers = {["Content-Type"]="application/json"}
    local Encoded = HttpService:JSONEncode(Data)
    
    Request = http_request or request or HttpPost or syn.request
    local Final1 = {Url = WebhookBoss , Body = Encoded, Method = "POST", Headers = Headers}
    
    Request(Final1)
end


if game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form") or game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra") or  game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") or game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") then
    WebhookBoss = "https://discord.com/api/webhooks/1199318124319735878/VEseTtAbhD_DIRRF26VCxtD8aT7TtKuGPfDee4AzruQcuD_CCFuGemX9_ZT26KQDt0wb"
    local HttpService = game:GetService("HttpService")
    local Data = {
        ["embeds"]= {
            {            
                ["title"]= "Boss Find Sea 3";
                ["color"]= tonumber(0x7269da);
                ["fields"]= {
                    {
                        ["name"] = "Players Count",
                        ["value"] = "```"..playerCount.."/12```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "Name Boss",
                        ["value"] = "".. CheckNameBossSea3() .. "",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "Job Id",
                        ["value"] = "```"..game.JobId.."```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "Script Job Id",
                        ["value"]= '```game:GetService("TeleportService"):TeleportToPlaceInstance('..game.PlaceId..', "'..game.JobId..'", game.Players.LocalPlayer)```',
                        ["inline"] = true
                    },
                }              
            }
        }
    }
    local Headers = {["Content-Type"]="application/json"}
    local Encoded = HttpService:JSONEncode(Data)
    
    Request = http_request or request or HttpPost or syn.request
    local Final1 = {Url = WebhookBoss , Body = Encoded, Method = "POST", Headers = Headers}
    
    Request(Final1)
end
