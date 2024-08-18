execute unless score @s aj.gravity_sniper.rig_loaded = @s aj.gravity_sniper.rig_loaded run function animated_java:gravity_sniper/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:gravity_sniper/zzzzzzzz/animations/tick
function #animated_java:gravity_sniper/on_tick/as_root