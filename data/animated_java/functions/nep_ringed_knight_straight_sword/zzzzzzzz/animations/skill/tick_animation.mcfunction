scoreboard players add @s aj.nep_ringed_knight_straight_sword.animation.skill.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.nep_ringed_knight_straight_sword.animation.skill.local_anim_time
function animated_java:nep_ringed_knight_straight_sword/zzzzzzzz/animations/skill/apply_frame_as_root
execute if score @s aj.nep_ringed_knight_straight_sword.animation.skill.local_anim_time matches 88.. run function animated_java:nep_ringed_knight_straight_sword/zzzzzzzz/animations/skill/end