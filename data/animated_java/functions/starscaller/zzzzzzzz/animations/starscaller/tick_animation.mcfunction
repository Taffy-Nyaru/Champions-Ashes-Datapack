scoreboard players add @s aj.starscaller.animation.starscaller.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.starscaller.animation.starscaller.local_anim_time
function animated_java:starscaller/zzzzzzzz/animations/starscaller/apply_frame_as_root
execute if score @s aj.starscaller.animation.starscaller.local_anim_time matches 80.. run function animated_java:starscaller/zzzzzzzz/animations/starscaller/end