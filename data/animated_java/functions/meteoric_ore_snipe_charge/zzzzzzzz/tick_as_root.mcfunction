execute unless score @s aj.meteoric_ore_snipe_charge.rig_loaded = @s aj.meteoric_ore_snipe_charge.rig_loaded run function animated_java:meteoric_ore_snipe_charge/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:meteoric_ore_snipe_charge/zzzzzzzz/animations/tick
function #animated_java:meteoric_ore_snipe_charge/on_tick/as_root