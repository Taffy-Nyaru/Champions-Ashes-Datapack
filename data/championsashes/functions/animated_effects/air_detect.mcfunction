execute unless block ~ ~ ~ air unless block ~ ~ ~ water unless block ~ ~ ~ lava run tp @e[tag=air_detecter0,limit=1,sort=nearest] ~3 ~ ~
execute unless block ~ ~ ~ air unless block ~ ~ ~ water unless block ~ ~ ~ lava run tp @e[tag=air_detecter1,limit=1,sort=nearest] ~ ~3 ~
execute unless block ~ ~ ~ air unless block ~ ~ ~ water unless block ~ ~ ~ lava run tp @e[tag=air_detecter2,limit=1,sort=nearest] ~ ~ ~3
execute unless block ~ ~ ~ air unless block ~ ~ ~ water unless block ~ ~ ~ lava run tp @e[tag=air_detecter3,limit=1,sort=nearest] ~-3 ~ ~
execute unless block ~ ~ ~ air unless block ~ ~ ~ water unless block ~ ~ ~ lava run tp @e[tag=air_detecter4,limit=1,sort=nearest] ~ ~-3 ~
execute unless block ~ ~ ~ air unless block ~ ~ ~ water unless block ~ ~ ~ lava run tp @e[tag=air_detecter5,limit=1,sort=nearest] ~ ~ ~-3
execute at @e[tag=air_detecter0] if block ~ ~1 ~ air if block ~ ~2 ~ air if block ~ ~ ~ air if block ~ ~-1 ~ air run function championsashes:animated_effects/air_detected
execute at @e[tag=air_detecter1] if block ~ ~1 ~ air if block ~ ~2 ~ air if block ~ ~ ~ air if block ~ ~-1 ~ air run function championsashes:animated_effects/air_detected
execute at @e[tag=air_detecter2] if block ~ ~1 ~ air if block ~ ~2 ~ air if block ~ ~ ~ air if block ~ ~-1 ~ air run function championsashes:animated_effects/air_detected
execute at @e[tag=air_detecter3] if block ~ ~1 ~ air if block ~ ~2 ~ air if block ~ ~ ~ air if block ~ ~-1 ~ air run function championsashes:animated_effects/air_detected
execute at @e[tag=air_detecter4] if block ~ ~1 ~ air if block ~ ~2 ~ air if block ~ ~ ~ air if block ~ ~-1 ~ air run function championsashes:animated_effects/air_detected
execute at @e[tag=air_detecter5] if block ~ ~1 ~ air if block ~ ~2 ~ air if block ~ ~ ~ air if block ~ ~-1 ~ air run function championsashes:animated_effects/air_detected