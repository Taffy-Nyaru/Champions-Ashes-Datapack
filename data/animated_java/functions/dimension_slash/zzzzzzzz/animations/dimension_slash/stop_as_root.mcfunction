scoreboard players set @s aj.dimension_slash.animation.dimension_slash.local_anim_time 0
tag @s remove aj.dimension_slash.animation.dimension_slash
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.dimension_slash.disable_command_keyframes
function animated_java:dimension_slash/zzzzzzzz/animations/dimension_slash/tree/leaf_0
tag @s remove aj.dimension_slash.disable_command_keyframes