scoreboard players set @s aj.ice_crystal.animation.ice_crystallization.local_anim_time 0
tag @s remove aj.ice_crystal.animation.ice_crystallization
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.ice_crystal.disable_command_keyframes
function animated_java:ice_crystal/zzzzzzzz/animations/ice_crystallization/tree/leaf_0
tag @s remove aj.ice_crystal.disable_command_keyframes