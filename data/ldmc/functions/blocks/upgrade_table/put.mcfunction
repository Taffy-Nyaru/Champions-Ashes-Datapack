summon item_display ~ ~ ~ {item:{Count:1b,id:"glass",tag:{CustomModelData:1440004}},Tags:["upgrade_table"]}
execute store result score @s rotation run data get entity @s Rotation[0]
execute if score @s rotation matches 45..135 run data modify entity @e[tag=upgrade_table,limit=1,sort=nearest] Rotation[0] set value 90.0f
execute if score @s rotation matches 135..180 run data modify entity @e[tag=upgrade_table,limit=1,sort=nearest] Rotation[0] set value 180.0f
execute if score @s rotation matches -180..-135 run data modify entity @e[tag=upgrade_table,limit=1,sort=nearest] Rotation[0] set value 180.0f
execute if score @s rotation matches -135..-45 run data modify entity @e[tag=upgrade_table,limit=1,sort=nearest] Rotation[0] set value -90.0f