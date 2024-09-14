scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.bullet_generator.animation.bullet_generator.local_anim_time 0
scoreboard players set @s aj.bullet_generator.animation.bullet_generator.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:bullet_generator/zzzzzzzz/animations/bullet_generator/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.bullet_generator.animation.bullet_generator