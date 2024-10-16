execute unless score @s aj.destined_death.rig_loaded = @s aj.destined_death.rig_loaded run function animated_java:destined_death/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:destined_death/zzzzzzzz/animations/tick
function #animated_java:destined_death/on_tick/as_root