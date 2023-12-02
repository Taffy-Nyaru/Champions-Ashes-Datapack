particle flame ^ ^ ^ 1 1 1 0 300
summon creeper ^ ^ ^ {Fuse:0,ExplosionRadius:2,Invulnerable:1b,Tags:["bomb"]}
summon lightning_bolt ^ ^ ^ {Tags:["Thunder"]}
tag @a[limit=1,sort=nearest] remove rkss_skill
tag @e[tag=rkss_hurted,distance=..20] remove splitleaf_stiff
tag @e[tag=rkss_hurted,distance=..20] remove rkss_hurted
function animated_java:rkss_skill/remove/this