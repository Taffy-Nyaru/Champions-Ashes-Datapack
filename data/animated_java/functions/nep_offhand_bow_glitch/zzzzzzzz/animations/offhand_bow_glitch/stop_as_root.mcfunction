scoreboard players set @s aj.nep_offhand_bow_glitch.animation.offhand_bow_glitch.local_anim_time 0
tag @s remove aj.nep_offhand_bow_glitch.animation.offhand_bow_glitch
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.nep_offhand_bow_glitch.disable_command_keyframes
function animated_java:nep_offhand_bow_glitch/zzzzzzzz/animations/offhand_bow_glitch/tree/leaf_0
tag @s remove aj.nep_offhand_bow_glitch.disable_command_keyframes