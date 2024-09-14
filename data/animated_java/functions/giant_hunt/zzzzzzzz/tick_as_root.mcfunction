execute unless score @s aj.giant_hunt.rig_loaded = @s aj.giant_hunt.rig_loaded run function animated_java:giant_hunt/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:giant_hunt/zzzzzzzz/animations/tick
function #animated_java:giant_hunt/on_tick/as_root