scoreboard players set @s aj.gravity_soul_stream.animation.gravity_soul_stream.local_anim_time 0
tag @s remove aj.gravity_soul_stream.animation.gravity_soul_stream
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.gravity_soul_stream.disable_command_keyframes
function animated_java:gravity_soul_stream/zzzzzzzz/animations/gravity_soul_stream/tree/leaf_0
tag @s remove aj.gravity_soul_stream.disable_command_keyframes