#Locating nearest player and nearest unfriendly entity
execute facing entity @a[tag=moonlight,limit=1,sort=nearest] feet positioned as @s run tp @s ^ ^-0.1 ^-1.5 ~ ~
execute if entity @e[type=!#championsashes:special_entities,tag=!moonlight,distance=..10] positioned ^-1 ^ ^ rotated as @s positioned ^ ^ ^ facing entity @e[type=!#championsashes:special_entities,tag=!moonlight,limit=1,sort=nearest] feet positioned as @s run tp @s ^ ^ ^0.75 ~ ~

particle electric_spark ~ ~ ~ 0.5 0.2 0.5 0 10
#Explosion
execute as @e[distance=..2.5,type=!#championsashes:special_entities,tag=!moonlight,limit=1,sort=nearest] run function championsashes:projectiles/moonlight_slash/effect

#When enter block
execute unless block ~ ~0.7 ~ #championsashes:transparent_blocks run function championsashes:projectiles/moonlight_slash/effect
execute unless block ~ ~0.7 ~ #championsashes:transparent_blocks run kill @s