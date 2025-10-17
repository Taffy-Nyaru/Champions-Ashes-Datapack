scoreboard players set @s aj.nep_phase3_transition.animation.nep_phase3_transition.local_anim_time 0
tag @s remove aj.nep_phase3_transition.animation.nep_phase3_transition
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.nep_phase3_transition.disable_command_keyframes
function animated_java:nep_phase3_transition/zzzzzzzz/animations/nep_phase3_transition/tree/leaf_0
tag @s remove aj.nep_phase3_transition.disable_command_keyframes