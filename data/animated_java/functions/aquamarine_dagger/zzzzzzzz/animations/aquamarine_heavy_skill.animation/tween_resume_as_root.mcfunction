function animated_java:aquamarine_dagger/zzzzzzzz/animations/aquamarine_heavy_skill.animation/resume_as_root
function animated_java:aquamarine_dagger/zzzzzzzz/animations/aquamarine_heavy_skill.animation/tween_as_root
function animated_java:aquamarine_dagger/zzzzzzzz/animations/aquamarine_heavy_skill.animation/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i