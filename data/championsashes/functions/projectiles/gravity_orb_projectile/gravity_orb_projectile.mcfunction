execute at @a[limit=1,sort=nearest] if entity @s[distance=22.5..] run function animated_java:gravity_orb_projectile/remove/this

#Locating nearest player and nearest unfriendly entity
execute facing entity @a[tag=shot_gravity_orb,limit=1,sort=nearest] eyes positioned as @s run tp @s ^ ^-0.01 ^-0.75 ~ ~
execute if entity @e[distance=..10,type=!#championsashes:special_entities,team=!friendly,tag=!shot_gravity_orb] facing entity @a[tag=shot_gravity_orb,limit=1,sort=nearest] eyes positioned ^-1 ^ ^ rotated as @s positioned ^ ^ ^ facing entity @e[type=!#championsashes:special_entities,team=!friendly,tag=!shot,limit=1,sort=nearest] eyes positioned as @s run tp @s ^ ^ ^0.1 ~ ~

#Explosion
execute if entity @e[distance=..3,type=!#championsashes:special_entities,tag=!shot_gravity_orb] run function championsashes:projectiles/gravity_orb_projectile/explosion

#When enter block explosion
execute unless block ~ ~ ~ #championsashes:transparent_blocks run function championsashes:projectiles/gravity_orb_projectile/explosion
execute at @e[type=creeper,tag=bomb] if entity @e[distance=..2,tag=aj.gravity_orb_projectile.root] run function animated_java:gravity_orb_projectile/remove/this