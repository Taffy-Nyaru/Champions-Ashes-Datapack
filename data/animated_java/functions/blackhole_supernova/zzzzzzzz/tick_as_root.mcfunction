execute unless score @s aj.blackhole_supernova.rig_loaded = @s aj.blackhole_supernova.rig_loaded run function animated_java:blackhole_supernova/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:blackhole_supernova/zzzzzzzz/animations/tick
function #animated_java:blackhole_supernova/on_tick/as_root