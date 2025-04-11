scoreboard players set @s aj.water_explode.animation.water_explode.local_anim_time 0
tag @s remove aj.water_explode.animation.water_explode
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.water_explode.disable_command_keyframes
function animated_java:water_explode/zzzzzzzz/animations/water_explode/tree/leaf_0
tag @s remove aj.water_explode.disable_command_keyframes