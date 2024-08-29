scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.blade_of_peril.animation.blade_of_peril.local_anim_time 0
scoreboard players set @s aj.blade_of_peril.animation.blade_of_peril.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:blade_of_peril/zzzzzzzz/animations/blade_of_peril/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.blade_of_peril.animation.blade_of_peril