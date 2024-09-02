execute unless score @s aj.flame_of_lorian.rig_loaded = @s aj.flame_of_lorian.rig_loaded run function animated_java:flame_of_lorian/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:flame_of_lorian/zzzzzzzz/animations/tick
function #animated_java:flame_of_lorian/on_tick/as_root