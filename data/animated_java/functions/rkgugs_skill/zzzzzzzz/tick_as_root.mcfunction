execute unless score @s aj.rkgugs_skill.rig_loaded = @s aj.rkgugs_skill.rig_loaded run function animated_java:rkgugs_skill/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:rkgugs_skill/zzzzzzzz/animations/tick
function #animated_java:rkgugs_skill/on_tick/as_root