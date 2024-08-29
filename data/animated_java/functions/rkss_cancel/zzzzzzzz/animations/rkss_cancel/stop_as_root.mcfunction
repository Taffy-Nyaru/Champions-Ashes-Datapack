scoreboard players set @s aj.rkss_cancel.animation.rkss_cancel.local_anim_time 0
tag @s remove aj.rkss_cancel.animation.rkss_cancel
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.rkss_cancel.disable_command_keyframes
function animated_java:rkss_cancel/zzzzzzzz/animations/rkss_cancel/tree/leaf_0
tag @s remove aj.rkss_cancel.disable_command_keyframes