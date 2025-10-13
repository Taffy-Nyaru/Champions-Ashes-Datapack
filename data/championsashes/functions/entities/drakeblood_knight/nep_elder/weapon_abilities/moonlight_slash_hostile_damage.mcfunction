execute as @s run damage @s 10 championsashes:frostbite by @e[tag=nep_elder,limit=1,sort=nearest,type=wither_skeleton]
scoreboard players add @s frostbite_Timer 600

#Crystalization
execute at @s run particle minecraft:block ice ~ ~ ~ 1 1.5 1 1 500
scoreboard players set @s custom_ca.entity.stiff_time 200
tag @s add stiff
execute at @s if score @s frostbite_Timer matches 1100.. if entity @e[distance=..2.5,type=!#championsashes:special_entities,tag=nep_foe,limit=1,sort=nearest] unless entity @e[tag=aj.ice_crystal.root,type=item_display,distance=..2] facing ~ ~ ~ run function animated_java:ice_crystal/summon
execute at @s if score @s frostbite_Timer matches 1100.. if entity @e[distance=..2.5,type=!#championsashes:special_entities,tag=nep_foe,limit=1,sort=nearest] as @e[tag=!nep_ice_crystal_played_anim,tag=aj.ice_crystal.root,type=item_display,distance=..2,limit=1,sort=nearest] run function animated_java:ice_crystal/animations/ice_crystallization/play

#Ice Storm
execute at @s if score @s frostbite_Timer matches 4200.. facing ~ ~ ~ run function animated_java:zamor_ice_storm/summon
execute if score @s frostbite_Timer matches 4200.. as @e[tag=!nep_ice_storm_played_anim,tag=aj.zamor_ice_storm.root,type=item_display,distance=..5,limit=1,sort=nearest] run function animated_java:zamor_ice_storm/animations/zamor_ice_storm/play

particle block diamond_block ~ ~1 ~ 0.5 0.5 0.5 0 250
particle snowflake ~ ~1 ~ 0.5 0.5 0.5 0 100
particle soul_fire_flame ~ ~1 ~ 1 1 1 0 100