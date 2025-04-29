#If #interaction < #player then summon #player of interactions, if #players > #interaction then kill interaction
execute store result score #playerCount entityCount if entity @s
execute store result score #interactionCount entityCount if entity @e[type=interaction,distance=..75,tag=clicker]
execute if score #interactionCount entityCount < #playerCount entityCount as @s[tag=needclicker] at @s run function championsashes:clicker/summon_interaction
execute if score #interactionCount entityCount > #playerCount entityCount run scoreboard players set @e[type=interaction,distance=..75,tag=clicker,tag=!related] killtime 0

#Number of Players
execute store result score now_player_count player_count if entity @s
#Player Connected
execute if score now_player_count player_count > last_player_count player_count run scoreboard players reset @e[type=interaction,distance=..75,tag=clicker] related
#Player Disconnected
execute if score now_player_count player_count < last_player_count player_count run scoreboard players reset @e[type=interaction,distance=..75,tag=clicker] related
scoreboard players operation last_player_count player_count = now_player_count player_count

#Kill interaction when player leaves
execute as @e[type=interaction,distance=..75,tag=clicker,tag=!related] if score @s killtime matches 0 run kill @s
