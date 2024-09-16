scoreboard players add @s aj.write.animation.cin.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.write.animation.cin.local_anim_time
function animated_java:write/zzzzzzzz/animations/cin/apply_frame_as_root
execute if score @s aj.write.animation.cin.local_anim_time matches 50.. run function animated_java:write/zzzzzzzz/animations/cin/end