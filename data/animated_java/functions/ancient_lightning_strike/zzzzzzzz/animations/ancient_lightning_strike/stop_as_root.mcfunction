scoreboard players set @s aj.ancient_lightning_strike.animation.ancient_lightning_strike.local_anim_time 0
tag @s remove aj.ancient_lightning_strike.animation.ancient_lightning_strike
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.ancient_lightning_strike.disable_command_keyframes
function animated_java:ancient_lightning_strike/zzzzzzzz/animations/ancient_lightning_strike/tree/leaf_0
tag @s remove aj.ancient_lightning_strike.disable_command_keyframes