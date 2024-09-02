scoreboard players set @s aj.flame_of_lorian.animation.stamp_upward_cut.local_anim_time 0
tag @s remove aj.flame_of_lorian.animation.stamp_upward_cut
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.flame_of_lorian.disable_command_keyframes
function animated_java:flame_of_lorian/zzzzzzzz/animations/stamp_upward_cut/tree/leaf_0
tag @s remove aj.flame_of_lorian.disable_command_keyframes