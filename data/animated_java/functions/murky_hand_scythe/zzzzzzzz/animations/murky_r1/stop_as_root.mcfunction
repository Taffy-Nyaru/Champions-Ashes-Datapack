scoreboard players set @s aj.murky_hand_scythe.animation.murky_r1.local_anim_time 0
tag @s remove aj.murky_hand_scythe.animation.murky_r1
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.murky_hand_scythe.disable_command_keyframes
function animated_java:murky_hand_scythe/zzzzzzzz/animations/murky_r1/tree/leaf_0
tag @s remove aj.murky_hand_scythe.disable_command_keyframes