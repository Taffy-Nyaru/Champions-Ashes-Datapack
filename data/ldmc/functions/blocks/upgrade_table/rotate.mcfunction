scoreboard players add @s rotation_time 1
execute if score @s rotation_time matches 1..300 run data modify storage math:io #item_display_rotation_angle set value {angle:0,axis:[0.5,0.5,0.5]}
execute if score @s rotation_time matches 301..600 run data modify storage math:io #item_display_rotation_angle set value {angle:0,axis:[0.5,0.5,-0.5]}
execute if score @s rotation_time matches 601..900 run data modify storage math:io #item_display_rotation_angle set value {angle:0,axis:[0.5,-0.5,0.5]}
execute if score @s rotation_time matches 901..1200 run data modify storage math:io #item_display_rotation_angle set value {angle:0,axis:[-0.5,0.5,0.5]}
execute if score @s rotation_time matches 1201..1500 run data modify storage math:io #item_display_rotation_angle set value {angle:0,axis:[-0.5,-0.5,0.5]}
execute if score @s rotation_time matches 1501..1800 run data modify storage math:io #item_display_rotation_angle set value {angle:0,axis:[-0.5,0.5,-0.5]}
execute if score @s rotation_time matches 1801..2100 run data modify storage math:io #item_display_rotation_angle set value {angle:0,axis:[0.5,-0.5,-0.5]}
execute if score @s rotation_time matches 2100.. run scoreboard players set @s rotation_time 0
scoreboard players add @s rotation 1
execute if score @s rotation matches 2147483647 run scoreboard players set @s rotation 0
#Speed of rotation
execute store result storage math:io #item_display_rotation_angle.angle float 0.09 run scoreboard players get @s rotation
data modify entity @s transformation.left_rotation set from storage math:io #item_display_rotation_angle
data modify entity @s interpolation_duration set value 3
data modify entity @s teleport_duration set value 1


data modify storage generic:main displayed_item.id set from entity @s[tag=raycast.target] item.id
data modify storage generic:main displayed_item.tag set from entity @s[tag=raycast.target] item.tag