scoreboard players set @s aj.gravity_orb.animation.explosion.local_anim_time 0
tag @s remove aj.gravity_orb.animation.explosion
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.gravity_orb.disable_command_keyframes
function animated_java:gravity_orb/zzzzzzzz/animations/explosion/tree/leaf_0
tag @s remove aj.gravity_orb.disable_command_keyframes