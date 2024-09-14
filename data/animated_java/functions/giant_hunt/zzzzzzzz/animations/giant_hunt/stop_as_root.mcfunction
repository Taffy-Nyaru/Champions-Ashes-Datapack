scoreboard players set @s aj.giant_hunt.animation.giant_hunt.local_anim_time 0
tag @s remove aj.giant_hunt.animation.giant_hunt
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.giant_hunt.disable_command_keyframes
function animated_java:giant_hunt/zzzzzzzz/animations/giant_hunt/tree/leaf_0
tag @s remove aj.giant_hunt.disable_command_keyframes