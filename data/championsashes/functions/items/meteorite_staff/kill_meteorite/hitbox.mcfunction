execute positioned ~ ~0.75 ~ facing ~ ~ ~ run function animated_java:meteorite_shockwave/summon
execute as @e[distance=..3,type=item_display,tag=aj.meteorite_shockwave.root] run function animated_java:meteorite_shockwave/animations/meteorite_particles/play
execute as @e[distance=..3,type=!#championsashes:special_entities,type=!player] run damage @s 50 championsashes:gtx690 by @a[limit=1,sort=nearest]
execute if entity @e[distance=..3,type=!#championsashes:special_entities,type=!player] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:1,Invulnerable:1b,Tags:["bomb"],Invulnerable:1b}
summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:1,Invulnerable:1b,Tags:["bomb"],Invulnerable:1b}