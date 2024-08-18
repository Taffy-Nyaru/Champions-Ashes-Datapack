execute unless score @s aj.gravity_soul_stream.rig_loaded = @s aj.gravity_soul_stream.rig_loaded run function animated_java:gravity_soul_stream/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:gravity_soul_stream/zzzzzzzz/animations/tick
function #animated_java:gravity_soul_stream/on_tick/as_root