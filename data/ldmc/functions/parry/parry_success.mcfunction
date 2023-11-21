execute if entity @s[type=player] run effect give @s slowness 1 200 true
execute if entity @s[type=player] run effect give @s jump_boost 1 200 true
execute if score @s[type=player] noAI_time matches 60.. run effect clear @s slowness
execute if score @s[type=player] noAI_time matches 60.. run effect clear @s jump_boost

execute if entity @s[type=!player] run data modify entity @s NoAI set value 1b
scoreboard players add @s noAI_time 1
execute if score @s[type=!player] noAI_time matches 60.. run data modify entity @s[type=!player] NoAI set value 0b
execute if score @s noAI_time matches 60.. run tag @s remove parry_success
execute if score @s noAI_time matches 60.. run scoreboard players set @s noAI_time 0

effect give @s weakness 3 200 true
execute if score @s noAI_time matches 60.. run effect clear @s weakness
execute if score @s noAI_time matches 1 run damage @s 20 ldmc:bloodloss