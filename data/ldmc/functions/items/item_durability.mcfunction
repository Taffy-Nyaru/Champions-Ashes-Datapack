scoreboard players add @s damage 1
execute store result storage generic:main crossbow_items_damage int 1 run scoreboard players get @s damage
item modify entity @s weapon.mainhand ldmc:crossbow_items_damage
execute if score @s damage matches 465.. run scoreboard players set @s damage -1