#Get owner
function championsashes:projectiles/snowball_detect/snowball_thrower
execute as 942429eb-9233-4105-a36e-8fec8f4ce862 on origin unless entity @s[tag=killer] run tag @s add killer

execute at @e[limit=1,sort=nearest,distance=..4,type=!#championsashes:special_entities,tag=!killer] run function championsashes:items/cheat_engine/kill
execute as @e[limit=1,sort=nearest,distance=..4,type=!#championsashes:special_entities,tag=!killer] unless score @s ca.item.id_selecter_mainhand matches 1011 run kill @s
execute unless block ~1 ~ ~ #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~ ~1 ~ #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~ ~ ~1 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~-1 ~ ~ #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~ ~-1 ~ #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~ ~ ~-1 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~1 ~1 ~ #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~1 ~1 ~1 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~-1 ~-1 ~-1 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~-1 ~-1 ~ #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~-1 ~ ~-1 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~ ~-1 ~-1 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~ ~1 ~1 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~1 ~-1 ~-1 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~-1 ~1 ~-1 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~-1 ~-1 ~1 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~1 ~1 ~-1 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~-1 ~1 ~1 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~-1 ~ ~1 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~ ~1 ~-1 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~ ~-1 ~1 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~-1 ~1 ~ #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~1 ~ ~-1 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~1 ~-1 ~ #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~1 ~-1 ~1 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~1 ~ ~1 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill