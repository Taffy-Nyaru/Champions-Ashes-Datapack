execute if entity @s[tag=aj.water_vfx.root] run function animated_java:water_vfx/zzzzzzzz/remove/as_root
execute if entity @s[tag=!aj.water_vfx.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:water_vfx/remove/this ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]