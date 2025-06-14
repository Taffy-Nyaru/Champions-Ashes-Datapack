execute unless score @s aj.electric_beacon.rig_loaded = @s aj.electric_beacon.rig_loaded run function animated_java:electric_beacon/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:electric_beacon/zzzzzzzz/animations/tick
function #animated_java:electric_beacon/on_tick/as_root