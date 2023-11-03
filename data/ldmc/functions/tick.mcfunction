function ldmc:get_recipe
function ldmc:team
function ldmc:rclick

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

execute store result score time.temp time run time query daytime

#Player Tick
execute as @a run function ldmc:player_tick

#Kill interaction when player leaves
execute as @e[tag=clicker,tag=!related] if score @s killtime matches 0 run kill @s

execute as @e[tag=head_projectile] run function ldmc:projectiles/dragon_bomb/bomb_rotate

function ldmc:entities/warden/powers
execute as @e[tag=bomb,nbt={OnGround:1b}] run data modify entity @s ignited set value 1b
execute as @e[type=!player,nbt={HandItems:[{id:"minecraft:netherite_sword",tag:{Damage:0,CustomModelData:1390041},Count:1b}]}] at @s on target if entity @s[nbt={HurtTime:1s},distance=..5] run scoreboard players add @s frostbite_Timer 720
execute as fffe1e4a-0000-c020-0000-63b1ffffb28a at @s run data modify entity @s Owner set from entity @a[limit=1,sort=nearest,distance=..2,nbt={Inventory:[{Slot:103b,tag:{id:"ldmc:cat_medal"}}]}] UUID
execute as @a if score @s shift matches 1.. run scoreboard players set @s shift 0