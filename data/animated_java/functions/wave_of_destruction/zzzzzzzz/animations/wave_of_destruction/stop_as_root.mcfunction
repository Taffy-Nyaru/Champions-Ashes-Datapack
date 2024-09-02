scoreboard players set @s aj.wave_of_destruction.animation.wave_of_destruction.local_anim_time 0
tag @s remove aj.wave_of_destruction.animation.wave_of_destruction
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.wave_of_destruction.disable_command_keyframes
function animated_java:wave_of_destruction/zzzzzzzz/animations/wave_of_destruction/tree/leaf_0
tag @s remove aj.wave_of_destruction.disable_command_keyframes