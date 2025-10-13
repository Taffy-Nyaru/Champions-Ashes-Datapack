scoreboard players set @s aj.nep_rkss_cancel.animation.nep_rkss_cancel.local_anim_time 0
tag @s remove aj.nep_rkss_cancel.animation.nep_rkss_cancel
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.nep_rkss_cancel.disable_command_keyframes
function animated_java:nep_rkss_cancel/zzzzzzzz/animations/nep_rkss_cancel/tree/leaf_0
tag @s remove aj.nep_rkss_cancel.disable_command_keyframes