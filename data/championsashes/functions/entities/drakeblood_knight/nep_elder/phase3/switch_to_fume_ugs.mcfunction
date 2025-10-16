loot replace entity @s weapon.mainhand loot championsashes:items/fume_ultra_greatsword
tag @s remove nep_switched_to_dragonslayer

execute unless entity @e[tag=aj.nep_fume_ugs_skills.root,type=item_display,distance=..50] facing ~ ~ ~ positioned ~ ~2 ~ run function animated_java:nep_fume_ugs_skills/summon
execute if score change_weapon_inventory math_output matches -1024..0 as @e[tag=aj.nep_fume_ugs_skills.root,type=item_display,distance=..50] run function animated_java:nep_fume_ugs_skills/animations/nep_spinning_gravity_thrust/play
execute if score change_weapon_inventory math_output matches -0..1024 as @e[tag=aj.nep_fume_ugs_skills.root,type=item_display,distance=..50] run function animated_java:nep_fume_ugs_skills/animations/nep_supernova_throw/play
ride @s mount @e[tag=nep_ride,type=item_display,limit=1,sort=nearest]

scoreboard players set @s nep_phase3_switch_to_fume_ugs 0