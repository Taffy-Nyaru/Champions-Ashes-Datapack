tag @s add stiff
scoreboard players set @s custom_stiff_time 120
damage @s 260 minecraft:drown by @a[limit=1,sort=nearest,tag=anchor_skill3]
execute unless entity @e[tag=aj.water_explode.root,distance=..2] run function animated_java:water_explode/summon
execute unless entity @e[type=creeper,tag=bomber,distance=..2] run summon creeper ~ ~ ~ {Invulnerable:1b,Fuse:0,powered:1b,Tags:["bomber"],ExplosionRadius:4}
