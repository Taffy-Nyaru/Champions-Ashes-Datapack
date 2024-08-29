scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.crystal_blade.animation.crystal_blade.local_anim_time 0
scoreboard players set @s aj.crystal_blade.animation.crystal_blade.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:crystal_blade/zzzzzzzz/animations/crystal_blade/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.crystal_blade.animation.crystal_blade