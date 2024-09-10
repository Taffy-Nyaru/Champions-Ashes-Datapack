scoreboard players set @s aj.favor_incantations.animation.blinkbolt_slash.local_anim_time 0
tag @s remove aj.favor_incantations.animation.blinkbolt_slash
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.favor_incantations.disable_command_keyframes
function animated_java:favor_incantations/zzzzzzzz/animations/blinkbolt_slash/tree/leaf_0
tag @s remove aj.favor_incantations.disable_command_keyframes