data modify entity @s Invulnerable set value 1b

function animated_java:nep_phase3_teleport/summon
execute as @e[tag=aj.nep_phase3_teleport.root,type=item_display,limit=1,sort=nearest] run function animated_java:nep_phase3_teleport/animations/blackhole_teleport/play
tp @s @e[tag=nep_summoned_flight_marker,type=marker,limit=1,sort=random]
particle minecraft:portal ~ ~1 ~ 0.01 0.01 0.01 1 200
tag @s add nep_phase3_used_teleport