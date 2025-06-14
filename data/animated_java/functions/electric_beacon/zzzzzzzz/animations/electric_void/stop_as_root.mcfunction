scoreboard players set @s aj.electric_beacon.animation.electric_void.local_anim_time 0
tag @s remove aj.electric_beacon.animation.electric_void
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.electric_beacon.disable_command_keyframes
function animated_java:electric_beacon/zzzzzzzz/animations/electric_void/tree/leaf_0
tag @s remove aj.electric_beacon.disable_command_keyframes