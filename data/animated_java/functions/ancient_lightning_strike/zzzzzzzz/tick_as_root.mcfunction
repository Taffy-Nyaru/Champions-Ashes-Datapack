execute unless score @s aj.ancient_lightning_strike.rig_loaded = @s aj.ancient_lightning_strike.rig_loaded run function animated_java:ancient_lightning_strike/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:ancient_lightning_strike/zzzzzzzz/animations/tick
function #animated_java:ancient_lightning_strike/on_tick/as_root