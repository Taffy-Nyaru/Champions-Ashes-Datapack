scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.space_based_missle.animation.lockon_target.local_anim_time 0
scoreboard players set @s aj.space_based_missle.animation.lockon_target.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:space_based_missle/zzzzzzzz/animations/lockon_target/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.space_based_missle.animation.lockon_target