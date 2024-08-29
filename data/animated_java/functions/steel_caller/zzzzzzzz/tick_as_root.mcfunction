execute unless score @s aj.steel_caller.rig_loaded = @s aj.steel_caller.rig_loaded run function animated_java:steel_caller/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:steel_caller/zzzzzzzz/animations/tick
function #animated_java:steel_caller/on_tick/as_root