scoreboard players set @s aj.zamor_ice_storm.animation.zamor_ice_storm.local_anim_time 0
tag @s remove aj.zamor_ice_storm.animation.zamor_ice_storm
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.zamor_ice_storm.disable_command_keyframes
function animated_java:zamor_ice_storm/zzzzzzzz/animations/zamor_ice_storm/tree/leaf_0
tag @s remove aj.zamor_ice_storm.disable_command_keyframes