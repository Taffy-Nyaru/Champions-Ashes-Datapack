execute unless score @s aj.rakshasa_great_katana.rig_loaded = @s aj.rakshasa_great_katana.rig_loaded run function animated_java:rakshasa_great_katana/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:rakshasa_great_katana/zzzzzzzz/animations/tick
function #animated_java:rakshasa_great_katana/on_tick/as_root