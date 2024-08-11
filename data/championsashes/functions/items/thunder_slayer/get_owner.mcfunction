execute as @e[type=arrow,nbt={ShotFromCrossbow:0b,inGround:0b},limit=1,distance=..3] run data modify storage math:io thunderslayer_arrow_owner set from entity @s UUID
execute store result score @s thunderslayer_arrow_owner_uuid0 run data get storage math:io thunderslayer_arrow_owner[0]
execute store result score @s thunderslayer_arrow_owner_uuid1 run data get storage math:io thunderslayer_arrow_owner[1]
execute store result score @s thunderslayer_arrow_owner_uuid2 run data get storage math:io thunderslayer_arrow_owner[2]
execute store result score @s thunderslayer_arrow_owner_uuid3 run data get storage math:io thunderslayer_arrow_owner[3]