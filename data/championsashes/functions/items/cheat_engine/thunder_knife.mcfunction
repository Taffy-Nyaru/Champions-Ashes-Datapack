#Get owner
function championsashes:projectiles/snowball_detect/snowball_thrower
execute as 942429eb-9233-4105-a36e-8fec8f4ce862 on origin unless entity @s[tag=killer] run tag @s add killer

execute at @e[limit=1,sort=nearest,distance=..3,type=!snowball,type=!#championsashes:special_entities,tag=!killer] run function championsashes:items/cheat_engine/kill
execute as @e[limit=1,sort=nearest,distance=..3,type=!snowball,type=!#championsashes:special_entities,tag=!killer,predicate=!championsashes:using_item/thunder_knife,] run kill @s
execute unless block ~0.5 ~ ~ #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~ ~0.5 ~ #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~ ~ ~0.5 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~-0.5 ~ ~ #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~ ~-0.5 ~ #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~ ~ ~-0.5 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~0.5 ~0.5 ~ #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~0.5 ~0.5 ~0.5 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~-0.5 ~-0.5 ~-0.5 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~-0.5 ~-0.5 ~ #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~-0.5 ~ ~-0.5 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~ ~-0.5 ~-0.5 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~ ~0.5 ~0.5 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~0.5 ~-0.5 ~-0.5 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~-0.5 ~0.5 ~-0.5 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~-0.5 ~-0.5 ~0.5 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~0.5 ~0.5 ~-0.5 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~-0.5 ~0.5 ~0.5 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~-0.5 ~ ~0.5 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~ ~0.5 ~-0.5 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~ ~-0.5 ~0.5 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~-0.5 ~0.5 ~ #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~0.5 ~ ~-0.5 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~0.5 ~-0.5 ~ #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~0.5 ~-0.5 ~0.5 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill
execute unless block ~0.5 ~ ~0.5 #championsashes:transparent_blocks run function championsashes:items/cheat_engine/kill