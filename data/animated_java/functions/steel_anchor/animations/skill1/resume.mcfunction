execute if entity @s[tag=aj.steel_anchor.root] run function animated_java:steel_anchor/zzzzzzzz/animations/skill1/resume_as_root
execute if entity @s[tag=!aj.steel_anchor.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:steel_anchor/animations/skill1/resume ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]