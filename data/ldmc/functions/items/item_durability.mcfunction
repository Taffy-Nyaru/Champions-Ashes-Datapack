scoreboard players add @s damage 1
#Aquamarine Dagger
execute if score @s[tag=aquamarine_dagger,gamemode=survival] usedCrossbow matches 1.. run scoreboard players add @s damage 49

execute store result storage generic:main crossbow_items_damage int 1 run scoreboard players get @s damage
item modify entity @s weapon.mainhand ldmc:crossbow_items_damage
execute if score @s damage matches 465.. run scoreboard players set @s damage -1