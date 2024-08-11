data modify storage math:io #pkcs_skill_rotation_angle set value {angle:0,axis:[0.0,1.0,0.0]}
scoreboard players add @s rotation 1
execute if score @s rotation matches 2147483647 run scoreboard players set @s rotation 0
#Speed of rotation
execute store result storage math:io #pkcs_skill_rotation_angle.angle float 0.5 run scoreboard players get @s rotation
data modify entity @s transformation.left_rotation set from storage math:io #pkcs_skill_rotation_angle