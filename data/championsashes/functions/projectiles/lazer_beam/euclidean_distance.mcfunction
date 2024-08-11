execute as @e[tag=start_entity] store result score @s euclidean_positionX run data get entity @s Pos[0]
execute as @e[tag=start_entity] store result score @s euclidean_positionY run data get entity @s Pos[1]
execute as @e[tag=start_entity] store result score @s euclidean_positionZ run data get entity @s Pos[2]
execute as @e[tag=end_entity] store result score @s euclidean_positionX run data get entity @s Pos[0]
execute as @e[tag=end_entity] store result score @s euclidean_positionY run data get entity @s Pos[1]
execute as @e[tag=end_entity] store result score @s euclidean_positionZ run data get entity @s Pos[2]

#Euclidean Distance with three decimal values precision
execute store result score #euclid_distance_subtractX championsashesValue run scoreboard players operation @e[tag=end_entity] euclidean_positionX -= @e[tag=start_entity] euclidean_positionX
execute store result score #euclid_distance_subtractY championsashesValue run scoreboard players operation @e[tag=end_entity] euclidean_positionY -= @e[tag=start_entity] euclidean_positionY
execute store result score #euclid_distance_subtractZ championsashesValue run scoreboard players operation @e[tag=end_entity] euclidean_positionZ -= @e[tag=start_entity] euclidean_positionZ

execute store result score #euclid_distance_squareX championsashesValue run scoreboard players operation #euclid_distance_subtractX championsashesValue *= #euclid_distance_subtractX championsashesValue
execute store result score #euclid_distance_squareY championsashesValue run scoreboard players operation #euclid_distance_subtractY championsashesValue *= #euclid_distance_subtractY championsashesValue
execute store result score #euclid_distance_squareZ championsashesValue run scoreboard players operation #euclid_distance_subtractZ championsashesValue *= #euclid_distance_subtractZ championsashesValue

execute store result score #euclid_distance_sum1 championsashesValue run scoreboard players operation #euclid_distance_squareX championsashesValue += #euclid_distance_squareY championsashesValue
execute store result score #euclid_distance_sum2 championsashesValue run scoreboard players operation #euclid_distance_sum1 championsashesValue += #euclid_distance_squareZ championsashesValue

execute store result score inp int run scoreboard players get #euclid_distance_sum2 championsashesValue
execute store result storage math:io #euclid_distance_input_int float 1000000 run scoreboard players get inp int
execute store result score inp int run data get storage math:io #euclid_distance_input_int
function math:_sqrt
execute store result storage math:io euclidean_distance float 0.001 run scoreboard players get res int
execute store result storage math:io lazer_euclidean_distance float 0.0006 run scoreboard players get res int
execute store result score @e[tag=lazer_beam,limit=1,sort=nearest] lazer_euclidean_distance run data get storage math:io lazer_euclidean_distance