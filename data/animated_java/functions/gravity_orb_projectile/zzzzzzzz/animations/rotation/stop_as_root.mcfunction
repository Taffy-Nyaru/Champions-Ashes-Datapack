scoreboard players set @s aj.gravity_orb_projectile.animation.rotation.local_anim_time 0
tag @s remove aj.gravity_orb_projectile.animation.rotation
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.gravity_orb_projectile.disable_command_keyframes
function animated_java:gravity_orb_projectile/zzzzzzzz/animations/rotation/tree/leaf_0
tag @s remove aj.gravity_orb_projectile.disable_command_keyframes