execute unless score @s aj.nep_fume_ugs_skills.rig_loaded = @s aj.nep_fume_ugs_skills.rig_loaded run function animated_java:nep_fume_ugs_skills/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:nep_fume_ugs_skills/zzzzzzzz/animations/tick
function #animated_java:nep_fume_ugs_skills/on_tick/as_root