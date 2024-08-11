scoreboard players add #activate championsashes_Timer 1
execute if score #activate championsashes_Timer matches 1.. run data modify entity @s item.tag.CustomModelData set value 1440012
execute if score #activate championsashes_Timer matches 40.. run data modify entity @s item.tag.CustomModelData set value 1440011
execute if score #activate championsashes_Timer matches 40.. run tag @s remove activated
execute if score #activate championsashes_Timer matches 40.. run scoreboard players set #activate championsashes_Timer 0