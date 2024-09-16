scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.write.animation.cin.local_anim_time 0
scoreboard players set @s aj.write.animation.cin.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:write/zzzzzzzz/animations/cin/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.write.animation.cin