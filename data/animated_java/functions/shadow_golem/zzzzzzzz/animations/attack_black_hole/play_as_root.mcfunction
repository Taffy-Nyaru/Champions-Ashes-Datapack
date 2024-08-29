scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.shadow_golem.animation.attack_black_hole.local_anim_time 0
scoreboard players set @s aj.shadow_golem.animation.attack_black_hole.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:shadow_golem/zzzzzzzz/animations/attack_black_hole/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.shadow_golem.animation.attack_black_hole