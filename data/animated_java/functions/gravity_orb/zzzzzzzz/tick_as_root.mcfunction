execute unless score @s aj.gravity_orb.rig_loaded = @s aj.gravity_orb.rig_loaded run function animated_java:gravity_orb/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:gravity_orb/zzzzzzzz/animations/tick
function #animated_java:gravity_orb/on_tick/as_root