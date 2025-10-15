scoreboard players set @s aj.nep_gravity_lightning_bolt.animation.nep_gravity_lightning_bolt.local_anim_time 0
tag @s remove aj.nep_gravity_lightning_bolt.animation.nep_gravity_lightning_bolt
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.nep_gravity_lightning_bolt.disable_command_keyframes
function animated_java:nep_gravity_lightning_bolt/zzzzzzzz/animations/nep_gravity_lightning_bolt/tree/leaf_0
tag @s remove aj.nep_gravity_lightning_bolt.disable_command_keyframes