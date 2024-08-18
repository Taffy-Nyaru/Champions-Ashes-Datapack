scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.gravity_orb_projectile.animation.rotation.local_anim_time 0
scoreboard players set @s aj.gravity_orb_projectile.animation.rotation.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:gravity_orb_projectile/zzzzzzzz/animations/rotation/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.gravity_orb_projectile.animation.rotation