scoreboard players set @s aj.gravity_sniper.animation.gravity_sniper.local_anim_time 0
tag @s remove aj.gravity_sniper.animation.gravity_sniper
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.gravity_sniper.disable_command_keyframes
function animated_java:gravity_sniper/zzzzzzzz/animations/gravity_sniper/tree/leaf_0
tag @s remove aj.gravity_sniper.disable_command_keyframes