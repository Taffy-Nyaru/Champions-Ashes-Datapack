scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.electric_beacon.animation.electric_void.local_anim_time 0
scoreboard players set @s aj.electric_beacon.animation.electric_void.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:electric_beacon/zzzzzzzz/animations/electric_void/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.electric_beacon.animation.electric_void