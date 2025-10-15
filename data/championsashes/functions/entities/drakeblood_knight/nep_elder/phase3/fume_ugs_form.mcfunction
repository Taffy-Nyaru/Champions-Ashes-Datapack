scoreboard players add @s nep_phase3_switch_to_dragonslayer 1
execute as @e[type=item_display,tag=aj.nep_fume_ugs_skills.root,tag=!nep_fume_ugs_skill_stop_locating] at @s facing entity @e[tag=nep_foe,limit=1,sort=nearest,type=!#championsashes:special_entities] eyes run tp @s ^ ^ ^ ~ ~

execute if entity @e[tag=nep_foe,type=!#championsashes:special_entities,distance=..60] run scoreboard players add @s nep_phase3_fume_ugs_use_space_based_laser 1
execute if score @s nep_phase3_fume_ugs_use_space_based_laser matches 200.. run function championsashes:entities/drakeblood_knight/nep_elder/phase3/nep_space_based_laser
execute as @e[tag=nep_space_based_laser,type=item_display,limit=1,sort=nearest] at @s facing ~ ~ ~ at @p[tag=nep_space_based_laser_locked_on] run tp @s ~ ~2 ~
execute as @e[tag=nep_space_based_laser,type=item_display,limit=1,sort=nearest] at @s facing ~ ~ ~ run ride @e[limit=1,sort=nearest,type=!player,tag=nep_space_based_laser_locked_on] mount @s