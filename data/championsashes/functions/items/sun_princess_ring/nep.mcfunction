execute unless entity @e[tag=aj.write.root,distance=..20] positioned ^ ^3 ^-1 run function animated_java:write/summon
execute as @e[tag=aj.write.root,limit=1,sort=nearest] run function animated_java:write/animations/nep/play

function championsashes:items/sun_princess_ring/field_extension
