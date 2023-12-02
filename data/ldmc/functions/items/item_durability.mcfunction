scoreboard players add @s damage 1
#Aquamarine Dagger
execute if score @s[tag=aquamarine_dagger,gamemode=survival] usedCrossbow matches 1.. run scoreboard players add @s damage 49
#Antspur Rapier
execute if score @s[tag=bloodhound_step,gamemode=survival] usedCrossbow matches 1.. run scoreboard players add @s damage 14
#Gundyr Halberd
execute if entity @s[tag=gundyr_halberd,gamemode=survival] run scoreboard players add @s damage 24
#Black Blade
execute if entity @s[tag=shot,gamemode=survival] run scoreboard players add @s damage 24

execute store result storage generic:main crossbow_items_damage int 1 run scoreboard players get @s damage
item modify entity @s weapon.mainhand ldmc:crossbow_items_damage
execute if score @s damage matches 465.. run scoreboard players set @s damage -1