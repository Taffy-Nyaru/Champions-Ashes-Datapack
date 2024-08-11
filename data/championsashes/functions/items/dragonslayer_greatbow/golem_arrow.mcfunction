
execute store result storage math:io owner[0] int 1 run scoreboard players get @s owner_uuid0
execute store result storage math:io owner[1] int 1 run scoreboard players get @s owner_uuid1
execute store result storage math:io owner[2] int 1 run scoreboard players get @s owner_uuid2
execute store result storage math:io owner[3] int 1 run scoreboard players get @s owner_uuid3

data modify entity 5ff8eb59-2069-4c4f-bfbb-b49b8c613a04 Thrower set from storage math:io owner
execute as 5ff8eb59-2069-4c4f-bfbb-b49b8c613a04 on origin run tag @s add golem_arrow
execute as 5ff8eb59-2069-4c4f-bfbb-b49b8c613a04 on origin run data modify storage generic:main arrow_Motion set from entity @s Motion

execute as @e[tag=golem_arrow] run data modify entity @s Motion set from storage generic:main arrow_Motion
execute at @e[tag=golem_arrow,nbt={inGround:1b}] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:1,Invulnerable:1b,Tags:["690bomber"]}
execute at @e[tag=golem_arrow] if entity @e[tag=!golem_arrow,tag=!loop_start,type=!#championsashes:special_entities,distance=..1] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:1,Invulnerable:1b,Tags:["690bomber"]}
kill @e[tag=golem_arrow,nbt={inGround:1b}]
kill @e[tag=golem_arrow,distance=120..]