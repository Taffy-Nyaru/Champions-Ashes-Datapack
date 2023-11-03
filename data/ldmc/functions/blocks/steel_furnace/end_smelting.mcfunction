tag @s remove steel_furnace_lit
tag @s add end_smelting
data modify entity @s item.tag.CustomModelData set value 1440002
scoreboard players set #refine_time ldmc_Timer 0
scoreboard players set #final_refine_time ldmc_Timer 100