execute unless score @s aj.dynastic_sickleplay.rig_loaded = @s aj.dynastic_sickleplay.rig_loaded run function animated_java:dynastic_sickleplay/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:dynastic_sickleplay/zzzzzzzz/animations/tick
function #animated_java:dynastic_sickleplay/on_tick/as_root