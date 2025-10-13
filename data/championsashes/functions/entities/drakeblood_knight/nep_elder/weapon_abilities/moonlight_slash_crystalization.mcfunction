particle minecraft:block ice ~ ~ ~ 1 1.5 1 1 500
scoreboard players set @s custom_ca.entity.stiff_time 200
tag @s add stiff

execute if entity @e[distance=..2.5,type=!#championsashes:special_entities,tag=nep_foe,limit=1,sort=nearest] unless entity @e[tag=aj.ice_crystal.root,type=item_display,distance=..2] facing ~ ~ ~ run function animated_java:ice_crystal/summon
execute if entity @e[distance=..2.5,type=!#championsashes:special_entities,tag=nep_foe,limit=1,sort=nearest] as @e[tag=!nep_ice_crystal_played_anim,tag=aj.ice_crystal.root,type=item_display,distance=..2,limit=1,sort=nearest] run function animated_java:ice_crystal/animations/ice_crystallization/play

scoreboard players set @s nep_moonlight_slash_hit_count 0