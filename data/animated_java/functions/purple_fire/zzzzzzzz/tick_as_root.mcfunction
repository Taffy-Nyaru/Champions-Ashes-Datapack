execute unless score @s aj.purple_fire.rig_loaded = @s aj.purple_fire.rig_loaded run function animated_java:purple_fire/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:purple_fire/zzzzzzzz/animations/tick
function #animated_java:purple_fire/on_tick/as_root