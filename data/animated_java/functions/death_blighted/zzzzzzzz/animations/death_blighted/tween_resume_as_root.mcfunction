function animated_java:death_blighted/zzzzzzzz/animations/death_blighted/resume_as_root
function animated_java:death_blighted/zzzzzzzz/animations/death_blighted/tween_as_root
function animated_java:death_blighted/zzzzzzzz/animations/death_blighted/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i