scoreboard players add @s aj.splitleaf_infinite.animation.splitleaf_infinite.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.splitleaf_infinite.animation.splitleaf_infinite.local_anim_time
function animated_java:splitleaf_infinite/zzzzzzzz/animations/splitleaf_infinite/apply_frame_as_root
execute if score @s aj.splitleaf_infinite.animation.splitleaf_infinite.local_anim_time matches 88.. run function animated_java:splitleaf_infinite/zzzzzzzz/animations/splitleaf_infinite/end