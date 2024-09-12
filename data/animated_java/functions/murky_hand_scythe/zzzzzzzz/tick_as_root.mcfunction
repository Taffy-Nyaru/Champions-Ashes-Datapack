execute unless score @s aj.murky_hand_scythe.rig_loaded = @s aj.murky_hand_scythe.rig_loaded run function animated_java:murky_hand_scythe/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:murky_hand_scythe/zzzzzzzz/animations/tick
function #animated_java:murky_hand_scythe/on_tick/as_root