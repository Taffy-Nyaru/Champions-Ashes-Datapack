scoreboard players add @s aj.electric_beacon.animation.electric_void.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.electric_beacon.animation.electric_void.local_anim_time
function animated_java:electric_beacon/zzzzzzzz/animations/electric_void/apply_frame_as_root
execute if score @s aj.electric_beacon.animation.electric_void.local_anim_time matches 31.. run function animated_java:electric_beacon/zzzzzzzz/animations/electric_void/end