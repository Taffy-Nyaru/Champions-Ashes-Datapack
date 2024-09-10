scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.favor_incantations.animation.messemers_orb.local_anim_time 0
scoreboard players set @s aj.favor_incantations.animation.messemers_orb.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:favor_incantations/zzzzzzzz/animations/messemers_orb/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.favor_incantations.animation.messemers_orb