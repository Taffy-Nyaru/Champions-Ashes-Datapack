scoreboard players set @s aj.blade_of_peril.animation.blade_of_peril.local_anim_time 0
tag @s remove aj.blade_of_peril.animation.blade_of_peril
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.blade_of_peril.disable_command_keyframes
function animated_java:blade_of_peril/zzzzzzzz/animations/blade_of_peril/tree/leaf_0
tag @s remove aj.blade_of_peril.disable_command_keyframes