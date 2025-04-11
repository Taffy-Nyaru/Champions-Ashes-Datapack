scoreboard players add @s aj.water_explode.animation.water_explode.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.water_explode.animation.water_explode.local_anim_time
function animated_java:water_explode/zzzzzzzz/animations/water_explode/apply_frame_as_root
execute if score @s aj.water_explode.animation.water_explode.local_anim_time matches 25.. run function animated_java:water_explode/zzzzzzzz/animations/water_explode/end