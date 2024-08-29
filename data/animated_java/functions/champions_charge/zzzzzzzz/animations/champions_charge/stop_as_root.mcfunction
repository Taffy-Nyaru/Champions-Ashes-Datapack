scoreboard players set @s aj.champions_charge.animation.champions_charge.local_anim_time 0
tag @s remove aj.champions_charge.animation.champions_charge
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.champions_charge.disable_command_keyframes
function animated_java:champions_charge/zzzzzzzz/animations/champions_charge/tree/leaf_0
tag @s remove aj.champions_charge.disable_command_keyframes