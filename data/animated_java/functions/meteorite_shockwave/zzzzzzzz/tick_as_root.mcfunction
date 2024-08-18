execute unless score @s aj.meteorite_shockwave.rig_loaded = @s aj.meteorite_shockwave.rig_loaded run function animated_java:meteorite_shockwave/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:meteorite_shockwave/zzzzzzzz/animations/tick
function #animated_java:meteorite_shockwave/on_tick/as_root