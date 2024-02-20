scoreboard players add @s aj.alumopper.animation.animation.alumopper.wavehand.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.alumopper.animation.animation.alumopper.wavehand.local_anim_time
function animated_java:alumopper/zzzzzzzz/animations/animation.alumopper.wavehand/apply_frame_as_root
execute if score @s aj.alumopper.animation.animation.alumopper.wavehand.local_anim_time matches 35.. run function animated_java:alumopper/zzzzzzzz/animations/animation.alumopper.wavehand/end