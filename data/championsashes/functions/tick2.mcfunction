#Animated Effects
execute as @e[distance=..10,type=!#championsashes:special_entities,tag=bullet_generated] at @s run function championsashes:items/carian_knights_sword/bullet_generator
execute unless entity @e[distance=..10,type=!#championsashes:special_entities,tag=ice_crystallized] run function championsashes:items/moonlight_greatsword/ice_crystal_kill
execute at @e[distance=..10,type=item_display,tag=aj.zamor_ice_storm.root] as @e[type=!#championsashes:special_entities,tag=!zamor_ice_storm_user,distance=..6.5] run function championsashes:items/moonlight_greatsword/ice_storm_damage

execute as @e[distance=..10,type=!#championsashes:special_entities,tag=purple_burned] at @s run function championsashes:items/fume_ultra_greatsword/purple_burned
execute as @e[distance=..15,type=!#championsashes:special_entities,tag=gravity_impaled] at @s run function championsashes:items/sun_princess_ring/ride
execute if entity @s[tag=anchor_skill3] as @e[distance=..10,type=item_display,tag=aj.steel_anchor.locator,limit=1,tag=!player_camera] at @s run function championsashes:items/steel_anchor/skill3_anchor_hitbox
execute as @e[distance=..25,tag=aj.gravity_lightning_bolt.locator,limit=1,sort=nearest] at @s unless entity @e[tag=gravity_lightning_shocked,distance=..2.5] run function animated_java:gravity_lightning_bolt/remove/this

#Void Eye
execute as @e[distance=..15,type=marker,tag=void_marker] run scoreboard players add @s void_eye_timer 1
execute as @e[distance=..15,type=marker,tag=void_marker,scores={void_eye_timer=1..}] run function championsashes:items/void_eye/effect

scoreboard players set #2ticks ca.tick2_schedule 0