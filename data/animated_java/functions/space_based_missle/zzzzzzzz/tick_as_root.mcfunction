execute unless score @s aj.space_based_missle.rig_loaded = @s aj.space_based_missle.rig_loaded run function animated_java:space_based_missle/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:space_based_missle/zzzzzzzz/animations/tick
function #animated_java:space_based_missle/on_tick/as_root