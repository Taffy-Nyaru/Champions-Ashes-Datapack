execute unless score @s aj.blind_spot.rig_loaded = @s aj.blind_spot.rig_loaded run function animated_java:blind_spot/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:blind_spot/zzzzzzzz/animations/tick
function #animated_java:blind_spot/on_tick/as_root