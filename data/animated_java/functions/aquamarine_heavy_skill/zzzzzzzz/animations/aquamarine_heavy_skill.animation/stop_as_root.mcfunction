scoreboard players set @s aj.aquamarine_heavy_skill.animation.aquamarine_heavy_skill.animation.local_anim_time 0
tag @s remove aj.aquamarine_heavy_skill.animation.aquamarine_heavy_skill.animation
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.aquamarine_heavy_skill.disable_command_keyframes
function animated_java:aquamarine_heavy_skill/zzzzzzzz/animations/aquamarine_heavy_skill.animation/tree/leaf_0
tag @s remove aj.aquamarine_heavy_skill.disable_command_keyframes