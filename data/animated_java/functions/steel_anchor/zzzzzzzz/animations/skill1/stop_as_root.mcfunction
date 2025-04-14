scoreboard players set @s aj.steel_anchor.animation.skill1.local_anim_time 0
tag @s remove aj.steel_anchor.animation.skill1
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.steel_anchor.disable_command_keyframes
function animated_java:steel_anchor/zzzzzzzz/animations/skill1/tree/leaf_0
tag @s remove aj.steel_anchor.disable_command_keyframes