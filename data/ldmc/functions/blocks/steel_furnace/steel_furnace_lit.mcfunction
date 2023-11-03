execute at @s run particle flame ~ ~ ~ 0.2 0.2 0.2 0 1 force
scoreboard players add #refine_time ldmc_Timer 1
execute if score #refine_time ldmc_Timer >= #final_refine_time ldmc_Timer as @s run function ldmc:blocks/steel_furnace/end_smelting