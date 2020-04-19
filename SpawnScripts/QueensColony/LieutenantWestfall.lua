--[[
    Script Name    : SpawnScripts/QueensColony/LieutenantWestfall.lua
    Script Author  : premierio015
    Script Date    : 2015.07.30
    Script Purpose : Lieutenant Westfall dialog
    Notes          : Need to create Spawn Restrict Functions, so Players wont spawn 500 moraks per minute while hail him.
-

function spawn(NPC)
         
end

function respawn(NPC)
         spawn(NPC)
end

function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  PlayFlavor(NPC, "", "What's that there!  To arms, the Morak are coming!", "point", 1689589577, 4560189, Spawn)
--[[  moraks(NPC, Spawn) --[[
end

--[[
function moraks (NPC, Spawn)
local zone = GetZone(Spawn)
local morak_spawn = SpawnByLocationID(zone, 428874)
local morak_spawn = SpawnByLocationID(zone, 428880)
local morak_spawn = SpawnByLocationID(zone, 428890)
end
--[[             ----- Spawns 3 moraks from a far to run and attack Leiutenant. Need a function to restrict their spawn.


function aggro(NPC, Spawn)
local choice = math.random(1,3)
if choice == 1 then
PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_a203c9ec.mp3", "Prepare to face your doom, meddler.", "", 1496819882, 365167432)
elseif choice == 2 then
PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_a30c4f9d.mp3", "To arms!", "", 1238020980, 748146443)
else
PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_victory_gm_4553e1e0.mp3", "Flee now or meet this one's fate.", "", 3032162747, 1359206304)
end

end

