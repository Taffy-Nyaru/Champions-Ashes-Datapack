#Used in entity_tick.mcf
execute positioned ~ ~1.5 ~ run function animated_java:bullet_generator/summon
execute as @e[tag=aj.bullet_generator.root,limit=1,sort=nearest] run function animated_java:bullet_generator/animations/bullet_generator/play
scoreboard players set @s custom_stiff_time 100
tag @s[tag=bullet_generated] remove bullet_generated