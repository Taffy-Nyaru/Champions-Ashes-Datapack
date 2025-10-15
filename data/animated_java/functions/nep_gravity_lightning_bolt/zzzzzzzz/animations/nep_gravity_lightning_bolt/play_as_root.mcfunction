scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.nep_gravity_lightning_bolt.animation.nep_gravity_lightning_bolt.local_anim_time 0
scoreboard players set @s aj.nep_gravity_lightning_bolt.animation.nep_gravity_lightning_bolt.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:nep_gravity_lightning_bolt/zzzzzzzz/animations/nep_gravity_lightning_bolt/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.nep_gravity_lightning_bolt.animation.nep_gravity_lightning_bolt