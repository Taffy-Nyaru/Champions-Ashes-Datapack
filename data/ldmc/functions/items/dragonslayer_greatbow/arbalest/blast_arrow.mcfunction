
execute store result storage math:io crossbow_owner[0] int 1 run scoreboard players get @s crossbow_owner_uuid0
execute store result storage math:io crossbow_owner[1] int 1 run scoreboard players get @s crossbow_owner_uuid1
execute store result storage math:io crossbow_owner[2] int 1 run scoreboard players get @s crossbow_owner_uuid2
execute store result storage math:io crossbow_owner[3] int 1 run scoreboard players get @s crossbow_owner_uuid3

data modify entity bf7920bc-0684-4846-b9cc-b2ef4137b85c Thrower set from storage math:io crossbow_owner
execute as bf7920bc-0684-4846-b9cc-b2ef4137b85c on origin run tag @s add blast_arrow

execute at @e[tag=blast_arrow,nbt={inGround:1b}] run particle flame ~ ~ ~ 0.1 0.1 0.1 0.5 100
execute at @e[tag=blast_arrow] as @e[tag=!blast_arrow,type=!#ldmc:special_entities,distance=..3] run data modify entity @s Fire set value 100s
execute at @e[tag=blast_arrow,nbt={inGround:1b}] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:1,Invulnerable:1b,Tags:["bomb"]}
kill @e[tag=blast_arrow,nbt={inGround:1b}]
kill @e[tag=blast_arrow,distance=120..]