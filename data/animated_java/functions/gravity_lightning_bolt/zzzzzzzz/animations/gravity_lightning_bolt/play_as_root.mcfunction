scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.gravity_lightning_bolt.animation.gravity_lightning_bolt.local_anim_time 0
scoreboard players set @s aj.gravity_lightning_bolt.animation.gravity_lightning_bolt.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:gravity_lightning_bolt/zzzzzzzz/animations/gravity_lightning_bolt/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.gravity_lightning_bolt.animation.gravity_lightning_bolt