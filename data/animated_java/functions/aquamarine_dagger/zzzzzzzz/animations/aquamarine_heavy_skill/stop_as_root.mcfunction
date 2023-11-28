scoreboard players set @s aj.aquamarine_dagger.animation.aquamarine_heavy_skill.local_anim_time 0
tag @s remove aj.aquamarine_dagger.animation.aquamarine_heavy_skill
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.aquamarine_dagger.disable_command_keyframes
function animated_java:aquamarine_dagger/zzzzzzzz/animations/aquamarine_heavy_skill/tree/leaf_0
tag @s remove aj.aquamarine_dagger.disable_command_keyframes