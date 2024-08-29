execute unless score @s aj.shadow_golem.rig_loaded = @s aj.shadow_golem.rig_loaded run function animated_java:shadow_golem/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:shadow_golem/zzzzzzzz/animations/tick
function #animated_java:shadow_golem/on_tick/as_root