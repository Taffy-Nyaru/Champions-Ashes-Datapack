data modify entity @s start_interpolation set value 0
data modify storage generic:main #dragon_bomb_rotation_angle set value {angle:0,axis:[0.0,1.0,0.0]}
scoreboard players add @s rotation 1
execute if score @s rotation matches 2147483647 run scoreboard players set @s rotation 0
#Speed of rotation
execute store result storage generic:main #dragon_bomb_rotation_angle.angle float 0.2 run scoreboard players get @s rotation
data modify entity @s transformation.left_rotation set from storage generic:main #dragon_bomb_rotation_angle
data modify entity @s interpolation_duration set value 1