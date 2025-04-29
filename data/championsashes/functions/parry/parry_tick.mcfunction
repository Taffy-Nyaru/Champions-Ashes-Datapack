#25 tick parry time
scoreboard players add @s parry_time 1
execute if score @s parry_time matches 1..25 run effect give @s jump_boost 1 200 true
execute if score @s parry_time matches 1..25 run effect give @s slowness 1 200 true
execute if score @s parry_time matches 10 run damage @s 1 minecraft:mob_attack by @e[type=piglin_brute,tag=shield_breaker,limit=1,sort=nearest]

execute as @e[distance=..7,type=!#championsashes:special_entities,limit=1,sort=nearest,tag=raycast.target] on target if entity @s[type=player,tag=parry] run tag @e[distance=..7,type=!#championsashes:special_entities,limit=1,sort=nearest,tag=raycast.target] add parry_target
execute if score @s[advancements={championsashes:hurt_players_blocked=true}] parry_time matches 1..25 as @e[limit=1,sort=nearest,tag=raycast.target] on target if entity @s[type=player,tag=parry] run tag @e[distance=..7,type=!#championsashes:special_entities,limit=1,sort=nearest,tag=parry_target] add parry_success

execute if score @s parry_time matches 25.. run tag @s remove parry
execute if score @s parry_time matches 25.. run tag @s add parry_used
execute if score @s parry_time matches 25.. run scoreboard players set @s parry_time 0

execute if entity @e[distance=..5,type=!#championsashes:friendlycreature,tag=parry_success] run effect clear @s jump_boost
execute if entity @e[distance=..5,type=!#championsashes:friendlycreature,tag=parry_success] run effect clear @s slowness