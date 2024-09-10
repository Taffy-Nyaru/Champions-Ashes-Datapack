execute unless score @s aj.favor_incantations.rig_loaded = @s aj.favor_incantations.rig_loaded run function animated_java:favor_incantations/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:favor_incantations/zzzzzzzz/animations/tick
function #animated_java:favor_incantations/on_tick/as_root