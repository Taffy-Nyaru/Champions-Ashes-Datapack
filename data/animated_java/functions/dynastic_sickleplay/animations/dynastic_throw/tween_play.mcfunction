execute if entity @s[tag=aj.dynastic_sickleplay.root] run function animated_java:dynastic_sickleplay/zzzzzzzz/animations/dynastic_throw/tween_play_as_root
execute if entity @s[tag=!aj.dynastic_sickleplay.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:dynastic_sickleplay/animations/dynastic_throw/tween_play ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]