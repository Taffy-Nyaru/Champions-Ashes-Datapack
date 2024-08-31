#Instant death
execute facing ^ ^ ^ run function animated_java:death_blighted/summon
execute as @e[tag=aj.death_blighted.root,limit=1,sort=nearest] run function animated_java:death_blighted/animations/death_blighted/play
tag @s add death_blighted_ride
tag @s add death_blighted