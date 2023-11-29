scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.gundyr_skill.animation.gundyr_halberd_skill.local_anim_time 0
scoreboard players set @s aj.gundyr_skill.animation.gundyr_halberd_skill.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:gundyr_skill/zzzzzzzz/animations/gundyr_halberd_skill/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.gundyr_skill.animation.gundyr_halberd_skill