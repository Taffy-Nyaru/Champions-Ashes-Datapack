execute unless entity @e[tag=nep_foe,limit=1,sort=nearest,type=!#championsashes:special_entities,distance=..8] facing entity @e[tag=nep_foe,limit=1,sort=nearest,type=!#championsashes:special_entities] eyes run tp @s ^ ^ ^5 ~ ~
execute if entity @e[tag=nep_foe,limit=1,sort=nearest,type=!#championsashes:special_entities,distance=..8] facing entity @e[tag=nep_foe,limit=1,sort=nearest,type=!#championsashes:special_entities] eyes run tp @s ^ ^ ^1 ~ ~
execute as @e[tag=nep_foe,limit=1,sort=nearest,type=!#championsashes:special_entities,distance=..2] run damage @s 8 championsashes:frostbite by @e[tag=nep_elder,limit=1,sort=nearest,type=wither_skeleton]
execute if entity @e[tag=nep_foe,limit=1,sort=nearest,type=!#championsashes:special_entities,distance=..2] run kill @s
execute unless block ~0.5 ~ ~ #championsashes:transparent_blocks run kill @s
execute unless block ~ ~0.5 ~ #championsashes:transparent_blocks run kill @s
execute unless block ~ ~ ~0.5 #championsashes:transparent_blocks run kill @s
execute unless block ~-0.5 ~ ~ #championsashes:transparent_blocks run kill @s
execute unless block ~ ~-0.5 ~ #championsashes:transparent_blocks run kill @s
execute unless block ~ ~ ~-0.5 #championsashes:transparent_blocks run kill @s
execute unless block ~0.5 ~0.5 ~ #championsashes:transparent_blocks run kill @s
execute unless block ~0.5 ~0.5 ~0.5 #championsashes:transparent_blocks run kill @s
execute unless block ~-0.5 ~-0.5 ~-0.5 #championsashes:transparent_blocks run kill @s
execute unless block ~-0.5 ~-0.5 ~ #championsashes:transparent_blocks run kill @s
execute unless block ~-0.5 ~ ~-0.5 #championsashes:transparent_blocks run kill @s
execute unless block ~ ~-0.5 ~-0.5 #championsashes:transparent_blocks run kill @s
execute unless block ~ ~0.5 ~0.5 #championsashes:transparent_blocks run kill @s
execute unless block ~0.5 ~-0.5 ~-0.5 #championsashes:transparent_blocks run kill @s
execute unless block ~-0.5 ~0.5 ~-0.5 #championsashes:transparent_blocks run kill @s
execute unless block ~-0.5 ~-0.5 ~0.5 #championsashes:transparent_blocks run kill @s
execute unless block ~0.5 ~0.5 ~-0.5 #championsashes:transparent_blocks run kill @s
execute unless block ~-0.5 ~0.5 ~0.5 #championsashes:transparent_blocks run kill @s
execute unless block ~-0.5 ~ ~0.5 #championsashes:transparent_blocks run kill @s
execute unless block ~ ~0.5 ~-0.5 #championsashes:transparent_blocks run kill @s
execute unless block ~ ~-0.5 ~0.5 #championsashes:transparent_blocks run kill @s
execute unless block ~-0.5 ~0.5 ~ #championsashes:transparent_blocks run kill @s
execute unless block ~0.5 ~ ~-0.5 #championsashes:transparent_blocks run kill @s
execute unless block ~0.5 ~-0.5 ~ #championsashes:transparent_blocks run kill @s
execute unless block ~0.5 ~-0.5 ~0.5 #championsashes:transparent_blocks run kill @s
execute unless block ~0.5 ~ ~0.5 #championsashes:transparent_blocks run kill @s
execute unless entity @e[tag=nep_foe,limit=1,sort=nearest,type=!#championsashes:special_entities,distance=..80] run kill @s