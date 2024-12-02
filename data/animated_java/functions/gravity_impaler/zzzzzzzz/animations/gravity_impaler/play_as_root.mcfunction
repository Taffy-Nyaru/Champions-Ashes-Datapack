scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.gravity_impaler.animation.gravity_impaler.local_anim_time 0
scoreboard players set @s aj.gravity_impaler.animation.gravity_impaler.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:gravity_impaler/zzzzzzzz/animations/gravity_impaler/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.gravity_impaler.animation.gravity_impaler