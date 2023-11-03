execute as @s[scores={falldistance=4..}] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water run effect give @s slow_falling 1 0 true
effect give @s resistance 1 2 true
execute at @s unless entity @s[nbt={Inventory:[{id:"minecraft:firework_rocket"}]}] unless entity @e[distance=..3,type=item,nbt={Item:{id:"minecraft:firework_rocket"}}] run give @s firework_rocket 1