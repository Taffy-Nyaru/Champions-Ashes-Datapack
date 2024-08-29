scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.champions_charge.animation.champions_charge.local_anim_time 0
scoreboard players set @s aj.champions_charge.animation.champions_charge.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:champions_charge/zzzzzzzz/animations/champions_charge/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.champions_charge.animation.champions_charge