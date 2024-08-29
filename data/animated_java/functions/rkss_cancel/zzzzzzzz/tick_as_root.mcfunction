execute unless score @s aj.rkss_cancel.rig_loaded = @s aj.rkss_cancel.rig_loaded run function animated_java:rkss_cancel/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:rkss_cancel/zzzzzzzz/animations/tick
function #animated_java:rkss_cancel/on_tick/as_root