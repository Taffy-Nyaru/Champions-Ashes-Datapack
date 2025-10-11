loot replace entity @s weapon.mainhand loot championsashes:items/murky_hand_scythe
scoreboard players add @s nep_ice_phase_timer 1
execute if score @s nep_ice_phase_timer matches 150.. unless entity @e[tag=aj.nep_moonlight_slash.root,distance=..20,type=item_display] run function championsashes:entities/drakeblood_knight/nep_elder/weapon_abilities/nep_ice_phase