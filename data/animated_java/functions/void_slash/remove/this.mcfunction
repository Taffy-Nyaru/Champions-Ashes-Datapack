execute if entity @s[tag=aj.void_slash.root] run function animated_java:void_slash/zzzzzzzz/remove/as_root
execute if entity @s[tag=!aj.void_slash.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:void_slash/remove/this ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]