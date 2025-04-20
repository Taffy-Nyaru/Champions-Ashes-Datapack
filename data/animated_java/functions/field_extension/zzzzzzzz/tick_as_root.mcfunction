execute unless score @s aj.field_extension.rig_loaded = @s aj.field_extension.rig_loaded run function animated_java:field_extension/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:field_extension/zzzzzzzz/animations/tick
function #animated_java:field_extension/on_tick/as_root