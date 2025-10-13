scoreboard players add @s aj.nep_rkss_cancel.animation.nep_rkss_cancel.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.nep_rkss_cancel.animation.nep_rkss_cancel.local_anim_time
function animated_java:nep_rkss_cancel/zzzzzzzz/animations/nep_rkss_cancel/apply_frame_as_root
execute if score @s aj.nep_rkss_cancel.animation.nep_rkss_cancel.local_anim_time matches 17.. run function animated_java:nep_rkss_cancel/zzzzzzzz/animations/nep_rkss_cancel/end