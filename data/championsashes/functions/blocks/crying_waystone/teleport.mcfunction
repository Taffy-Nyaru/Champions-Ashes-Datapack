teleport @s @a[tag=teleport,limit=1]
execute store result entity @s Pos[0] double 1 run scoreboard players get @a[tag=teleport,limit=1] lode.pos.x
execute store result entity @s Pos[1] double 1 run scoreboard players get @a[tag=teleport,limit=1] lode.pos.y
execute store result entity @s Pos[2] double 1 run scoreboard players get @a[tag=teleport,limit=1] lode.pos.z
teleport @a[tag=teleport,limit=1] @s
execute at e370442d-c2f2-4495-9ceb-50b614118d0f run tag @e[tag=crying_waystone,distance=..1] add activated
teleport @s @a[tag=teleport,limit=1]