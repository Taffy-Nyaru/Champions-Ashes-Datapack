execute unless score @s aj.nep_void_missle.rig_loaded = @s aj.nep_void_missle.rig_loaded run function animated_java:nep_void_missle/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:nep_void_missle/zzzzzzzz/animations/tick
function #animated_java:nep_void_missle/on_tick/as_root