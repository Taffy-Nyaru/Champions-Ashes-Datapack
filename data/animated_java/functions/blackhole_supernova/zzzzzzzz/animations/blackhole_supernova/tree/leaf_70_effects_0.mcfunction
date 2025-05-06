execute at @e[type=marker,tag=aj.blackhole_supernova.locator] as @e[distance=..7.5,type=!#championsashes:special_entities] run ride @s dismount
execute as @e[tag=aj.blackhole_supernova.root,limit=1,sort=nearest] run function animated_java:blackhole_supernova/remove/this
