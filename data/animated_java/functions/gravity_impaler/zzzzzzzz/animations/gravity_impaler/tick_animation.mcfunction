scoreboard players add @s aj.gravity_impaler.animation.gravity_impaler.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.gravity_impaler.animation.gravity_impaler.local_anim_time
function animated_java:gravity_impaler/zzzzzzzz/animations/gravity_impaler/apply_frame_as_root
execute if score @s aj.gravity_impaler.animation.gravity_impaler.local_anim_time matches 105.. run function animated_java:gravity_impaler/zzzzzzzz/animations/gravity_impaler/end