scoreboard players add @s aj.blackhole_supernova.animation.blackhole_supernova.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.blackhole_supernova.animation.blackhole_supernova.local_anim_time
function animated_java:blackhole_supernova/zzzzzzzz/animations/blackhole_supernova/apply_frame_as_root
execute if score @s aj.blackhole_supernova.animation.blackhole_supernova.local_anim_time matches 70.. run function animated_java:blackhole_supernova/zzzzzzzz/animations/blackhole_supernova/end