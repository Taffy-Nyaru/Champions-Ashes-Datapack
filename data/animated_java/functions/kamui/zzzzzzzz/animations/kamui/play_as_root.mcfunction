scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.kamui.animation.kamui.local_anim_time 0
scoreboard players set @s aj.kamui.animation.kamui.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:kamui/zzzzzzzz/animations/kamui/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.kamui.animation.kamui