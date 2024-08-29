execute unless score @s aj.death_blighted.rig_loaded = @s aj.death_blighted.rig_loaded run function animated_java:death_blighted/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:death_blighted/zzzzzzzz/animations/tick
function #animated_java:death_blighted/on_tick/as_root