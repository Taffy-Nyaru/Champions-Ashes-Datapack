scoreboard players set @s aj.destined_death.animation.destined_death.local_anim_time 0
tag @s remove aj.destined_death.animation.destined_death
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.destined_death.disable_command_keyframes
function animated_java:destined_death/zzzzzzzz/animations/destined_death/tree/leaf_0
tag @s remove aj.destined_death.disable_command_keyframes