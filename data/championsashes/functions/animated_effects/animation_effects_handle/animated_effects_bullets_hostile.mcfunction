#Drakeblood lightning bolt
execute at @e[distance=..15,type=marker,tag=aj.ancient_lightning_strike.locator] as @e[distance=..2,type=!#championsashes:special_entities,tag=!drakeblood_knight,type=!player] run function championsashes:animated_effects/ancient_lightning_bolt
execute at @e[distance=..15,type=marker,tag=aj.ancient_lightning_strike.locator] as @a[distance=..2,tag=!drakeblood_knight,gamemode=!creative,gamemode=!spectator] unless score @s ca.item.id_selecter_mainhand matches 999 run function championsashes:animated_effects/ancient_lightning_bolt

#Moonlight Slash
execute as @e[type=item_display,tag=nep_moonlight_slash,distance=..20] at @s run function championsashes:entities/drakeblood_knight/nep_elder/weapon_abilities/moonlight_slash_hostile
execute as @e[tag=nep_ice_crystal_played_anim,type=item_display,distance=..30] at @s run function championsashes:entities/drakeblood_knight/nep_elder/weapon_abilities/nep_ice_crystal_kill
execute if entity @e[tag=nep_ice_storm_played_anim,type=item_display,distance=..30] as @e[type=!#championsashes:special_entities,tag=nep_foe] at @s run function championsashes:entities/drakeblood_knight/nep_elder/weapon_abilities/nep_ice_storm_damage