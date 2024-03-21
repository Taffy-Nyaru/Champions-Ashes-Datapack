#Locating nearest player and nearest unfriendly entity
execute facing entity @a[tag=moonlight,limit=1,sort=nearest] feet positioned as @s run tp @s ^ ^-0.1 ^-1.5 ~ ~
execute if entity @e[type=!#ldmc:special_entities,type=!lightning_bolt,tag=!moonlight,distance=..10] facing entity @a[tag=moonlight,limit=1,sort=nearest] feet positioned ^-1 ^ ^ rotated as @s positioned ^ ^ ^ facing entity @e[type=!#ldmc:special_entities,type=!lightning_bolt,tag=!moonlight,limit=1,sort=nearest] feet positioned as @s run tp @s ^ ^ ^1.5 ~ ~

particle electric_spark ~ ~ ~ 0.5 0.2 0.5 0 10
#Explosion
execute as @e[type=!#ldmc:special_entities,type=!lightning_bolt,tag=!moonlight,limit=1,sort=nearest] at @e[tag=moonlight_slash] if entity @s[distance=..2.5] run function ldmc:projectiles/moonlight_slash/effect

#When enter block
execute unless block ~ ~ ~ #ldmc:transparent_blocks run function ldmc:projectiles/moonlight_slash/effect
execute unless block ~ ~ ~ #ldmc:transparent_blocks run kill @s