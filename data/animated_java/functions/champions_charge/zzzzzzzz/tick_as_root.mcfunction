execute unless score @s aj.champions_charge.rig_loaded = @s aj.champions_charge.rig_loaded run function animated_java:champions_charge/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:champions_charge/zzzzzzzz/animations/tick
function #animated_java:champions_charge/on_tick/as_root