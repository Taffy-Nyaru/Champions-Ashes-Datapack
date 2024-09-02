scoreboard players set @s aj.flame_of_lorian.animation.flame_of_lorian.local_anim_time 0
tag @s remove aj.flame_of_lorian.animation.flame_of_lorian
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.flame_of_lorian.disable_command_keyframes
function animated_java:flame_of_lorian/zzzzzzzz/animations/flame_of_lorian/tree/leaf_0
tag @s remove aj.flame_of_lorian.disable_command_keyframes