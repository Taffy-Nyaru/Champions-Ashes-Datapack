scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.shadow_golem.animation.attack_right_hand.local_anim_time 0
scoreboard players set @s aj.shadow_golem.animation.attack_right_hand.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:shadow_golem/zzzzzzzz/animations/attack_right_hand/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.shadow_golem.animation.attack_right_hand