execute unless score @s aj.write.rig_loaded = @s aj.write.rig_loaded run function animated_java:write/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:write/zzzzzzzz/animations/tick
function #animated_java:write/on_tick/as_root