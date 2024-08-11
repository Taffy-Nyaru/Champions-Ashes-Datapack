execute as @e[type=arrow,nbt={ShotFromCrossbow:0b},distance=..5] run data modify storage math:io owner set from entity @s UUID
execute store result score @s owner_uuid0 run data get storage math:io owner[0]
execute store result score @s owner_uuid1 run data get storage math:io owner[1]
execute store result score @s owner_uuid2 run data get storage math:io owner[2]
execute store result score @s owner_uuid3 run data get storage math:io owner[3]