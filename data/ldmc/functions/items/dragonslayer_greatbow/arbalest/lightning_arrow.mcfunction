
execute store result storage math:io crossbow_owner[0] int 1 run scoreboard players get @s crossbow_owner_uuid0
execute store result storage math:io crossbow_owner[1] int 1 run scoreboard players get @s crossbow_owner_uuid1
execute store result storage math:io crossbow_owner[2] int 1 run scoreboard players get @s crossbow_owner_uuid2
execute store result storage math:io crossbow_owner[3] int 1 run scoreboard players get @s crossbow_owner_uuid3

data modify entity bf7920bc-0684-4846-b9cc-b2ef4137b85c Thrower set from storage math:io crossbow_owner
execute as bf7920bc-0684-4846-b9cc-b2ef4137b85c on origin run tag @s add lightning_arrow

execute at @e[tag=lightning_arrow,nbt={inGround:1b}] run summon lightning_bolt ~ ~ ~ {Tags:["Thunder"]}
kill @e[tag=lightning_arrow,nbt={inGround:1b}]
kill @e[tag=lightning_arrow,distance=120..]