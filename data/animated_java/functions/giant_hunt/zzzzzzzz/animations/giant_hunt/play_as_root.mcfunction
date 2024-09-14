scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.giant_hunt.animation.giant_hunt.local_anim_time 0
scoreboard players set @s aj.giant_hunt.animation.giant_hunt.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:giant_hunt/zzzzzzzz/animations/giant_hunt/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.giant_hunt.animation.giant_hunt