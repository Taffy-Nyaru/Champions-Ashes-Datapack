execute as @e[distance=..20,type=marker,tag=void_marker] run scoreboard players add @s void_eye_timer 1
execute as @e[distance=..20,type=marker,tag=void_marker,scores={void_eye_timer=1..}] run function championsashes:items/void_eye/effect

execute at @e[tag=void_marker,type=marker] unless block ~ ~ ~ end_gateway run setblock ~ ~ ~ end_gateway destroy
execute if entity @e[type=#minecraft:impact_projectiles,predicate=!championsashes:misc/arrow_inground,distance=..10] unless entity @e[type=marker,tag=void_marker,distance=..10] run summon marker ^ ^ ^2 {Tags:["void_marker"]}