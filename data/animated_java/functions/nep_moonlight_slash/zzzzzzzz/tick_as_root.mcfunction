execute unless score @s aj.nep_moonlight_slash.rig_loaded = @s aj.nep_moonlight_slash.rig_loaded run function animated_java:nep_moonlight_slash/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:nep_moonlight_slash/zzzzzzzz/animations/tick
function #animated_java:nep_moonlight_slash/on_tick/as_root