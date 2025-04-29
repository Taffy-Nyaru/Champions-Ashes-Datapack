damage @s 5 player_attack by @a[limit=1,sort=nearest,tag=helicopter]
scoreboard players add @s ca.items.splitleaf_stiff_time 1

#Player
execute if entity @s[type=player] run effect give @s slowness 1 100 true
execute if entity @s[type=player] run effect give @s jump_boost 1 100 true
execute if entity @s[type=player] run effect give @s weakness 1 100 true
execute if score @s[type=player] ca.items.splitleaf_stiff_time matches 10.. run effect clear @s slowness
execute if score @s[type=player] ca.items.splitleaf_stiff_time matches 10.. run effect clear @s jump_boost
execute if score @s[type=player] ca.items.splitleaf_stiff_time matches 10.. run effect clear @s weakness

#Mobs
execute if entity @s[type=!player] run data modify entity @s NoAI set value 1b
execute if score @s[type=!player] ca.items.splitleaf_stiff_time matches 10.. run data modify entity @s[type=!player] NoAI set value 0b
execute if score @s ca.items.splitleaf_stiff_time matches 10.. run tag @s remove splitleaf_stiff
execute if score @s ca.items.splitleaf_stiff_time matches 10.. run scoreboard players set @s ca.items.splitleaf_stiff_time 0