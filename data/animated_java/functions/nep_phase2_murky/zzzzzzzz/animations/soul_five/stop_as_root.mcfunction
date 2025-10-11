scoreboard players set @s aj.nep_phase2_murky.animation.soul_five.local_anim_time 0
tag @s remove aj.nep_phase2_murky.animation.soul_five
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.nep_phase2_murky.disable_command_keyframes
function animated_java:nep_phase2_murky/zzzzzzzz/animations/soul_five/tree/leaf_0
tag @s remove aj.nep_phase2_murky.disable_command_keyframes