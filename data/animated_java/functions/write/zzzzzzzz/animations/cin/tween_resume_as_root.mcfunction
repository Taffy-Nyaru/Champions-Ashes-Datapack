function animated_java:write/zzzzzzzz/animations/cin/resume_as_root
function animated_java:write/zzzzzzzz/animations/cin/tween_as_root
function animated_java:write/zzzzzzzz/animations/cin/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i