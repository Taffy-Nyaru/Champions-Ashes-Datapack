scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.eletric_shield.animation.electric_shield.local_anim_time 0
scoreboard players set @s aj.eletric_shield.animation.electric_shield.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:eletric_shield/zzzzzzzz/animations/electric_shield/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.eletric_shield.animation.electric_shield