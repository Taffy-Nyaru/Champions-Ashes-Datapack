scoreboard players set @s aj.f8fq.animation.f8fq.local_anim_time 0
tag @s remove aj.f8fq.animation.f8fq
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.f8fq.disable_command_keyframes
function animated_java:f8fq/zzzzzzzz/animations/f8fq/tree/leaf_0
tag @s remove aj.f8fq.disable_command_keyframes