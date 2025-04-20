scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.field_extension.animation.standby.local_anim_time 0
scoreboard players set @s aj.field_extension.animation.standby.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:field_extension/zzzzzzzz/animations/standby/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.field_extension.animation.standby