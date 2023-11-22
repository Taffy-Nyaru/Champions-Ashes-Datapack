execute at @e[limit=1,sort=nearest,distance=..3,type=!snowball,type=!#ldmc:special_entities,tag=!killer] run function ldmc:items/cheat_engine/kill
execute as @e[limit=1,sort=nearest,distance=..3,type=!snowball,type=!#ldmc:special_entities,tag=!killer] run kill @s
execute unless block ~0.5 ~ ~ air unless block ~0.5 ~ ~ water unless block ~0.5 ~ ~ lava run function ldmc:items/cheat_engine/kill
execute unless block ~ ~0.5 ~ air unless block ~ ~0.5 ~ water unless block ~ ~0.5 ~ lava run function ldmc:items/cheat_engine/kill
execute unless block ~ ~ ~0.5 air unless block ~ ~ ~0.5 water unless block ~ ~ ~0.5 lava run function ldmc:items/cheat_engine/kill
execute unless block ~-0.5 ~ ~ air unless block ~-0.5 ~ ~ water unless block ~-0.5 ~ ~ lava run function ldmc:items/cheat_engine/kill
execute unless block ~ ~-0.5 ~ air unless block ~ ~-0.5 ~ water unless block ~ ~-0.5 ~ lava run function ldmc:items/cheat_engine/kill
execute unless block ~ ~ ~-0.5 air unless block ~ ~ ~-0.5 water unless block ~ ~ ~-0.5 lava run function ldmc:items/cheat_engine/kill