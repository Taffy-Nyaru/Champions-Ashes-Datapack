scoreboard players set @s aj.water_vfx.animation.water_vfx.local_anim_time 0
tag @s remove aj.water_vfx.animation.water_vfx
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.water_vfx.disable_command_keyframes
function animated_java:water_vfx/zzzzzzzz/animations/water_vfx/tree/leaf_0
tag @s remove aj.water_vfx.disable_command_keyframes