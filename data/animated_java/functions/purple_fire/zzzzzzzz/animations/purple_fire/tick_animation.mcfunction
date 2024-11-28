scoreboard players add @s aj.purple_fire.animation.purple_fire.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.purple_fire.animation.purple_fire.local_anim_time
function animated_java:purple_fire/zzzzzzzz/animations/purple_fire/apply_frame_as_root
execute if score @s aj.purple_fire.animation.purple_fire.local_anim_time matches 64.. run function animated_java:purple_fire/zzzzzzzz/animations/purple_fire/end