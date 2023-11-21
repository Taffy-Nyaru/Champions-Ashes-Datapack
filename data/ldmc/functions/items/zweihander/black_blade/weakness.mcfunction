execute as @e[nbt=!{SelectedItem:{tag:{id:"ldmc:zweihander"}}}] at @s if block ~ ~ ~ water at @e[type=lightning_bolt,tag=Thunder] if entity @s[distance=..5] run effect give @s[distance=..5] weakness 60 1
execute as @e[nbt=!{SelectedItem:{tag:{id:"ldmc:zweihander"}}}] at @e[type=lightning_bolt,tag=Thunder] if entity @s[distance=..5] if predicate ldmc:if_raining run effect give @s weakness 60 1

#execute as @e at @a if entity @s[distance=..5] run data get entity @s[distance=..5] Attributes[{Name:"minecraft:generic.armor"}].Base