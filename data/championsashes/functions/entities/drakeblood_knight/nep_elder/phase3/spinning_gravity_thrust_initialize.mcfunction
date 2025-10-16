execute if score change_weapon_inventory math_output matches -256..0 at @e[type=marker,tag=summon_shrine,limit=1,sort=nearest] run tp @s ~ ~2 ~15
execute if score change_weapon_inventory math_output matches -512..-257 at @e[type=marker,tag=summon_shrine,limit=1,sort=nearest] run tp @s ~ ~2 ~-15
execute if score change_weapon_inventory math_output matches -768..-513 at @e[type=marker,tag=summon_shrine,limit=1,sort=nearest] run tp @s ~15 ~2 ~
execute if score change_weapon_inventory math_output matches -1024..-769 at @e[type=marker,tag=summon_shrine,limit=1,sort=nearest] run tp @s ~-15 ~2 ~
function animated_java:nep_fume_ugs_skills/animations/nep_spinning_gravity_thrust/play