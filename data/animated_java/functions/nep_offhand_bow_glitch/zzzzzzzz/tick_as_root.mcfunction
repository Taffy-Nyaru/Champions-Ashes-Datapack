execute unless score @s aj.nep_offhand_bow_glitch.rig_loaded = @s aj.nep_offhand_bow_glitch.rig_loaded run function animated_java:nep_offhand_bow_glitch/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:nep_offhand_bow_glitch/zzzzzzzz/animations/tick
function #animated_java:nep_offhand_bow_glitch/on_tick/as_root