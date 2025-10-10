scoreboard players set @s aj.nep_ringed_knight_straight_sword.animation.skill.local_anim_time 0
tag @s remove aj.nep_ringed_knight_straight_sword.animation.skill
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.nep_ringed_knight_straight_sword.disable_command_keyframes
function animated_java:nep_ringed_knight_straight_sword/zzzzzzzz/animations/skill/tree/leaf_0
tag @s remove aj.nep_ringed_knight_straight_sword.disable_command_keyframes