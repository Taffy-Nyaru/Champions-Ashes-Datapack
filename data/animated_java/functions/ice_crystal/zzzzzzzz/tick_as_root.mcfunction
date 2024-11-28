execute unless score @s aj.ice_crystal.rig_loaded = @s aj.ice_crystal.rig_loaded run function animated_java:ice_crystal/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:ice_crystal/zzzzzzzz/animations/tick
function #animated_java:ice_crystal/on_tick/as_root