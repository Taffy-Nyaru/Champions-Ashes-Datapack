execute unless score @s aj.kamui.rig_loaded = @s aj.kamui.rig_loaded run function animated_java:kamui/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:kamui/zzzzzzzz/animations/tick
function #animated_java:kamui/on_tick/as_root