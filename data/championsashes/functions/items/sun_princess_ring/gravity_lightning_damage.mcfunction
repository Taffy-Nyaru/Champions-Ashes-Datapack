tag @s add gravity_lightning_shocked
execute facing ~ ~ ~ run function animated_java:gravity_lightning_bolt/summon
execute as @e[tag=aj.gravity_lightning_bolt.root] run function animated_java:gravity_lightning_bolt/animations/gravity_lightning_bolt/play
ride @e[tag=aj.gravity_lightning_bolt.root,limit=1,sort=nearest] mount @s
tag @e[tag=aj.gravity_lightning_bolt.root,limit=1,sort=nearest,tag=!mountage] add mountage

damage @s 25 minecraft:out_of_world by @s
damage @s 25 minecraft:player_attack by @s