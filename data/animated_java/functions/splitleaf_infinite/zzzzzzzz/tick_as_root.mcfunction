execute unless score @s aj.splitleaf_infinite.rig_loaded = @s aj.splitleaf_infinite.rig_loaded run function animated_java:splitleaf_infinite/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:splitleaf_infinite/zzzzzzzz/animations/tick
function #animated_java:splitleaf_infinite/on_tick/as_root