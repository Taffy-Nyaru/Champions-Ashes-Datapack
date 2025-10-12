scoreboard players set @s aj.nep_phase3_teleport.animation.blackhole_teleport.local_anim_time 0
tag @s remove aj.nep_phase3_teleport.animation.blackhole_teleport
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.nep_phase3_teleport.disable_command_keyframes
function animated_java:nep_phase3_teleport/zzzzzzzz/animations/blackhole_teleport/tree/leaf_0
tag @s remove aj.nep_phase3_teleport.disable_command_keyframes