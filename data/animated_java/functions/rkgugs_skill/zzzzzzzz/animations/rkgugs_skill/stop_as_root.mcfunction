scoreboard players set @s aj.rkgugs_skill.animation.rkgugs_skill.local_anim_time 0
tag @s remove aj.rkgugs_skill.animation.rkgugs_skill
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.rkgugs_skill.disable_command_keyframes
function animated_java:rkgugs_skill/zzzzzzzz/animations/rkgugs_skill/tree/leaf_0
tag @s remove aj.rkgugs_skill.disable_command_keyframes