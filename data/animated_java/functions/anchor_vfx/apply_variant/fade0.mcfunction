execute if entity @s[tag=aj.anchor_vfx.root] run function animated_java:anchor_vfx/zzzzzzzz/apply_variant/fade0/as_root
execute if entity @s[tag=!aj.anchor_vfx.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:anchor_vfx/apply_variant/fade0 ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]