scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.rkgugs_skill.animation.rkgugs_l1.local_anim_time 0
scoreboard players set @s aj.rkgugs_skill.animation.rkgugs_l1.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:rkgugs_skill/zzzzzzzz/animations/rkgugs_l1/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.rkgugs_skill.animation.rkgugs_l1