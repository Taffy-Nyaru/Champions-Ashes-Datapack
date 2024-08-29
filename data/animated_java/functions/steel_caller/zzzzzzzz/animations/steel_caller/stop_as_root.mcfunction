scoreboard players set @s aj.steel_caller.animation.steel_caller.local_anim_time 0
tag @s remove aj.steel_caller.animation.steel_caller
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.steel_caller.disable_command_keyframes
function animated_java:steel_caller/zzzzzzzz/animations/steel_caller/tree/leaf_0
tag @s remove aj.steel_caller.disable_command_keyframes