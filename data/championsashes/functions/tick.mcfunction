execute at @a run function championsashes:team
#execute store result score time.temp time run time query daytime

scoreboard players add #5ticks ca.tick5_schedule 1
scoreboard players add #10ticks ca.tick10_schedule 1

#TODO Optimize interaction clicker
#If #interaction < #player then summon #player of interactions, if #players > #interaction then kill interaction
execute store result score #playerCount entityCount if entity @a
execute store result score #interactionCount entityCount if entity @e[type=interaction,tag=clicker]
execute if score #interactionCount entityCount < #playerCount entityCount as @a[tag=needclicker] at @s run function championsashes:clicker/summon_interaction
execute if score #interactionCount entityCount > #playerCount entityCount run scoreboard players set @e[tag=clicker,tag=!related] killtime 0

#Number of Players
execute store result score now_player_count player_count if entity @a
#Player Connected
execute if score now_player_count player_count > last_player_count player_count as @a run scoreboard players reset @e[type=interaction,tag=clicker] related
#Player Disconnected
execute if score now_player_count player_count < last_player_count player_count as @a run scoreboard players reset @e[type=interaction,tag=clicker] related
scoreboard players operation last_player_count player_count = now_player_count player_count

#Player Tick
execute as @a at @s run function championsashes:player_tick

#Entity Tick
execute at @a run function championsashes:entity_tick

#Alloc Ticks
execute as @a at @s if score #5ticks ca.tick5_schedule matches 5.. run function championsashes:tick5
execute as @a at @s if score #10ticks ca.tick10_schedule matches 10.. run function championsashes:tick10

#Kill interaction when player leaves
execute at @a as @e[distance=..10,tag=clicker,tag=!related] if score @s killtime matches 0 run kill @s

#Misc
execute as @a if score @s[tag=!field_extensioner] shift matches 1.. run scoreboard players set @s shift 0