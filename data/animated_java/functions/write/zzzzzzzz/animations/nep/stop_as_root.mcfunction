scoreboard players set @s aj.write.animation.nep.local_anim_time 0
tag @s remove aj.write.animation.nep
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.write.disable_command_keyframes
function animated_java:write/zzzzzzzz/animations/nep/tree/leaf_0
tag @s remove aj.write.disable_command_keyframes