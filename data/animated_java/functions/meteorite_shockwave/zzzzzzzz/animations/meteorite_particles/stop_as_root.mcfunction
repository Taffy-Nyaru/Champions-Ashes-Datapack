scoreboard players set @s aj.meteorite_shockwave.animation.meteorite_particles.local_anim_time 0
tag @s remove aj.meteorite_shockwave.animation.meteorite_particles
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.meteorite_shockwave.disable_command_keyframes
function animated_java:meteorite_shockwave/zzzzzzzz/animations/meteorite_particles/tree/leaf_0
tag @s remove aj.meteorite_shockwave.disable_command_keyframes