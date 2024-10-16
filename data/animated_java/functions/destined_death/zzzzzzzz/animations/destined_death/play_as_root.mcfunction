scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.destined_death.animation.destined_death.local_anim_time 0
scoreboard players set @s aj.destined_death.animation.destined_death.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:destined_death/zzzzzzzz/animations/destined_death/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.destined_death.animation.destined_death