execute if entity @s[tag=aj.void_slash.root] run function animated_java:void_slash/zzzzzzzz/animations/void_slash/tween_resume_as_root
execute if entity @s[tag=!aj.void_slash.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:void_slash/animations/void_slash/tween_resume ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]