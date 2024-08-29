scoreboard players add @s aj.dimension_slash.animation.spinning_slash.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.dimension_slash.animation.spinning_slash.local_anim_time
function animated_java:dimension_slash/zzzzzzzz/animations/spinning_slash/apply_frame_as_root
execute if score @s aj.dimension_slash.animation.spinning_slash.local_anim_time matches 60.. run function animated_java:dimension_slash/zzzzzzzz/animations/spinning_slash/end