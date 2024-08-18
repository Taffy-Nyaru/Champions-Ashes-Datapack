scoreboard players set @s aj.gravity_thrust.animation.gravity_thrust.local_anim_time 0
tag @s remove aj.gravity_thrust.animation.gravity_thrust
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.gravity_thrust.disable_command_keyframes
function animated_java:gravity_thrust/zzzzzzzz/animations/gravity_thrust/tree/leaf_0
tag @s remove aj.gravity_thrust.disable_command_keyframes