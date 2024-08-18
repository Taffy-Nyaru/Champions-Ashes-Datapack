execute unless score @s aj.starscaller.rig_loaded = @s aj.starscaller.rig_loaded run function animated_java:starscaller/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:starscaller/zzzzzzzz/animations/tick
function #animated_java:starscaller/on_tick/as_root