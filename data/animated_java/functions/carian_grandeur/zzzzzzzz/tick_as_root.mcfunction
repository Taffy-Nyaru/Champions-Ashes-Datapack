execute unless score @s aj.carian_grandeur.rig_loaded = @s aj.carian_grandeur.rig_loaded run function animated_java:carian_grandeur/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:carian_grandeur/zzzzzzzz/animations/tick
function #animated_java:carian_grandeur/on_tick/as_root