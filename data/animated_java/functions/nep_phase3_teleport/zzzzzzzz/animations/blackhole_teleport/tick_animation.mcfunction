scoreboard players add @s aj.nep_phase3_teleport.animation.blackhole_teleport.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.nep_phase3_teleport.animation.blackhole_teleport.local_anim_time
function animated_java:nep_phase3_teleport/zzzzzzzz/animations/blackhole_teleport/apply_frame_as_root
execute if score @s aj.nep_phase3_teleport.animation.blackhole_teleport.local_anim_time matches 17.. run function animated_java:nep_phase3_teleport/zzzzzzzz/animations/blackhole_teleport/end