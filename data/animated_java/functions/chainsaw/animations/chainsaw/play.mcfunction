execute if entity @s[tag=aj.chainsaw.root] run function animated_java:chainsaw/zzzzzzzz/animations/chainsaw/play_as_root
execute if entity @s[tag=!aj.chainsaw.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:chainsaw/animations/chainsaw/play ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]