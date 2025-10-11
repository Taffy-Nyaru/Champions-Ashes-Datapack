scoreboard players set @s aj.void_slash.animation.nep_void_slash_field.local_anim_time 0
tag @s remove aj.void_slash.animation.nep_void_slash_field
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.void_slash.disable_command_keyframes
function animated_java:void_slash/zzzzzzzz/animations/nep_void_slash_field/tree/leaf_0
tag @s remove aj.void_slash.disable_command_keyframes