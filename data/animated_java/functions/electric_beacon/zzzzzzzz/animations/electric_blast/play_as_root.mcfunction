scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.electric_beacon.animation.electric_blast.local_anim_time 0
scoreboard players set @s aj.electric_beacon.animation.electric_blast.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:electric_beacon/zzzzzzzz/animations/electric_blast/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.electric_beacon.animation.electric_blast