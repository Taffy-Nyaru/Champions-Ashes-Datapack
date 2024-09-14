execute unless score @s aj.chainsaw.rig_loaded = @s aj.chainsaw.rig_loaded run function animated_java:chainsaw/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:chainsaw/zzzzzzzz/animations/tick
function #animated_java:chainsaw/on_tick/as_root