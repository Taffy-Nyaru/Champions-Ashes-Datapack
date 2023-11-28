execute unless score @s aj.aquamarine_dagger.rig_loaded = @s aj.aquamarine_dagger.rig_loaded run function animated_java:aquamarine_dagger/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:aquamarine_dagger/zzzzzzzz/animations/tick
function #animated_java:aquamarine_dagger/on_tick/as_root