execute at @s run particle flame ~ ~ ~ 0.2 0.2 0.2 0 1 force
scoreboard players add #refine_time championsashes_Timer 1
execute if score #refine_time championsashes_Timer >= #final_refine_time championsashes_Timer as @s run function championsashes:blocks/steel_furnace/end_smelting