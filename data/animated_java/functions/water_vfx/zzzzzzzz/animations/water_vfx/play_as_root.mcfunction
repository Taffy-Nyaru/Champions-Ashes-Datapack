scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.water_vfx.animation.water_vfx.local_anim_time 0
scoreboard players set @s aj.water_vfx.animation.water_vfx.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:water_vfx/zzzzzzzz/animations/water_vfx/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.water_vfx.animation.water_vfx