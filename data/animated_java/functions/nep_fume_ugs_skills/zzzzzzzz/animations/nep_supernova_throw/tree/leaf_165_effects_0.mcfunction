
execute if entity @p[tag=nep_foe] at @e[type=item_display,limit=1,sort=nearest,tag=nep_foe_gravity_throw_ride_locator] facing ~ ~ ~ run function animated_java:blackhole_supernova/summon
execute if entity @e[tag=nep_foe,type=!player,type=!#championsashes:special_entities] at @e[type=item_display,limit=1,sort=nearest,tag=nep_foe_gravity_throw_ride_locator] facing entity @p eyes run function animated_java:blackhole_supernova/summon

execute as @e[tag=aj.blackhole_supernova.root,limit=1,sort=nearest,type=item_display] run function animated_java:blackhole_supernova/animations/blackhole_supernova/play

tag @e[tag=nep_foe_throwed_by_gravity_supernova] remove nep_foe_throwed_by_gravity_supernova
