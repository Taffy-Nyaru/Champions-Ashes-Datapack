scoreboard players add @s nep_phase3_fume_ugs_random_lightning_bolt 1
execute if score @s nep_phase3_fume_ugs_random_lightning_bolt matches 10 at @e[tag=nep_summoned_flight_marker,type=marker,limit=3,sort=random] unless entity @e[tag=aj.nep_gravity_lightning_bolt.root,type=item_display,distance=..2] run function animated_java:nep_gravity_lightning_bolt/summon
execute if score @s nep_phase3_fume_ugs_random_lightning_bolt matches 10 as @e[tag=aj.nep_gravity_lightning_bolt.root,type=item_display] run function animated_java:nep_gravity_lightning_bolt/animations/nep_gravity_lightning_bolt/play

execute if score @s nep_phase3_fume_ugs_random_lightning_bolt matches 30 at @e[tag=nep_summoned_flight_marker,type=marker,limit=3,sort=random] unless entity @e[tag=aj.nep_gravity_lightning_bolt.root,type=item_display,distance=..2] run function animated_java:nep_gravity_lightning_bolt/summon
execute if score @s nep_phase3_fume_ugs_random_lightning_bolt matches 30 as @e[tag=aj.nep_gravity_lightning_bolt.root,type=item_display] run function animated_java:nep_gravity_lightning_bolt/animations/nep_gravity_lightning_bolt/play

execute if score @s nep_phase3_fume_ugs_random_lightning_bolt matches 60 at @e[tag=nep_summoned_flight_marker,type=marker,limit=3,sort=random] unless entity @e[tag=aj.nep_gravity_lightning_bolt.root,type=item_display,distance=..2] run function animated_java:nep_gravity_lightning_bolt/summon
execute if score @s nep_phase3_fume_ugs_random_lightning_bolt matches 60 as @e[tag=aj.nep_gravity_lightning_bolt.root,type=item_display] run function animated_java:nep_gravity_lightning_bolt/animations/nep_gravity_lightning_bolt/play

execute if score @s nep_phase3_fume_ugs_random_lightning_bolt matches 90 at @e[tag=nep_summoned_flight_marker,type=marker,limit=3,sort=random] unless entity @e[tag=aj.nep_gravity_lightning_bolt.root,type=item_display,distance=..2] run function animated_java:nep_gravity_lightning_bolt/summon
execute if score @s nep_phase3_fume_ugs_random_lightning_bolt matches 90 as @e[tag=aj.nep_gravity_lightning_bolt.root,type=item_display] run function animated_java:nep_gravity_lightning_bolt/animations/nep_gravity_lightning_bolt/play

execute if score @s nep_phase3_fume_ugs_random_lightning_bolt matches 120 at @e[tag=nep_summoned_flight_marker,type=marker,limit=3,sort=random] unless entity @e[tag=aj.nep_gravity_lightning_bolt.root,type=item_display,distance=..2] run function animated_java:nep_gravity_lightning_bolt/summon
execute if score @s nep_phase3_fume_ugs_random_lightning_bolt matches 120 as @e[tag=aj.nep_gravity_lightning_bolt.root,type=item_display] run function animated_java:nep_gravity_lightning_bolt/animations/nep_gravity_lightning_bolt/play
execute if score @s nep_phase3_fume_ugs_random_lightning_bolt matches 120.. run scoreboard players set @s nep_phase3_fume_ugs_random_lightning_bolt 0

execute at @e[tag=aj.nep_fume_ugs_skills.locator,type=marker] as @e[type=!#championsashes:special_entities,tag=nep_foe,tag=!drakeblood_knight,distance=..3] run damage @s 5 minecraft:out_of_world by @e[tag=nep_elder,limit=1,sort=nearest,type=wither_skeleton]