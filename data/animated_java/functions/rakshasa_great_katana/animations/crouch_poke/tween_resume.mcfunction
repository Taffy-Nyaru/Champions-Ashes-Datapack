execute if entity @s[tag=aj.rakshasa_great_katana.root] run function animated_java:rakshasa_great_katana/zzzzzzzz/animations/crouch_poke/tween_resume_as_root
execute if entity @s[tag=!aj.rakshasa_great_katana.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:rakshasa_great_katana/animations/crouch_poke/tween_resume ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]