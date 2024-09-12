scoreboard players add @s aj.murky_hand_scythe.animation.soul_five.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.murky_hand_scythe.animation.soul_five.local_anim_time
function animated_java:murky_hand_scythe/zzzzzzzz/animations/soul_five/apply_frame_as_root
execute if score @s aj.murky_hand_scythe.animation.soul_five.local_anim_time matches 38.. run function animated_java:murky_hand_scythe/zzzzzzzz/animations/soul_five/end