scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.gravity_thrust.animation.gravity_thrust.local_anim_time 0
scoreboard players set @s aj.gravity_thrust.animation.gravity_thrust.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:gravity_thrust/zzzzzzzz/animations/gravity_thrust/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.gravity_thrust.animation.gravity_thrust