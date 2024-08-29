execute unless score @s aj.blade_of_peril.rig_loaded = @s aj.blade_of_peril.rig_loaded run function animated_java:blade_of_peril/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:blade_of_peril/zzzzzzzz/animations/tick
function #animated_java:blade_of_peril/on_tick/as_root