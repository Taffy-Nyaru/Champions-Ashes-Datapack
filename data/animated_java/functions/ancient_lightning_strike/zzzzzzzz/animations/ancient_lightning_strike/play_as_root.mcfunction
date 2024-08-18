scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.ancient_lightning_strike.animation.ancient_lightning_strike.local_anim_time 0
scoreboard players set @s aj.ancient_lightning_strike.animation.ancient_lightning_strike.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:ancient_lightning_strike/zzzzzzzz/animations/ancient_lightning_strike/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.ancient_lightning_strike.animation.ancient_lightning_strike