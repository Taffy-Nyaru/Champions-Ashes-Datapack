scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.nep_fume_ugs_skills.animation.nep_spinning_gravity_thrust.local_anim_time 0
scoreboard players set @s aj.nep_fume_ugs_skills.animation.nep_spinning_gravity_thrust.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:nep_fume_ugs_skills/zzzzzzzz/animations/nep_spinning_gravity_thrust/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.nep_fume_ugs_skills.animation.nep_spinning_gravity_thrust