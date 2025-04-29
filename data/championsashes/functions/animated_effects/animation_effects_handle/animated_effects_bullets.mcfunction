#-----------Bullets

#Carian Grandeur Bullets
execute if entity @s[tag=carian_grandeur_user] as @e[distance=..20,type=!#championsashes:special_entities,tag=bullet_generated] at @s run function championsashes:items/carian_knights_sword/bullet_generator
#Ice Crystal
execute if entity @s[tag=ice_crystal_user] unless entity @e[distance=..20,type=!#championsashes:special_entities,tag=ice_crystallized] run function championsashes:items/moonlight_greatsword/ice_crystal_kill
#Zamor Ice Storm
execute if entity @s[tag=zamor_ice_storm_user] at @e[distance=..20,type=item_display,tag=aj.zamor_ice_storm.root] as @e[type=!#championsashes:special_entities,tag=!zamor_ice_storm_user,distance=..6.5] run function championsashes:items/moonlight_greatsword/ice_storm_damage
#Purple Fire
execute if entity @s[tag=purple_fire_user] as @e[distance=..20,type=!#championsashes:special_entities,tag=purple_burned] at @s run function championsashes:items/fume_ultra_greatsword/purple_burned
#Gravity Imapling
execute if entity @s[tag=gravity_impaling_user] as @e[distance=..20,type=!#championsashes:special_entities,tag=gravity_impaled] at @s run function championsashes:items/sun_princess_ring/ride
#Steel Anchor Skill3
execute if entity @s[tag=anchor_skill3] as @e[distance=..20,type=item_display,tag=aj.steel_anchor.locator,limit=1,tag=!player_camera] at @s run function championsashes:items/steel_anchor/skill3_anchor_hitbox
#Drakeblood Lightning
execute if entity @s[tag=used_drakeblood_skill] at @e[distance=..15,type=marker,tag=aj.ancient_lightning_strike.locator,tag=!player_camera] run function championsashes:animated_effects/ancient_lightning_bolt
#Thunder Bullet
execute as @e[type=item_display,tag=aj.thunder_bullet.root] at @s unless entity @e[type=arrow,distance=..2] run function animated_java:thunder_bullet/remove/this
execute at @e[distance=..50,type=marker,tag=aj.thunder_bullet.root] run particle minecraft:soul_fire_flame ~ ~ ~ 0.2 0.2 0.2 0.05 2
#Gravity Lightning Bolt (Special)
execute as @e[distance=..25,type=item_display,tag=aj.gravity_lightning_bolt.root] at @e[distance=..25,type=marker,tag=aj.gravity_lightning_bolt.locator,limit=1,sort=nearest] unless entity @e[tag=gravity_lightning_shocked,distance=..2.5] run function animated_java:gravity_lightning_bolt/remove/this
execute at @e[distance=..35,type=item_display,tag=aj.gravity_lightning_bolt.root] unless entity @e[tag=gravity_lightning_shocked,type=!#championsashes:special_entities,distance=..5] run function championsashes:items/sun_princess_ring/gravity_lightning_end