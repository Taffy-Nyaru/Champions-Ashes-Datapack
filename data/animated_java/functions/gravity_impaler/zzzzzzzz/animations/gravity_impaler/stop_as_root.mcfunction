scoreboard players set @s aj.gravity_impaler.animation.gravity_impaler.local_anim_time 0
tag @s remove aj.gravity_impaler.animation.gravity_impaler
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.gravity_impaler.disable_command_keyframes
function animated_java:gravity_impaler/zzzzzzzz/animations/gravity_impaler/tree/leaf_0
tag @s remove aj.gravity_impaler.disable_command_keyframes