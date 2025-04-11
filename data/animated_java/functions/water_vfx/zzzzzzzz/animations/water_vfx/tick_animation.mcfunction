scoreboard players add @s aj.water_vfx.animation.water_vfx.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.water_vfx.animation.water_vfx.local_anim_time
function animated_java:water_vfx/zzzzzzzz/animations/water_vfx/apply_frame_as_root
execute if score @s aj.water_vfx.animation.water_vfx.local_anim_time matches 28.. run function animated_java:water_vfx/zzzzzzzz/animations/water_vfx/end