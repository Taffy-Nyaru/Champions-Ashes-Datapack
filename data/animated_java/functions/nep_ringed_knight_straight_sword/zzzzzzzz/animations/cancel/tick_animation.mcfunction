scoreboard players add @s aj.nep_ringed_knight_straight_sword.animation.cancel.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.nep_ringed_knight_straight_sword.animation.cancel.local_anim_time
function animated_java:nep_ringed_knight_straight_sword/zzzzzzzz/animations/cancel/apply_frame_as_root
execute if score @s aj.nep_ringed_knight_straight_sword.animation.cancel.local_anim_time matches 17.. run function animated_java:nep_ringed_knight_straight_sword/zzzzzzzz/animations/cancel/end