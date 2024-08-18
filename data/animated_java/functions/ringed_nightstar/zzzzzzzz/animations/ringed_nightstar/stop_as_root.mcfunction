scoreboard players set @s aj.ringed_nightstar.animation.ringed_nightstar.local_anim_time 0
tag @s remove aj.ringed_nightstar.animation.ringed_nightstar
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.ringed_nightstar.disable_command_keyframes
function animated_java:ringed_nightstar/zzzzzzzz/animations/ringed_nightstar/tree/leaf_0
tag @s remove aj.ringed_nightstar.disable_command_keyframes