execute unless score @s aj.ringed_nightstar.rig_loaded = @s aj.ringed_nightstar.rig_loaded run function animated_java:ringed_nightstar/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:ringed_nightstar/zzzzzzzz/animations/tick
function #animated_java:ringed_nightstar/on_tick/as_root