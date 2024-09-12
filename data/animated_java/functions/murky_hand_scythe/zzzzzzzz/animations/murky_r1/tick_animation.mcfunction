scoreboard players add @s aj.murky_hand_scythe.animation.murky_r1.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.murky_hand_scythe.animation.murky_r1.local_anim_time
function animated_java:murky_hand_scythe/zzzzzzzz/animations/murky_r1/apply_frame_as_root
execute if score @s aj.murky_hand_scythe.animation.murky_r1.local_anim_time matches 10.. run function animated_java:murky_hand_scythe/zzzzzzzz/animations/murky_r1/end