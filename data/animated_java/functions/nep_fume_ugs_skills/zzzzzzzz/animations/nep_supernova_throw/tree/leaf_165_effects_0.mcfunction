execute at @e[tag=nep_foe,limit=1,sort=nearest] facing entity @p eyes run function animated_java:blackhole_supernova/summon
execute as @e[tag=aj.blackhole_supernova.root,limit=1,sort=nearest,type=item_display] run function animated_java:blackhole_supernova/animations/blackhole_supernova/play

tag @e[tag=nep_foe_throwed_by_gravity_supernova] remove nep_foe_throwed_by_gravity_supernova
