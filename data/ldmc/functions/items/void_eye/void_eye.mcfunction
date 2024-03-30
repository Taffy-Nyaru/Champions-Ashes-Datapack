execute if entity @e[type=#minecraft:impact_projectiles,predicate=!ldmc:misc/arrow_inground,distance=..5] run tag @s add void
execute if entity @e[type=#minecraft:impact_projectiles,predicate=!ldmc:misc/arrow_inground,distance=..5] unless entity @e[type=marker,tag=void_marker,distance=..5] run summon marker ^ ^ ^2 {Tags:["void_marker"]}
execute if entity @s[tag=void] as @e[type=marker,tag=void_marker] run scoreboard players add @s void_eye_timer 1
execute as @e[type=marker,tag=void_marker,scores={void_eye_timer=1..}] run function ldmc:items/void_eye/effect