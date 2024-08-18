scoreboard players set @s aj.starscaller.animation.starscaller.local_anim_time 0
tag @s remove aj.starscaller.animation.starscaller
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.starscaller.disable_command_keyframes
function animated_java:starscaller/zzzzzzzz/animations/starscaller/tree/leaf_0
tag @s remove aj.starscaller.disable_command_keyframes