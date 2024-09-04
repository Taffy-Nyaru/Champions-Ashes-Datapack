scoreboard players set @s aj.sword_dance.animation.sword_dance.local_anim_time 0
tag @s remove aj.sword_dance.animation.sword_dance
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.sword_dance.disable_command_keyframes
function animated_java:sword_dance/zzzzzzzz/animations/sword_dance/tree/leaf_0
tag @s remove aj.sword_dance.disable_command_keyframes