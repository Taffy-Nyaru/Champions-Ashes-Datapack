scoreboard players set @s aj.gundyr_skill.animation.gundyr_halberd_skill.local_anim_time 0
tag @s remove aj.gundyr_skill.animation.gundyr_halberd_skill
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.gundyr_skill.disable_command_keyframes
function animated_java:gundyr_skill/zzzzzzzz/animations/gundyr_halberd_skill/tree/leaf_0
tag @s remove aj.gundyr_skill.disable_command_keyframes