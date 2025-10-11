execute unless score @s aj.nep_phase2_murky.rig_loaded = @s aj.nep_phase2_murky.rig_loaded run function animated_java:nep_phase2_murky/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:nep_phase2_murky/zzzzzzzz/animations/tick
function #animated_java:nep_phase2_murky/on_tick/as_root