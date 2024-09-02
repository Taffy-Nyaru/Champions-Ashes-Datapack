scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.wave_of_destruction.animation.wave_of_destruction.local_anim_time 0
scoreboard players set @s aj.wave_of_destruction.animation.wave_of_destruction.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:wave_of_destruction/zzzzzzzz/animations/wave_of_destruction/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.wave_of_destruction.animation.wave_of_destruction