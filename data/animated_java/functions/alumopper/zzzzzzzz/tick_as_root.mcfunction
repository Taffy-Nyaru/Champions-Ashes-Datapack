execute unless score @s aj.alumopper.rig_loaded = @s aj.alumopper.rig_loaded run function animated_java:alumopper/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:alumopper/zzzzzzzz/animations/tick
function #animated_java:alumopper/on_tick/as_root