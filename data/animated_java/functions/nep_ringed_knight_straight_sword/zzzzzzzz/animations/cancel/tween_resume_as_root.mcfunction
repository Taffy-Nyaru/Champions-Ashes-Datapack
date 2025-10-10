function animated_java:nep_ringed_knight_straight_sword/zzzzzzzz/animations/cancel/resume_as_root
function animated_java:nep_ringed_knight_straight_sword/zzzzzzzz/animations/cancel/tween_as_root
function animated_java:nep_ringed_knight_straight_sword/zzzzzzzz/animations/cancel/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i