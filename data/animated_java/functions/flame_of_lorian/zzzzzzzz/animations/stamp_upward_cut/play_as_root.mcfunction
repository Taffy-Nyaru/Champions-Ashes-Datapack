scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.flame_of_lorian.animation.stamp_upward_cut.local_anim_time 0
scoreboard players set @s aj.flame_of_lorian.animation.stamp_upward_cut.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:flame_of_lorian/zzzzzzzz/animations/stamp_upward_cut/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.flame_of_lorian.animation.stamp_upward_cut