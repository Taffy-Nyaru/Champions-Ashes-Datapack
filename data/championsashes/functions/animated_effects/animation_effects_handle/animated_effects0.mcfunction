#-------------Skills

#Ringed Knight Paired Greatswords Skill
execute if entity @s[tag=rkgugs_skill_user] at @e[distance=..10,type=marker,tag=aj.rkgugs_skill.locator,tag=!player_camera,tag=!rkgugs_l1_locator,tag=!player_camera] run function championsashes:animated_effects/rkgugs_skill
execute if entity @s[tag=rkgugs_skill_user] at @e[distance=..10,type=marker,tag=rkss_skill_locator,tag=!player_camera] run particle minecraft:flame ~ ~ ~ 0.05 0.05 0.05 0.2 1
#RKGUGS L1
execute if entity @s[tag=rkgugs_l1_user] at @e[distance=..10,type=marker,tag=rkgugs_l1_locator,tag=!player_camera] run function championsashes:animated_effects/rkgugs_l1
#Spinning Gravity Thrust
execute if entity @s[tag=spinning_gravity_thrust] at @e[distance=..10,type=marker,tag=aj.gravity_thrust.locator,tag=!player_camera] run function championsashes:animated_effects/spinning_gravity_thrust
#Spinning Slash
execute if entity @s[tag=spinning_slash_user] at @e[distance=..10,type=marker,tag=aj.dimension_slash.locator,tag=!player_camera,tag=!player_camera_origin.dimension_slash_locator,tag=!player_camera] run function championsashes:animated_effects/spinning_slash
#Moonveil Dimension Slash
execute if entity @s[tag=dimension_slasher] at @e[distance=..10,type=marker,tag=aj.dimension_slash.locator,tag=!player_camera_origin.dimension_slash_locator,tag=!player_camera] run function championsashes:animated_effects/dimension_slash
#Blade of Peril
execute if entity @s[tag=blade_of_peril_user] at @e[distance=..10,type=marker,tag=aj.blade_of_peril.locator,tag=!player_camera] run function championsashes:animated_effects/blade_of_peril
