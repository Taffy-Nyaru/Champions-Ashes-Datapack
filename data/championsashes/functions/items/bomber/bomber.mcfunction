execute if entity @s[scores={falldistance=4..}] run tag @s add disableFallDamage
effect give @s resistance 1 1 true
execute at @s unless entity @s[predicate=championsashes:using_item/firework_rocket] unless entity @e[distance=..3,type=item,predicate=championsashes:misc/firework_rocket] run give @s firework_rocket 1