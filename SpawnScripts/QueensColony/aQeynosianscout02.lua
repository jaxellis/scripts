--[[
    Script Name    : SpawnScripts/QueensColony/aQeynosianscout02.lua
    Script Author  : Premierio015
    Script Date    : 2020.04.18 05:04:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
 
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1,2)
    if choice == 1 then
    PlayFlavor(NPC, "", "Keep up this noise and the Morak will have us all for dinner!", "", 0, 0, Spawn)
    else
    PlayFlavor(NPC, "", "The smell of death lingers near.", "", 0, 0, Spawn)
    end
end

function respawn(NPC)
         spawn(NPC)
end

function aggro(NPC)
PlayFlavor(NPC, "voiceover/english/woodelf_base_1/ft/woodelf/woodelf_base_1_1_victory_gm_1d908867.mp3", "The soil thanks you for your donation.", "", 2150629553, 2562009754)
end


