scoreboard players add @s aj.dimension_slash.animation.dimension_slash.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.dimension_slash.animation.dimension_slash.local_anim_time
function animated_java:dimension_slash/zzzzzzzz/animations/dimension_slash/apply_frame_as_root
execute if score @s aj.dimension_slash.animation.dimension_slash.local_anim_time matches 32.. run function animated_java:dimension_slash/zzzzzzzz/animations/dimension_slash/end