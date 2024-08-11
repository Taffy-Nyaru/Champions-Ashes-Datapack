execute as @e[type=arrow] run data modify storage math:io crossbow_owner set from entity @s UUID
execute store result score @s crossbow_owner_uuid0 run data get storage math:io crossbow_owner[0]
execute store result score @s crossbow_owner_uuid1 run data get storage math:io crossbow_owner[1]
execute store result score @s crossbow_owner_uuid2 run data get storage math:io crossbow_owner[2]
execute store result score @s crossbow_owner_uuid3 run data get storage math:io crossbow_owner[3]
execute unless entity @e[type=arrow] run scoreboard players set @s usedCrossbow 0