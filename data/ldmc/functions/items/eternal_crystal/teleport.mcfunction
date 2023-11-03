execute if score #crystal_tp_tick ldmc_Timer matches 15 at @s run particle minecraft:cloud ~ ~ ~ 0 0 0 0.1 15
execute if score #crystal_tp_tick ldmc_Timer matches 15 at @s run tp @s ^ ^ ^5 ~ ~
execute if score #crystal_tp_tick ldmc_Timer matches 15 as @s at @s unless block ~ ~ ~ air unless block ~ ~ ~ water unless block ~ ~ ~ lava run function ldmc:entities/search_air