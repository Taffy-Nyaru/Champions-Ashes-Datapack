function animated_java:nep_phase2_murky/zzzzzzzz/animations/soul_five/resume_as_root
function animated_java:nep_phase2_murky/zzzzzzzz/animations/soul_five/tween_as_root
function animated_java:nep_phase2_murky/zzzzzzzz/animations/soul_five/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i