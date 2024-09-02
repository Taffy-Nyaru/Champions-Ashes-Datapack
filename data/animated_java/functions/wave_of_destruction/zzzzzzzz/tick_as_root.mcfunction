execute unless score @s aj.wave_of_destruction.rig_loaded = @s aj.wave_of_destruction.rig_loaded run function animated_java:wave_of_destruction/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:wave_of_destruction/zzzzzzzz/animations/tick
function #animated_java:wave_of_destruction/on_tick/as_root