scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.dynastic_sickleplay.animation.dynastic_throw.local_anim_time 0
scoreboard players set @s aj.dynastic_sickleplay.animation.dynastic_throw.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:dynastic_sickleplay/zzzzzzzz/animations/dynastic_throw/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.dynastic_sickleplay.animation.dynastic_throw