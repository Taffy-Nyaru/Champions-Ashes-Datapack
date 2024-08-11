execute at @s[predicate=!championsashes:using_item/black_blade] as @e[distance=..80] at @s if block ~ ~ ~ water at @e[type=lightning_bolt,tag=Thunder] if entity @s[distance=..5] run effect give @s[distance=..5] weakness 60 1
execute at @s[predicate=!championsashes:using_item/black_blade] as @e[distance=..80] at @e[type=lightning_bolt,tag=Thunder] if entity @s[distance=..5] if predicate championsashes:if_raining run effect give @s weakness 60 1

#execute as @e at @a if entity @s[distance=..5] run data get entity @s[distance=..5] Attributes[{Name:"minecraft:generic.armor"}].Base