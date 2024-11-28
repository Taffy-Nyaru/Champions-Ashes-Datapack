scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.purple_fire.animation.purple_fire.local_anim_time 0
scoreboard players set @s aj.purple_fire.animation.purple_fire.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:purple_fire/zzzzzzzz/animations/purple_fire/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.purple_fire.animation.purple_fire