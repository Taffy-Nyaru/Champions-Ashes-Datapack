loot replace entity @s weapon.mainhand loot championsashes:items/sun_princess_ring
item replace entity @s weapon.offhand with air
execute positioned ^ ^2 ^-1 run function animated_java:f8fq/summon
execute as @e[tag=aj.f8fq.root,limit=1,sort=nearest] run function animated_java:f8fq/animations/f8fq/play
tag @s add f8fq_user
xp add @s -88