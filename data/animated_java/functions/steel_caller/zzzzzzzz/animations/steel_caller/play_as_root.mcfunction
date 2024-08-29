scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.steel_caller.animation.steel_caller.local_anim_time 0
scoreboard players set @s aj.steel_caller.animation.steel_caller.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:steel_caller/zzzzzzzz/animations/steel_caller/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.steel_caller.animation.steel_caller