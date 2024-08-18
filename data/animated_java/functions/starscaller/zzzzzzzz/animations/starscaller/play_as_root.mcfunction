scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.starscaller.animation.starscaller.local_anim_time 0
scoreboard players set @s aj.starscaller.animation.starscaller.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:starscaller/zzzzzzzz/animations/starscaller/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.starscaller.animation.starscaller