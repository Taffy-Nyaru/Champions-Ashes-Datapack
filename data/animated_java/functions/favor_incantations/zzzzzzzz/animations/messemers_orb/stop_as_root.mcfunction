scoreboard players set @s aj.favor_incantations.animation.messemers_orb.local_anim_time 0
tag @s remove aj.favor_incantations.animation.messemers_orb
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.favor_incantations.disable_command_keyframes
function animated_java:favor_incantations/zzzzzzzz/animations/messemers_orb/tree/leaf_0
tag @s remove aj.favor_incantations.disable_command_keyframes