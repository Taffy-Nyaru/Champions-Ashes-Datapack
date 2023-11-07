function ldmc:get_recipe
function ldmc:team
function ldmc:rclick
execute store result score time.temp time run time query daytime

#Stalk Dung Pie
execute as @e[type=snowball,nbt={Item:{tag:{id:"ldmc:stalk_dung_pie"}}}] at @s run function ldmc:items/stalk_dung_pie

#killtime=0 meaning that a clicker didn't match a player
#scoreboard players set @e[tag=clicker] killtime 0
execute as @e[nbt=!{Attributes:[{Name:"minecraft:generic.max_health"}]}] run data modify entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base set from entity @s Health

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
execute if score #interactionCount entityCount < #playerCount entityCount as @a[tag=needclicker] at @s run function ldmc:summon_interaction
execute if score #interactionCount entityCount > #playerCount entityCount run scoreboard players set @e[tag=clicker,tag=!related] killtime 0

#Player Tick
execute as @a run function ldmc:player_tick

#Entity Tick
function ldmc:entity_tick

#Kill interaction when player leaves
execute as @e[tag=clicker,tag=!related] if score @s killtime matches 0 run kill @s

#Misc
execute as @a if score @s shift matches 1.. run scoreboard players set @s shift 0
execute as @a if score @s shield_block_damage matches 1.. run scoreboard players set @s shield_block_damage 0
execute as @e[advancements={ldmc:enter_block=true}] run advancement revoke @s only ldmc:enter_block