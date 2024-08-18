function animated_java:gravity_soul_stream/zzzzzzzz/animations/gravity_soul_stream/resume_as_root
function animated_java:gravity_soul_stream/zzzzzzzz/animations/gravity_soul_stream/tween_as_root
function animated_java:gravity_soul_stream/zzzzzzzz/animations/gravity_soul_stream/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i