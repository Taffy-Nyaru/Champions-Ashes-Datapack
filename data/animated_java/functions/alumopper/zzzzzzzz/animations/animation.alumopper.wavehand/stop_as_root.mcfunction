scoreboard players set @s aj.alumopper.animation.animation.alumopper.wavehand.local_anim_time 0
tag @s remove aj.alumopper.animation.animation.alumopper.wavehand
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.alumopper.disable_command_keyframes
function animated_java:alumopper/zzzzzzzz/animations/animation.alumopper.wavehand/tree/leaf_0
tag @s remove aj.alumopper.disable_command_keyframes