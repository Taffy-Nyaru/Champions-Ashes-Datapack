scoreboard players add @s aj.gravity_thrust.animation.gravity_thrust.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.gravity_thrust.animation.gravity_thrust.local_anim_time
function animated_java:gravity_thrust/zzzzzzzz/animations/gravity_thrust/apply_frame_as_root
execute if score @s aj.gravity_thrust.animation.gravity_thrust.local_anim_time matches 86.. run function animated_java:gravity_thrust/zzzzzzzz/animations/gravity_thrust/end