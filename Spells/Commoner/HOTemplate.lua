--[[
    Script Name    : Spells/Commoner/HOTemplate.lua
    Script Author  : neatz09
    Script Date    : 2020.03.05 05:03:12
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, MinVal, MaxVal)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), (GetLevel(Caster) * 1.08) * MinVal, (GetLevel(Caster) * 1.08) * MaxVal)
    AddSkillBonus(Target, GetSkillIDByName("Ranged"), (GetLevel(Caster) * 1.08) * MinVal, (GetLevel(Caster) * 1.08) * MaxVal)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), (GetLevel(Caster) * 1.08) * MinVal, (GetLevel(Caster) * 1.08) * MaxVal)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), (GetLevel(Caster) * 1.08) * MinVal, (GetLevel(Caster) * 1.08) * MaxVal)

end


function remove(Caster, Target)
    RemoveSkillBonus(Target)

end
