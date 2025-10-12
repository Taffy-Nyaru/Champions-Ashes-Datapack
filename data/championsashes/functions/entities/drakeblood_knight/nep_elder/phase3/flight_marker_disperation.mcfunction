tag @s add nep_summoned_flight_marker
tag @s add flight_marker_disperation

data modify entity @s Invulnerable set value 1b
data modify entity @s NoAI set value 1b
function championsashes:entities/drakeblood_knight/nep_elder/phase3/random

execute store result score flight_marker_Posx math_output run data get entity @s[tag=flight_marker_disperation] Pos[0]
execute store result score flight_marker_Posy math_output run data get entity @s[tag=flight_marker_disperation] Pos[1]
execute store result score flight_marker_Posz math_output run data get entity @s[tag=flight_marker_disperation] Pos[2]

#(200*original pos+R)*0.005
scoreboard players operation flight_marker_Posx math_output *= C_200 math_const
scoreboard players operation flight_marker_Posy math_output *= C_200 math_const
scoreboard players operation flight_marker_Posz math_output *= C_200 math_const
scoreboard players operation flight_marker_Posx math_output += rand_output_x math_output
scoreboard players operation flight_marker_Posy math_output += rand_output_y math_output
scoreboard players operation flight_marker_Posz math_output += rand_output_z math_output

execute store result entity @s[tag=flight_marker_disperation] Pos[0] double 0.005 run scoreboard players get flight_marker_Posx math_output
execute store result entity @s[tag=flight_marker_disperation] Pos[1] double 0.005 run scoreboard players get flight_marker_Posy math_output
execute store result entity @s[tag=flight_marker_disperation] Pos[2] double 0.005 run scoreboard players get flight_marker_Posz math_output
tag @s remove flight_marker_disperation