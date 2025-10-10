execute unless score @s aj.nep_ringed_knight_straight_sword.rig_loaded = @s aj.nep_ringed_knight_straight_sword.rig_loaded run function animated_java:nep_ringed_knight_straight_sword/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:nep_ringed_knight_straight_sword/zzzzzzzz/animations/tick
function #animated_java:nep_ringed_knight_straight_sword/on_tick/as_root