execute unless score @s aj.gravity_lightning_bolt.rig_loaded = @s aj.gravity_lightning_bolt.rig_loaded run function animated_java:gravity_lightning_bolt/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:gravity_lightning_bolt/zzzzzzzz/animations/tick
function #animated_java:gravity_lightning_bolt/on_tick/as_root