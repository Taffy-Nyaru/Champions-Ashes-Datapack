scoreboard players set @s aj.void_slash.animation.void_slash.local_anim_time 0
tag @s remove aj.void_slash.animation.void_slash
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.void_slash.disable_command_keyframes
function animated_java:void_slash/zzzzzzzz/animations/void_slash/tree/leaf_0
tag @s remove aj.void_slash.disable_command_keyframes