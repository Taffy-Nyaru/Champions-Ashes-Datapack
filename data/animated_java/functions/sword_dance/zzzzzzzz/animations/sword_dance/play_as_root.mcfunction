scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.sword_dance.animation.sword_dance.local_anim_time 0
scoreboard players set @s aj.sword_dance.animation.sword_dance.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:sword_dance/zzzzzzzz/animations/sword_dance/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.sword_dance.animation.sword_dance