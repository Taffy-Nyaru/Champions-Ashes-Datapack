scoreboard players add @s aj.shadow_golem.animation.attack_left_hand.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.shadow_golem.animation.attack_left_hand.local_anim_time
function animated_java:shadow_golem/zzzzzzzz/animations/attack_left_hand/apply_frame_as_root
execute if score @s aj.shadow_golem.animation.attack_left_hand.local_anim_time matches 22.. run function animated_java:shadow_golem/zzzzzzzz/animations/attack_left_hand/end