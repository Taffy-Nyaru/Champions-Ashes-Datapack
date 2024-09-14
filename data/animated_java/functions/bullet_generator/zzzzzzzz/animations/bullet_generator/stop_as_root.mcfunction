scoreboard players set @s aj.bullet_generator.animation.bullet_generator.local_anim_time 0
tag @s remove aj.bullet_generator.animation.bullet_generator
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.bullet_generator.disable_command_keyframes
function animated_java:bullet_generator/zzzzzzzz/animations/bullet_generator/tree/leaf_0
tag @s remove aj.bullet_generator.disable_command_keyframes