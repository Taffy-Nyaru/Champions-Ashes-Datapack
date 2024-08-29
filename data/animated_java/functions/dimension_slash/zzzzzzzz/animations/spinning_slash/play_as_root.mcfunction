scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.dimension_slash.animation.spinning_slash.local_anim_time 0
scoreboard players set @s aj.dimension_slash.animation.spinning_slash.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:dimension_slash/zzzzzzzz/animations/spinning_slash/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.dimension_slash.animation.spinning_slash