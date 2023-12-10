execute as @e[tag=start_entity] store result score @s euclidean_positionX run data get entity @s Pos[0]
execute as @e[tag=start_entity] store result score @s euclidean_positionY run data get entity @s Pos[1]
execute as @e[tag=start_entity] store result score @s euclidean_positionZ run data get entity @s Pos[2]
execute as @e[tag=end_entity] store result score @s euclidean_positionX run data get entity @s Pos[0]
execute as @e[tag=end_entity] store result score @s euclidean_positionY run data get entity @s Pos[1]
execute as @e[tag=end_entity] store result score @s euclidean_positionZ run data get entity @s Pos[2]

#Euclidean Distance with three decimal values precision
execute store result score #euclid_distance_subtractX ldmcValue run scoreboard players operation @e[tag=end_entity] euclidean_positionX -= @e[tag=start_entity] euclidean_positionX
execute store result score #euclid_distance_subtractY ldmcValue run scoreboard players operation @e[tag=end_entity] euclidean_positionY -= @e[tag=start_entity] euclidean_positionY
execute store result score #euclid_distance_subtractZ ldmcValue run scoreboard players operation @e[tag=end_entity] euclidean_positionZ -= @e[tag=start_entity] euclidean_positionZ

execute store result score #euclid_distance_squareX ldmcValue run scoreboard players operation #euclid_distance_subtractX ldmcValue *= #euclid_distance_subtractX ldmcValue
execute store result score #euclid_distance_squareY ldmcValue run scoreboard players operation #euclid_distance_subtractY ldmcValue *= #euclid_distance_subtractY ldmcValue
execute store result score #euclid_distance_squareZ ldmcValue run scoreboard players operation #euclid_distance_subtractZ ldmcValue *= #euclid_distance_subtractZ ldmcValue

execute store result score #euclid_distance_sum1 ldmcValue run scoreboard players operation #euclid_distance_squareX ldmcValue += #euclid_distance_squareY ldmcValue
execute store result score #euclid_distance_sum2 ldmcValue run scoreboard players operation #euclid_distance_sum1 ldmcValue += #euclid_distance_squareZ ldmcValue

execute store result score inp int run scoreboard players get #euclid_distance_sum2 ldmcValue
execute store result storage math:io #euclid_distance_input_int float 1000000 run scoreboard players get inp int
execute store result score inp int run data get storage math:io #euclid_distance_input_int
function math:_sqrt
execute store result storage math:io euclidean_distance float 0.001 run scoreboard players get res int
execute store result score @s euclidean_distance run scoreboard players get res int