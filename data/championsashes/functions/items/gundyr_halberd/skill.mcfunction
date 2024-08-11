#Summoning hitbox and animation rig
execute positioned ^ ^-0.5 ^ run function animated_java:gundyr_skill/summon
summon marker ~ ~ ~ {Tags:["gundyr_hitbox"]}

execute as @e[tag=aj.gundyr_skill.root] run function animated_java:gundyr_skill/animations/gundyr_halberd_skill/play
execute at @s run teleport @e[type=marker,tag=gundyr_hitbox] ^ ^ ^1
tag @s add gundyr_halberd