execute unless score @s aj.eletric_shield.rig_loaded = @s aj.eletric_shield.rig_loaded run function animated_java:eletric_shield/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:eletric_shield/zzzzzzzz/animations/tick
function #animated_java:eletric_shield/on_tick/as_root