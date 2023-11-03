item modify entity @s weapon.mainhand ldmc:soul_of_elder
execute at @s run summon iron_golem ~ ~ ~ {NoAI:1b,Tags:["noumenon"]}
execute store result score @s gamemode run data get entity @s playerGameType
gamemode spectator @s
tag @s[gamemode=spectator] add spectator

execute as @e[tag=noumenon] run data modify storage math:io noumenon_uuid set from entity @s UUID
execute store result score @s noumenon_uuid0 run data get storage math:io noumenon_uuid[0]
execute store result score @s noumenon_uuid1 run data get storage math:io noumenon_uuid[1]
execute store result score @s noumenon_uuid2 run data get storage math:io noumenon_uuid[2]
execute store result score @s noumenon_uuid3 run data get storage math:io noumenon_uuid[3]