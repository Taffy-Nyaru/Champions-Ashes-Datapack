data modify entity @s start_interpolation set value 0
#The rotation of item displays will always stored as quarternions, so if we want to use axis-radian or matrix representation, a storage to store axis-radian nbts are necessary. Here using x-axis
data modify storage math:io #vortex_rotation_angle set value {angle:0,axis:[0.0,1.0,0.0]}
scoreboard players add @s rotation 1
execute if score @s rotation matches 2147483647 run scoreboard players set @s rotation 0
#Speed of rotation
execute store result storage math:io #vortex_rotation_angle.angle float 0.12 run scoreboard players get @s rotation
data modify entity @s transformation.left_rotation set from storage math:io #vortex_rotation_angle
data modify entity @s interpolation_duration set value 1
data modify entity @s teleport_duration set value 1