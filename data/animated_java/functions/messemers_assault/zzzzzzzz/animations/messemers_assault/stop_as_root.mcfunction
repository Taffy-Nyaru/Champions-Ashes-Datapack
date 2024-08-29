scoreboard players set @s aj.messemers_assault.animation.messemers_assault.local_anim_time 0
tag @s remove aj.messemers_assault.animation.messemers_assault
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.messemers_assault.disable_command_keyframes
function animated_java:messemers_assault/zzzzzzzz/animations/messemers_assault/tree/leaf_0
tag @s remove aj.messemers_assault.disable_command_keyframes