scoreboard players set @s aj.rkss_skill.animation.rkss_skill.local_anim_time 0
tag @s remove aj.rkss_skill.animation.rkss_skill
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.rkss_skill.disable_command_keyframes
function animated_java:rkss_skill/zzzzzzzz/animations/rkss_skill/tree/leaf_0
tag @s remove aj.rkss_skill.disable_command_keyframes