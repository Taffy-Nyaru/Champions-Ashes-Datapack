scoreboard players set @s aj.blind_spot.animation.blind_spot.local_anim_time 0
tag @s remove aj.blind_spot.animation.blind_spot
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.blind_spot.disable_command_keyframes
function animated_java:blind_spot/zzzzzzzz/animations/blind_spot/tree/leaf_0
tag @s remove aj.blind_spot.disable_command_keyframes