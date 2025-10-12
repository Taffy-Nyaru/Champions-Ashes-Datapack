#execute in minecraft:overworld rotated as @s positioned 0.0 0.0 0.0 run tp 2fdb090d-7108-46d9-9d1c-0a41b484a826 ^ ^ ^1.0 ~ ~
#sin
#execute store result score sin math_output run data get entity 2fdb090d-7108-46d9-9d1c-0a41b484a826 Pos[0] 1000
#cos
#execute store result score cos math_output run data get entity 2fdb090d-7108-46d9-9d1c-0a41b484a826 Pos[2] -1000

#execute store result score x math_output run data get entity @s Pos[0]
#scoreboard players operation math math_ouotput = cos math_output
#scoreboard players operation math math_output *= rand_output math_output
#scoreboard players operation x math_output += math math_output

#execute store result score z math_output run data get entity @s Pos[2]
#scoreboard players operation math math_ouotput = sin math_output
#scoreboard players operation math math_output *= rand_output math_output
#scoreboard players operation z math_output += math math_output
tag @s add golem_arrow

tag @s add disperation
function championsashes:items/dragonslayer_greatbow/random

execute store result score arrow_Posx math_output run data get entity @s[tag=disperation] Pos[0]
execute store result score arrow_Posz math_output run data get entity @s[tag=disperation] Pos[2]

#(200*original pos+R)*0.005

scoreboard players operation arrow_Posx math_output *= C_200 math_const
scoreboard players operation arrow_Posz math_output *= C_200 math_const
scoreboard players operation arrow_Posx math_output += rand_output_x math_output
scoreboard players operation arrow_Posz math_output += rand_output_z math_output

execute store result entity @s[tag=disperation] Pos[0] double 0.005 run scoreboard players get arrow_Posx math_output
execute store result entity @s[tag=disperation] Pos[2] double 0.005 run scoreboard players get arrow_Posz math_output
tag @s remove disperation