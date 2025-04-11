execute unless score @s aj.anchor_vfx.rig_loaded = @s aj.anchor_vfx.rig_loaded run function animated_java:anchor_vfx/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:anchor_vfx/zzzzzzzz/animations/tick
function #animated_java:anchor_vfx/on_tick/as_root