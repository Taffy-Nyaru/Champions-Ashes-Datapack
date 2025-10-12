scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.nep_phase3_teleport.animation.blackhole_teleport.local_anim_time 0
scoreboard players set @s aj.nep_phase3_teleport.animation.blackhole_teleport.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:nep_phase3_teleport/zzzzzzzz/animations/blackhole_teleport/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.nep_phase3_teleport.animation.blackhole_teleport