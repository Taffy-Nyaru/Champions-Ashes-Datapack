scoreboard players set @s aj.field_extension.animation.standby.local_anim_time 0
tag @s remove aj.field_extension.animation.standby
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.field_extension.disable_command_keyframes
function animated_java:field_extension/zzzzzzzz/animations/standby/tree/leaf_0
tag @s remove aj.field_extension.disable_command_keyframes