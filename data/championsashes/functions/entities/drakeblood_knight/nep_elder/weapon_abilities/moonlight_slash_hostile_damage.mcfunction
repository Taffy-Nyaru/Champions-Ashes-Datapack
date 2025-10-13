damage @s 10 championsashes:frostbite by @e[tag=nep_elder,limit=1,sort=nearest,type=wither_skeleton]
scoreboard players add @s frostbite_Timer 600
scoreboard players add @s nep_moonlight_slash_hit_count 1
#Crystalization
execute if score @s nep_moonlight_slash_hit_count matches 3.. run function championsashes:entities/drakeblood_knight/nep_elder/weapon_abilities/moonlight_slash_crystalization

#Ice Storm
execute at @s if score @s frostbite_Timer matches 4200.. facing ~ ~ ~ run function animated_java:zamor_ice_storm/summon
execute if score @s frostbite_Timer matches 4200.. as @e[tag=!nep_ice_storm_played_anim,tag=aj.zamor_ice_storm.root,type=item_display,distance=..5,limit=1,sort=nearest] run function animated_java:zamor_ice_storm/animations/zamor_ice_storm/play

particle block diamond_block ~ ~1 ~ 0.5 0.5 0.5 0 250
particle snowflake ~ ~1 ~ 0.5 0.5 0.5 0 100
particle soul_fire_flame ~ ~1 ~ 1 1 1 0 100