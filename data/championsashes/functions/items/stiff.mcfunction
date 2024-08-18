scoreboard players add @s stiff_time 1

#Player
execute if entity @s[type=player] run effect give @s slowness 1 100 true
execute if entity @s[type=player] run effect give @s jump_boost 1 200 true
execute if entity @s[type=player] run effect give @s weakness 1 100 true
execute if score @s[type=player] stiff_time >= @s custom_stiff_time run effect clear @s slowness
execute if score @s[type=player] stiff_time >= @s custom_stiff_time run effect clear @s jump_boost
execute if score @s[type=player] stiff_time >= @s custom_stiff_time run effect clear @s weakness

#Mobs
execute if entity @s[type=!player] run data modify entity @s NoAI set value 1b
execute if score @s[type=!player] stiff_time >= @s custom_stiff_time run data modify entity @s[type=!player] NoAI set value 0b
execute if score @s stiff_time >= @s custom_stiff_time run tag @s remove stiff
execute if score @s stiff_time >= @s custom_stiff_time run scoreboard players set @s stiff_time 0