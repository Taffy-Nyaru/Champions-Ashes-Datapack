scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.chainsaw.animation.chainsaw.local_anim_time 0
scoreboard players set @s aj.chainsaw.animation.chainsaw.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:chainsaw/zzzzzzzz/animations/chainsaw/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.chainsaw.animation.chainsaw