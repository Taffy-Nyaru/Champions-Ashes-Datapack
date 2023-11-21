#Clockwise and CounterClockwise rotation
#execute if score @s rotation matches 3600.. run tag @s add counter_clockwise
#execute if score @s rotation matches 3600.. run tag @s remove clockwise
#execute if score @s rotation matches -3600 run tag @s add clockwise
#execute if score @s rotation matches -3600 run tag @s remove counter_clockwise

#execute as @s[tag=clockwise] run scoreboard players add @s rotation 1
#execute as @s[tag=counter_clockwise] run scoreboard players remove @s rotation 1


#The rotation of item displays will always stored as quarternions, so if we want to use axis-radian or matrix representation, a storage to store axis-radian nbts are necessary. Here using x-axis
data modify storage math:io #phanalax_rotation_angle set value {angle:0,axis:[1.0,0.0,0.0]}
scoreboard players add @s rotation 1
execute if score @s rotation matches 2147483647 run scoreboard players set @s rotation 0
#Speed of rotation
execute store result storage math:io #phanalax_rotation_angle.angle float 0.08 run scoreboard players get @s rotation
data modify entity @s transformation.left_rotation set from storage math:io #phanalax_rotation_angle
data modify entity @s interpolation_duration set value 3
data modify entity @s teleport_duration set value 1