scoreboard players set @s aj.gravity_lightning_bolt.animation.gravity_lightning_bolt.local_anim_time 0
tag @s remove aj.gravity_lightning_bolt.animation.gravity_lightning_bolt
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.gravity_lightning_bolt.disable_command_keyframes
function animated_java:gravity_lightning_bolt/zzzzzzzz/animations/gravity_lightning_bolt/tree/leaf_0
tag @s remove aj.gravity_lightning_bolt.disable_command_keyframes