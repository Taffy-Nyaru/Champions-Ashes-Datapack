scoreboard players set @s aj.chainsaw.animation.chainsaw.local_anim_time 0
tag @s remove aj.chainsaw.animation.chainsaw
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.chainsaw.disable_command_keyframes
function animated_java:chainsaw/zzzzzzzz/animations/chainsaw/tree/leaf_0
tag @s remove aj.chainsaw.disable_command_keyframes