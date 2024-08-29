execute unless score @s aj.crystal_blade.rig_loaded = @s aj.crystal_blade.rig_loaded run function animated_java:crystal_blade/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:crystal_blade/zzzzzzzz/animations/tick
function #animated_java:crystal_blade/on_tick/as_root