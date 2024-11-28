scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.ice_crystal.animation.ice_crystallization.local_anim_time 0
scoreboard players set @s aj.ice_crystal.animation.ice_crystallization.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:ice_crystal/zzzzzzzz/animations/ice_crystallization/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.ice_crystal.animation.ice_crystallization