execute unless score @s aj.nep_phase3_teleport.rig_loaded = @s aj.nep_phase3_teleport.rig_loaded run function animated_java:nep_phase3_teleport/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:nep_phase3_teleport/zzzzzzzz/animations/tick
function #animated_java:nep_phase3_teleport/on_tick/as_root