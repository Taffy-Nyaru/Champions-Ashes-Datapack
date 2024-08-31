scoreboard players set @s aj.gravity_blackhole.animation.gravity_blackhole.local_anim_time 0
tag @s remove aj.gravity_blackhole.animation.gravity_blackhole
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.gravity_blackhole.disable_command_keyframes
function animated_java:gravity_blackhole/zzzzzzzz/animations/gravity_blackhole/tree/leaf_0
tag @s remove aj.gravity_blackhole.disable_command_keyframes