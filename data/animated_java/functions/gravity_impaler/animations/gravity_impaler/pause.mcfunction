execute if entity @s[tag=aj.gravity_impaler.root] run function animated_java:gravity_impaler/zzzzzzzz/animations/gravity_impaler/pause_as_root
execute if entity @s[tag=!aj.gravity_impaler.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:gravity_impaler/animations/gravity_impaler/pause ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]