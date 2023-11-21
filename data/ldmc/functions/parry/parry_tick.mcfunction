# ≈11 frames parry time
scoreboard players add @s parry_time 1
execute if score @s parry_time matches 1..11 run effect give @s jump_boost 1 200 true
execute if score @s parry_time matches 1..11 run effect give @s slowness 1 200 true
execute as @e[limit=1,sort=nearest,tag=raycast.target,distance=..5] on target if entity @s[type=player,tag=parry] run tag @e[limit=1,sort=nearest,tag=raycast.target,distance=..5] add parry_target
execute if score @s[advancements={ldmc:hurt_players_blocked=true}] parry_time matches 1..11 as @e[limit=1,sort=nearest,tag=raycast.target] on target if entity @s[type=player,tag=parry] run tag @e[tag=parry_target] add parry_success
execute if score @s parry_time matches 11.. run damage @s 1 minecraft:mob_attack by @e[tag=shield_breaker,limit=1,sort=nearest]
execute if score @s parry_time matches 11.. run tag @s remove parry
execute if score @s parry_time matches 11.. run tag @s add parry_used
execute if score @s parry_time matches 11.. run scoreboard players set @s parry_time 0

execute if entity @e[tag=parry_success,distance=..5] run effect clear @s jump_boost
execute if entity @e[tag=parry_success,distance=..5] run effect clear @s slowness