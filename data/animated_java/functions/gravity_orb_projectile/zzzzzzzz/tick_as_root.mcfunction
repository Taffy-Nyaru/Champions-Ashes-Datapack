execute unless score @s aj.gravity_orb_projectile.rig_loaded = @s aj.gravity_orb_projectile.rig_loaded run function animated_java:gravity_orb_projectile/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:gravity_orb_projectile/zzzzzzzz/animations/tick
function #animated_java:gravity_orb_projectile/on_tick/as_root