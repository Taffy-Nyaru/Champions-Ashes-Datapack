#-------------Skills

#Messemer's Assault
execute if entity @s[tag=messemers_assault_user] at @e[distance=..10,type=marker,tag=aj.messemers_assault.locator,tag=!player_camera] run particle minecraft:flame ~ ~ ~ 0.05 0.05 0.05 0 1
execute if entity @s[tag=messemers_assault_user] at @e[distance=..10,type=marker,tag=aj.messemers_assault.locator,tag=!player_camera] run function championsashes:animated_effects/messemers_assault
#Ringed Knight Straight Sword
execute if entity @s[tag=rkss_cancel_user] at @e[distance=..10,type=marker,tag=aj.rkss_cancel.locator,tag=!player_camera,tag=!rkss_skill_locator,tag=!player_camera] run function championsashes:animated_effects/rkss_cancel
execute if entity @s[tag=rkss_skill_user] at @e[distance=..10,type=marker,tag=rkss_skill_locator,tag=!player_camera] run function championsashes:animated_effects/rkss_skill
#Obsidian Lamina
execute if entity @s[tag=dynastic_sickleplay_user] at @e[distance=..10,type=marker,tag=aj.dynastic_sickleplay.locator,tag=!lamina_rider,tag=!player_camera] run function championsashes:animated_effects/dynastic_sickleplay
execute if entity @s[tag=dynastic_throw_user] as @e[distance=..10,type=!#championsashes:special_entities,tag=dynastic_throw] run function championsashes:items/obsidian_lamina/throw
#Rakshasa's Great Katana
execute if entity @s[tag=weed_cutter_user] at @e[distance=..10,type=marker,tag=aj.rakshasa_great_katana.locator,tag=!player_camera] run function championsashes:animated_effects/rakshasa_great_katana/weed_cutter
execute if entity @s[tag=rakshasa_crouch_poke_user] at @e[distance=..10,type=marker,tag=aj.rakshasa_great_katana.locator,tag=!player_camera] run function championsashes:animated_effects/rakshasa_great_katana/crouch_poke
execute if entity @s[tag=rakshasa_jump_attack_user] at @e[distance=..10,type=marker,tag=aj.rakshasa_great_katana.locator,tag=!player_camera] run function championsashes:animated_effects/rakshasa_great_katana/jump_attack