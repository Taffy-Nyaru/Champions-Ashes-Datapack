scoreboard players set @s aj.blackhole_supernova.animation.blackhole_supernova.local_anim_time 0
tag @s remove aj.blackhole_supernova.animation.blackhole_supernova
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.blackhole_supernova.disable_command_keyframes
function animated_java:blackhole_supernova/zzzzzzzz/animations/blackhole_supernova/tree/leaf_0
tag @s remove aj.blackhole_supernova.disable_command_keyframes