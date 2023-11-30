teleport @s @a[tag=teleport,limit=1]
execute store result entity @s Pos[0] double 1 run scoreboard players get @a[tag=teleport,limit=1] lode.pos.x
execute store result entity @s Pos[1] double 1 run scoreboard players get @a[tag=teleport,limit=1] lode.pos.y
execute store result entity @s Pos[2] double 1 run scoreboard players get @a[tag=teleport,limit=1] lode.pos.z
teleport @a[tag=teleport,limit=1] @s
teleport @s @a[tag=teleport,limit=1]