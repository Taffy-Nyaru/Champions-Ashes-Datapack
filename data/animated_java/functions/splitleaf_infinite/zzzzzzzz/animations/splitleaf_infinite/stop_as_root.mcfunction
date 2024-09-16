scoreboard players set @s aj.splitleaf_infinite.animation.splitleaf_infinite.local_anim_time 0
tag @s remove aj.splitleaf_infinite.animation.splitleaf_infinite
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.splitleaf_infinite.disable_command_keyframes
function animated_java:splitleaf_infinite/zzzzzzzz/animations/splitleaf_infinite/tree/leaf_0
tag @s remove aj.splitleaf_infinite.disable_command_keyframes