execute unless score @s aj.zamor_ice_storm.rig_loaded = @s aj.zamor_ice_storm.rig_loaded run function animated_java:zamor_ice_storm/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:zamor_ice_storm/zzzzzzzz/animations/tick
function #animated_java:zamor_ice_storm/on_tick/as_root