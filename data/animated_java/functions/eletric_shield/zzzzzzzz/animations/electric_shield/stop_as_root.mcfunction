scoreboard players set @s aj.eletric_shield.animation.electric_shield.local_anim_time 0
tag @s remove aj.eletric_shield.animation.electric_shield
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.eletric_shield.disable_command_keyframes
function animated_java:eletric_shield/zzzzzzzz/animations/electric_shield/tree/leaf_0
tag @s remove aj.eletric_shield.disable_command_keyframes