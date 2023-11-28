scoreboard players add @s aj.aquamarine_heavy_skill.animation.aquamarine_heavy_skill.animation.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.aquamarine_heavy_skill.animation.aquamarine_heavy_skill.animation.local_anim_time
function animated_java:aquamarine_heavy_skill/zzzzzzzz/animations/aquamarine_heavy_skill.animation/apply_frame_as_root
execute if score @s aj.aquamarine_heavy_skill.animation.aquamarine_heavy_skill.animation.local_anim_time matches 16.. run function animated_java:aquamarine_heavy_skill/zzzzzzzz/animations/aquamarine_heavy_skill.animation/end