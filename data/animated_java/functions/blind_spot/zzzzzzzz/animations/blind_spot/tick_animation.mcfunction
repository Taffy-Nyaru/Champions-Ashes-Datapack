scoreboard players add @s aj.blind_spot.animation.blind_spot.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.blind_spot.animation.blind_spot.local_anim_time
function animated_java:blind_spot/zzzzzzzz/animations/blind_spot/apply_frame_as_root
execute if score @s aj.blind_spot.animation.blind_spot.local_anim_time matches 18.. run function animated_java:blind_spot/zzzzzzzz/animations/blind_spot/end