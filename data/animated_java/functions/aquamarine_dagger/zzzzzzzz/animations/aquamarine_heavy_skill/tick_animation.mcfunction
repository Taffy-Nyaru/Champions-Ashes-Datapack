scoreboard players add @s aj.aquamarine_dagger.animation.aquamarine_heavy_skill.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.aquamarine_dagger.animation.aquamarine_heavy_skill.local_anim_time
function animated_java:aquamarine_dagger/zzzzzzzz/animations/aquamarine_heavy_skill/apply_frame_as_root
execute if score @s aj.aquamarine_dagger.animation.aquamarine_heavy_skill.local_anim_time matches 27.. run function animated_java:aquamarine_dagger/zzzzzzzz/animations/aquamarine_heavy_skill/end