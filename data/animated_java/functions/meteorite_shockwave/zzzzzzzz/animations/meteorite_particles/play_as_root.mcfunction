scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.meteorite_shockwave.animation.meteorite_particles.local_anim_time 0
scoreboard players set @s aj.meteorite_shockwave.animation.meteorite_particles.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:meteorite_shockwave/zzzzzzzz/animations/meteorite_particles/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.meteorite_shockwave.animation.meteorite_particles