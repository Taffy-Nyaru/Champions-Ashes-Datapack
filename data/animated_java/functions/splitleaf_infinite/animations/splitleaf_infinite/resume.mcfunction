execute if entity @s[tag=aj.splitleaf_infinite.root] run function animated_java:splitleaf_infinite/zzzzzzzz/animations/splitleaf_infinite/resume_as_root
execute if entity @s[tag=!aj.splitleaf_infinite.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:splitleaf_infinite/animations/splitleaf_infinite/resume ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]