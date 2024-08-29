scoreboard players add @s aj.rkss_cancel.animation.rkss_cancel.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.rkss_cancel.animation.rkss_cancel.local_anim_time
function animated_java:rkss_cancel/zzzzzzzz/animations/rkss_cancel/apply_frame_as_root
execute if score @s aj.rkss_cancel.animation.rkss_cancel.local_anim_time matches 26.. run function animated_java:rkss_cancel/zzzzzzzz/animations/rkss_cancel/end