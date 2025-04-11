scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.water_explode.animation.water_explode.local_anim_time 0
scoreboard players set @s aj.water_explode.animation.water_explode.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:water_explode/zzzzzzzz/animations/water_explode/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.water_explode.animation.water_explode