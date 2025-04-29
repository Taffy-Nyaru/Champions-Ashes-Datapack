scoreboard players add @s ca.entity.stiff_time 1
#Player
execute if entity @s[type=player] run effect give @s slowness 1 100 true
execute if entity @s[type=player] run effect give @s jump_boost 1 100 true
execute if entity @s[type=player] run effect give @s weakness 1 100 true
execute if score @s[type=player] ca.entity.stiff_time matches 5.. run effect clear @s slowness
execute if score @s[type=player] ca.entity.stiff_time matches 5.. run effect clear @s jump_boost
execute if score @s[type=player] ca.entity.stiff_time matches 5.. run effect clear @s weakness

#Mobs
execute if entity @s[type=!player] run data modify entity @s NoAI set value 1b
execute if score @s[type=!player] ca.entity.stiff_time matches 5.. run data modify entity @s[type=!player] NoAI set value 0b
execute if score @s ca.entity.stiff_time matches 5.. run tag @s remove frost_stiff
execute if score @s ca.entity.stiff_time matches 5.. run scoreboard players set @s ca.entity.stiff_time 0