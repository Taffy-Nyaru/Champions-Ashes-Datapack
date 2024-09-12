scoreboard players set @s aj.murky_hand_scythe.animation.soul_five.local_anim_time 0
tag @s remove aj.murky_hand_scythe.animation.soul_five
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.murky_hand_scythe.disable_command_keyframes
function animated_java:murky_hand_scythe/zzzzzzzz/animations/soul_five/tree/leaf_0
tag @s remove aj.murky_hand_scythe.disable_command_keyframes