tag @s add bolt_marker_unused

tag @s add lightning_bolt_disperation
function championsashes:items/drakeblood_greatsword/random

execute store result score arrow_Posx math_output run data get entity @s[tag=lightning_bolt_disperation] Pos[0]
execute store result score arrow_Posz math_output run data get entity @s[tag=lightning_bolt_disperation] Pos[2]

#(200*original pos+R)*0.005

scoreboard players operation arrow_Posx math_output *= C_200 math_const
scoreboard players operation arrow_Posz math_output *= C_200 math_const
scoreboard players operation arrow_Posx math_output += rand_output_x math_output
scoreboard players operation arrow_Posz math_output += rand_output_z math_output

execute store result entity @s[tag=lightning_bolt_disperation] Pos[0] double 0.005 run scoreboard players get arrow_Posx math_output
execute store result entity @s[tag=lightning_bolt_disperation] Pos[2] double 0.005 run scoreboard players get arrow_Posz math_output
tag @s remove lightning_bolt_disperation