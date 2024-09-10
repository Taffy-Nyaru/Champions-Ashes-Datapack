function animated_java:favor_incantations/zzzzzzzz/animations/blinkbolt_slash/play_as_root
function animated_java:favor_incantations/zzzzzzzz/animations/blinkbolt_slash/tween_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i