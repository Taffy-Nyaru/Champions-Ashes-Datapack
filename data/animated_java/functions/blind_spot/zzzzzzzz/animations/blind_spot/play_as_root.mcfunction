scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.blind_spot.animation.blind_spot.local_anim_time 0
scoreboard players set @s aj.blind_spot.animation.blind_spot.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:blind_spot/zzzzzzzz/animations/blind_spot/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.blind_spot.animation.blind_spot