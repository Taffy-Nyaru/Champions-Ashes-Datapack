scoreboard players add @s aj.meteorite_shockwave.animation.meteorite_particles.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.meteorite_shockwave.animation.meteorite_particles.local_anim_time
function animated_java:meteorite_shockwave/zzzzzzzz/animations/meteorite_particles/apply_frame_as_root
execute if score @s aj.meteorite_shockwave.animation.meteorite_particles.local_anim_time matches 15.. run function animated_java:meteorite_shockwave/zzzzzzzz/animations/meteorite_particles/end