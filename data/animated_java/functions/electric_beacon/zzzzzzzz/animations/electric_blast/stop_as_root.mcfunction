scoreboard players set @s aj.electric_beacon.animation.electric_blast.local_anim_time 0
tag @s remove aj.electric_beacon.animation.electric_blast
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.electric_beacon.disable_command_keyframes
function animated_java:electric_beacon/zzzzzzzz/animations/electric_blast/tree/leaf_0
tag @s remove aj.electric_beacon.disable_command_keyframes