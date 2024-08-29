scoreboard players set @s aj.death_blighted.animation.death_blighted.local_anim_time 0
tag @s remove aj.death_blighted.animation.death_blighted
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.death_blighted.disable_command_keyframes
function animated_java:death_blighted/zzzzzzzz/animations/death_blighted/tree/leaf_0
tag @s remove aj.death_blighted.disable_command_keyframes