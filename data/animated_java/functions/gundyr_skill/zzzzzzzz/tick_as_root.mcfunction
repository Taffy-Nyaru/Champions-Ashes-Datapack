execute unless score @s aj.gundyr_skill.rig_loaded = @s aj.gundyr_skill.rig_loaded run function animated_java:gundyr_skill/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:gundyr_skill/zzzzzzzz/animations/tick
function #animated_java:gundyr_skill/on_tick/as_root