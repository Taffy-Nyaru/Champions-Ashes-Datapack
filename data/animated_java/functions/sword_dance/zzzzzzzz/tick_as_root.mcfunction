execute unless score @s aj.sword_dance.rig_loaded = @s aj.sword_dance.rig_loaded run function animated_java:sword_dance/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:sword_dance/zzzzzzzz/animations/tick
function #animated_java:sword_dance/on_tick/as_root