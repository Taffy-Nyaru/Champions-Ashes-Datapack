function championsashes:team
function championsashes:rclick
execute store result score time.temp time run time query daytime

#killtime=0 meaning that a clicker didn't match a player
#scoreboard players set @e[tag=clicker] killtime 0

#Number of Players
execute store result score now_player_count player_count if entity @a
#Player Connected
execute if score now_player_count player_count > last_player_count player_count as @a run scoreboard players reset @e[tag=clicker] related
#Player Disconnected
execute if score now_player_count player_count < last_player_count player_count as @a run scoreboard players reset @e[tag=clicker] related
scoreboard players operation last_player_count player_count = now_player_count player_count

#If #interaction < #player then summon #player of interactions, if #players > #interaction then kill interaction
execute store result score #playerCount entityCount if entity @a
execute store result score #interactionCount entityCount if entity @e[tag=clicker]
execute if score #interactionCount entityCount < #playerCount entityCount as @a[tag=needclicker] at @s run function championsashes:summon_interaction
execute if score #interactionCount entityCount > #playerCount entityCount run scoreboard players set @e[tag=clicker,tag=!related] killtime 0

#Player Tick
execute as @a run function championsashes:player_tick

#Entity Tick
function championsashes:entity_tick

#Kill interaction when player leaves
execute if entity @e[tag=clicker,tag=!related] as @e[tag=clicker,tag=!related] if score @s killtime matches 0 run kill @s

#Misc
execute as @a if score @s shield_block_damage matches 1.. run scoreboard players set @s shield_block_damage 0
execute as @a if score @s[tag=!field_extensioner] shift matches 1.. run scoreboard players set @s shift 0