execute if entity @s[tag=aj.ringed_nightstar.root] run function animated_java:ringed_nightstar/zzzzzzzz/animations/ringed_nightstar/play_as_root
execute if entity @s[tag=!aj.ringed_nightstar.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:ringed_nightstar/animations/ringed_nightstar/play ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]