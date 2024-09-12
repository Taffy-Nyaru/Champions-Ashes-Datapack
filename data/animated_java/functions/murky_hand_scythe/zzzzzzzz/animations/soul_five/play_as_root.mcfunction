scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.murky_hand_scythe.animation.soul_five.local_anim_time 0
scoreboard players set @s aj.murky_hand_scythe.animation.soul_five.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:murky_hand_scythe/zzzzzzzz/animations/soul_five/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.murky_hand_scythe.animation.soul_five