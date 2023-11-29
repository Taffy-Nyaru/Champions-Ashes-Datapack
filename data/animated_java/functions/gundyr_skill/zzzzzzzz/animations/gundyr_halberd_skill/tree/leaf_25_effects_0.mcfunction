execute at @e[type=marker,tag=gundyr_hitbox] run summon creeper ~ ~0.5 ~ {Fuse:0,ExplosionRadius:1,Invulnerable:1b,Tags:["bomb"]}
tag @a remove gundyr_halberd
kill @e[type=marker,tag=gundyr_hitbox,limit=1]
function animated_java:gundyr_skill/remove/this