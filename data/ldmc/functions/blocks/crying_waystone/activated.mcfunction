scoreboard players add #activate ldmc_Timer 1
execute if score #activate ldmc_Timer matches 1.. run data modify entity @s item.tag.CustomModelData set value 1440012
execute if score #activate ldmc_Timer matches 40.. run data modify entity @s item.tag.CustomModelData set value 1440011
execute if score #activate ldmc_Timer matches 40.. run tag @s remove activated
execute if score #activate ldmc_Timer matches 40.. run scoreboard players set #activate ldmc_Timer 0