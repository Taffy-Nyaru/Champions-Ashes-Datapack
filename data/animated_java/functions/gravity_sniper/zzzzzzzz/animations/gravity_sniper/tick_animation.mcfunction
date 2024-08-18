scoreboard players add @s aj.gravity_sniper.animation.gravity_sniper.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.gravity_sniper.animation.gravity_sniper.local_anim_time
function animated_java:gravity_sniper/zzzzzzzz/animations/gravity_sniper/apply_frame_as_root
execute if score @s aj.gravity_sniper.animation.gravity_sniper.local_anim_time matches 100.. run function animated_java:gravity_sniper/zzzzzzzz/animations/gravity_sniper/end