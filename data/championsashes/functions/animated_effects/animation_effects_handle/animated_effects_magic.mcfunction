#-----------Magic and Incantations
#Meteorite Staff
execute if entity @s[tag=gravity_blackhole_spawned] run function championsashes:animated_effects/gravity_blackhole
execute if entity @s[tag=gravity_soul_stream_user] at @e[distance=..10,type=marker,tag=aj.gravity_soul_stream.locator,tag=!player_camera] run function championsashes:animated_effects/gravity_soul_stream
execute if entity @s[tag=starscaller_user] run function championsashes:animated_effects/starscaller
#Ring of Favor
execute if entity @s[tag=knight_lightning_spear_user] run function championsashes:items/ring_of_favor/kill_lightning_spears
execute if entity @s[tag=ancient_lightning_spear_user] run function championsashes:items/ring_of_favor/kill_lightning_spears
execute if entity @s[tag=knight_lightning_spear_user] at @e[distance=..30,type=marker,tag=aj.favor_incantations.locator,tag=!player_camera] run function championsashes:animated_effects/knight_lightning_spear
execute if entity @s[tag=ancient_lightning_spear_user] at @e[distance=..30,type=marker,tag=aj.favor_incantations.locator,tag=!player_camera] run function championsashes:animated_effects/ancient_lightning_spear
execute if entity @s[tag=messemers_orb_user] at @e[distance=..15,type=marker,tag=aj.favor_incantations.locator,tag=!player_camera] run function championsashes:animated_effects/messemers_orb
execute if entity @s[tag=blinkbolt_slash_user] at @e[distance=..10,type=marker,tag=aj.favor_incantations.locator,tag=!player_camera] run function championsashes:animated_effects/blinkbolt_slash