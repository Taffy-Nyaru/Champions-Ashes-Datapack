scoreboard players add @s aj.nep_phase3_transition.animation.nep_phase3_transition.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.nep_phase3_transition.animation.nep_phase3_transition.local_anim_time
function animated_java:nep_phase3_transition/zzzzzzzz/animations/nep_phase3_transition/apply_frame_as_root
execute if score @s aj.nep_phase3_transition.animation.nep_phase3_transition.local_anim_time matches 250.. run function animated_java:nep_phase3_transition/zzzzzzzz/animations/nep_phase3_transition/end