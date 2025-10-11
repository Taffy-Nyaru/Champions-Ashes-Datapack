scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.void_slash.animation.nep_void_slash_field.local_anim_time 0
scoreboard players set @s aj.void_slash.animation.nep_void_slash_field.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:void_slash/zzzzzzzz/animations/nep_void_slash_field/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.void_slash.animation.nep_void_slash_field