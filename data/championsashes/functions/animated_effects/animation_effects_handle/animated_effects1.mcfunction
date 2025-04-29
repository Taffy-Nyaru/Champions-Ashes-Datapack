#-------------Skills

#Aquamarine Dagger light attack
execute if entity @s[tag=aquamarine_blade] at @e[distance=..10,type=marker,tag=aj.crystal_blade.locator,tag=!player_camera,tag=!crystal_blade_heavy_locator,tag=!player_camera] run function championsashes:animated_effects/crystal_blade
#Aquamarine Dagger heavy attack
execute if entity @s[tag=aquamarine_blade] at @e[distance=..10,type=marker,tag=crystal_blade_heavy_locator,tag=!player_camera] run function championsashes:animated_effects/crystal_blade_heavy
#Sword Dance
execute if entity @s[tag=sword_dancer] at @e[distance=..10,type=marker,tag=aj.sword_dance.locator,tag=!player_camera,tag=!player_camera] run function championsashes:animated_effects/sword_dance
#Steel Caller
execute at @s[tag=steel_caller_user] run function championsashes:items/ledo_great_hammer/steel_caller_user
#Flame of Lorian
execute if entity @s[tag=lorian_flame] at @e[distance=..10,type=marker,tag=aj.flame_of_lorian.locator,tag=!player_camera] run function championsashes:animated_effects/flame_of_lorian
#Black Knight Greataxe
execute if entity @s[tag=upwardcut] at @e[distance=..10,type=marker,tag=aj.flame_of_lorian.locator,tag=!player_camera] run function championsashes:animated_effects/stamp_upward_cut
#Black Blade
execute if entity @s[tag=destined_death_atk] at @e[distance=..10,type=marker,tag=aj.destined_death.locator,tag=!player_camera] run function championsashes:animated_effects/destined_death
#Serpent Hunter
execute if entity @s[tag=shunter_mafia] at @e[distance=..10,type=marker,tag=aj.chainsaw.locator,tag=!player_camera] run function championsashes:animated_effects/chainsaw
execute if entity @s[tag=shunter_mafia] at @e[distance=..10,limit=1,type=marker,tag=aj.chainsaw.locator.shunter4,tag=!player_camera] run particle flame ~ ~1 ~ 0.25 0.25 0.25 0.1 1 force
execute if entity @s[tag=shunter_mafia] at @e[distance=..10,limit=1,type=marker,tag=aj.chainsaw.locator.shunter5,tag=!player_camera] run particle flame ~ ~1 ~ 0.25 0.25 0.25 0.1 1 force
