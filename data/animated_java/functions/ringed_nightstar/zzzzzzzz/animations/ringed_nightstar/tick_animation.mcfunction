scoreboard players add @s aj.ringed_nightstar.animation.ringed_nightstar.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.ringed_nightstar.animation.ringed_nightstar.local_anim_time
function animated_java:ringed_nightstar/zzzzzzzz/animations/ringed_nightstar/apply_frame_as_root
execute if score @s aj.ringed_nightstar.animation.ringed_nightstar.local_anim_time matches 38.. run function animated_java:ringed_nightstar/zzzzzzzz/animations/ringed_nightstar/end