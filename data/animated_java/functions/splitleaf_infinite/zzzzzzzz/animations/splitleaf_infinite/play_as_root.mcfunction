scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.splitleaf_infinite.animation.splitleaf_infinite.local_anim_time 0
scoreboard players set @s aj.splitleaf_infinite.animation.splitleaf_infinite.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:splitleaf_infinite/zzzzzzzz/animations/splitleaf_infinite/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.splitleaf_infinite.animation.splitleaf_infinite