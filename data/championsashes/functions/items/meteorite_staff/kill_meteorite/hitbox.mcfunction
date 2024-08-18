function animated_java:meteorite_shockwave/summon
execute as @e[tag=aj.meteorite_shockwave.root] run function animated_java:meteorite_shockwave/animations/meteorite_particles/play
execute as @e[distance=..3,type=!#championsashes:special_entities,type=!player] run damage @s 15 championsashes:gtx690 by @a[limit=1,sort=nearest]
execute if entity @e[distance=..3,type=!#championsashes:special_entities,type=!player] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:1,Invulnerable:1b,Tags:["bomb"],Invulnerable:1b}
summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:1,Invulnerable:1b,Tags:["bomb"],Invulnerable:1b}