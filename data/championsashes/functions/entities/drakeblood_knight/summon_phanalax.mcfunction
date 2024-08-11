execute at @s run summon item_display ^-1 ^1.5 ^ {Tags:["drakeblood_phanalax0"],item:{id:"diamond_sword",Count:1b,tag:{CustomModelData:1390042,Enchantments:[{id:"infinity",lvl:1}]}}}
execute at @s run summon item_display ^ ^2.5 ^ {Tags:["drakeblood_phanalax1"],item:{id:"diamond_sword",Count:1b,tag:{CustomModelData:1390042,Enchantments:[{id:"infinity",lvl:1}]}}}
execute at @s run summon item_display ^1 ^1.5 ^ {Tags:["drakeblood_phanalax2"],item:{id:"diamond_sword",Count:1b,tag:{CustomModelData:1390042,Enchantments:[{id:"infinity",lvl:1}]}}}

execute as @e[tag=drakeblood_phanalax0] run data modify storage math:io 0drakeblood_phanalax_uuid set from entity @s UUID
execute store result score @s 0drakeblood_phanalax_uuid0 run data get storage math:io 0drakeblood_phanalax_uuid[0]
execute store result score @s 0drakeblood_phanalax_uuid1 run data get storage math:io 0drakeblood_phanalax_uuid[1]
execute store result score @s 0drakeblood_phanalax_uuid2 run data get storage math:io 0drakeblood_phanalax_uuid[2]
execute store result score @s 0drakeblood_phanalax_uuid3 run data get storage math:io 0drakeblood_phanalax_uuid[3]

execute as @e[tag=drakeblood_phanalax1] run data modify storage math:io 1drakeblood_phanalax_uuid set from entity @s UUID
execute store result score @s 1drakeblood_phanalax_uuid0 run data get storage math:io 1drakeblood_phanalax_uuid[0]
execute store result score @s 1drakeblood_phanalax_uuid1 run data get storage math:io 1drakeblood_phanalax_uuid[1]
execute store result score @s 1drakeblood_phanalax_uuid2 run data get storage math:io 1drakeblood_phanalax_uuid[2]
execute store result score @s 1drakeblood_phanalax_uuid3 run data get storage math:io 1drakeblood_phanalax_uuid[3]

execute as @e[tag=drakeblood_phanalax2] run data modify storage math:io 2drakeblood_phanalax_uuid set from entity @s UUID
execute store result score @s 2drakeblood_phanalax_uuid0 run data get storage math:io 2drakeblood_phanalax_uuid[0]
execute store result score @s 2drakeblood_phanalax_uuid1 run data get storage math:io 2drakeblood_phanalax_uuid[1]
execute store result score @s 2drakeblood_phanalax_uuid2 run data get storage math:io 2drakeblood_phanalax_uuid[2]
execute store result score @s 2drakeblood_phanalax_uuid3 run data get storage math:io 2drakeblood_phanalax_uuid[3]
tag @s add entity_with_drakeblood_phanalax