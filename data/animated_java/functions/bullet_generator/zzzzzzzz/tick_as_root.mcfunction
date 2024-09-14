execute unless score @s aj.bullet_generator.rig_loaded = @s aj.bullet_generator.rig_loaded run function animated_java:bullet_generator/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:bullet_generator/zzzzzzzz/animations/tick
function #animated_java:bullet_generator/on_tick/as_root