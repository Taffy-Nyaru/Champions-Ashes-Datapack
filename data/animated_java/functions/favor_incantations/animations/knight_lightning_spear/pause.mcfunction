execute if entity @s[tag=aj.favor_incantations.root] run function animated_java:favor_incantations/zzzzzzzz/animations/knight_lightning_spear/pause_as_root
execute if entity @s[tag=!aj.favor_incantations.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:favor_incantations/animations/knight_lightning_spear/pause ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]