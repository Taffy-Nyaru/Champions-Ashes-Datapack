scoreboard players add @s aj.gravity_soul_stream.animation.gravity_soul_stream.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.gravity_soul_stream.animation.gravity_soul_stream.local_anim_time
function animated_java:gravity_soul_stream/zzzzzzzz/animations/gravity_soul_stream/apply_frame_as_root
execute if score @s aj.gravity_soul_stream.animation.gravity_soul_stream.local_anim_time matches 120.. run function animated_java:gravity_soul_stream/zzzzzzzz/animations/gravity_soul_stream/end