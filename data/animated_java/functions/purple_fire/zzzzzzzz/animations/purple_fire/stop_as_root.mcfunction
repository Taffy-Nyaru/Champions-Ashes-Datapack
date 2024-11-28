scoreboard players set @s aj.purple_fire.animation.purple_fire.local_anim_time 0
tag @s remove aj.purple_fire.animation.purple_fire
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.purple_fire.disable_command_keyframes
function animated_java:purple_fire/zzzzzzzz/animations/purple_fire/tree/leaf_0
tag @s remove aj.purple_fire.disable_command_keyframes