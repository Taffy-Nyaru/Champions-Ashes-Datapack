#scoreboard players operation #player_count championsashesValue = now_player_count player_count
#execute if score #player_count championsashesValue matches 1.. run scoreboard players remove #player_count championsashesValue 1
#execute if score #player_count championsashesValue matches 1.. run function championsashes:summon_interaction
summon interaction ~ 1024 ~ {Tags:["clicker"],response:1b,width:10,height:10}
execute as @e[tag=clicker] run data modify storage math:io uuid set from entity @s UUID

#Store uuid of the interaction using storage since storage is fast
execute store result score @s interaction_uuid0 run data get storage math:io uuid[0]
execute store result score @s interaction_uuid1 run data get storage math:io uuid[1]
execute store result score @s interaction_uuid2 run data get storage math:io uuid[2]
execute store result score @s interaction_uuid3 run data get storage math:io uuid[3]