#Entities
execute if entity @e[type=warden,distance=..25] run function championsashes:entities/warden/powers
execute if entity @e[type=wither_skeleton,distance=..25,tag=night_cavalry] run function championsashes:entities/night_cavalry/powers

execute if entity @e[type=item,limit=1,predicate=championsashes:misc/cheat_engine] run function championsashes:entities/drakeblood_knight/nep_elder/killed_nep
execute if entity @e[type=item,limit=1,predicate=championsashes:misc/cheat_engine] run kill @e[type=item,predicate=championsashes:misc/cheat_engine]

#Animation air detect
execute if entity @s[tag=air_detect] run function championsashes:animated_effects/air_detect

#Special Advancements
execute as @s[advancements={championsashes:parry/brass_parry=true}] run advancement revoke @s only championsashes:parry/brass_parry
scoreboard players set #10ticks ca.tick10_schedule 0