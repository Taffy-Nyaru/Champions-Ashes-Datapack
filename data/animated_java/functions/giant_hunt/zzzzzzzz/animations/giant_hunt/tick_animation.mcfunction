scoreboard players add @s aj.giant_hunt.animation.giant_hunt.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.giant_hunt.animation.giant_hunt.local_anim_time
function animated_java:giant_hunt/zzzzzzzz/animations/giant_hunt/apply_frame_as_root
execute if score @s aj.giant_hunt.animation.giant_hunt.local_anim_time matches 26.. run function animated_java:giant_hunt/zzzzzzzz/animations/giant_hunt/end