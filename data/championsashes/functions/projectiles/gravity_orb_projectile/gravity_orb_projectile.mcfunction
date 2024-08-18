execute if entity @s[distance=128..] run kill @s

#Locating nearest player and nearest unfriendly entity
execute facing entity @a[tag=shot_gravity_orb,limit=1,sort=nearest] feet positioned as @s run tp @s ^ ^-0.01 ^-0.75 ~ ~
execute if entity @e[type=!#championsashes:special_entities,team=!friendly,tag=!shot_gravity_orb,distance=..10] facing entity @a[tag=shot_gravity_orb,limit=1,sort=nearest] eyes positioned ^-1 ^ ^ rotated as @s positioned ^ ^ ^ facing entity @e[type=!#championsashes:special_entities,team=!friendly,tag=!shot,limit=1,sort=nearest] eyes positioned as @s run tp @s ^ ^ ^0.1 ~ ~

#Explosion
execute if entity @e[type=!#championsashes:special_entities,tag=!shot_gravity_orb,distance=..2] run function championsashes:projectiles/gravity_orb_projectile/explosion

#When enter block explosion
execute unless block ~ ~ ~ #championsashes:transparent_blocks run function championsashes:projectiles/gravity_orb_projectile/explosion
execute at @e[type=creeper,tag=bomb] if entity @e[tag=aj.gravity_orb_projectile.root,distance=..2] run kill @s[distance=..2]