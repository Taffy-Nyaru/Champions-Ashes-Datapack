scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.rkss_cancel.animation.rkss_cancel.local_anim_time 0
scoreboard players set @s aj.rkss_cancel.animation.rkss_cancel.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:rkss_cancel/zzzzzzzz/animations/rkss_cancel/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.rkss_cancel.animation.rkss_cancel