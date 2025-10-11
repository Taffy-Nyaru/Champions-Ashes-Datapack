execute if score change_weapon_inventory math_output matches 1..300 run function championsashes:entities/drakeblood_knight/nep_elder/weapon_abilities/drakeblood_greatsword
execute if score change_weapon_inventory math_output matches 301..350 run loot replace entity @s weapon.mainhand loot championsashes:items/black_knight_greataxe
execute if score change_weapon_inventory math_output matches 351..550 run loot replace entity @s weapon.mainhand loot championsashes:items/ringed_knight_straight_sword
execute if score change_weapon_inventory math_output matches 351..550 run loot replace entity @s weapon.offhand loot championsashes:items/black_knight_shield
execute if score change_weapon_inventory math_output matches 351..550 run tag @s add nep_fire_phase
execute if score change_weapon_inventory math_output matches 551..650 run loot replace entity @s weapon.mainhand loot championsashes:items/murky_hand_scythe
execute if score change_weapon_inventory math_output matches 551..650 run data modify entity @s SelectedItem.tag.Enchantments set value [{id:"sharpness",lvl:10s}]
execute if score change_weapon_inventory math_output matches 651..750 run loot replace entity @s weapon.mainhand loot championsashes:items/dragonslayer_greatbow
execute if score change_weapon_inventory math_output matches 751..800 run loot replace entity @s weapon.mainhand loot championsashes:items/steel_anchor
execute if score change_weapon_inventory math_output matches 801..1024 run loot replace entity @s weapon.mainhand loot championsashes:items/moonlight_greatsword
execute if score change_weapon_inventory math_output matches 801..1024 run tag @s add nep_ice_phase
execute if score change_weapon_inventory math_output matches 0 run loot replace entity @s weapon.mainhand loot championsashes:items/cheat_engine
scoreboard players set weapon_inventory math_output 0
tag @s remove had_target
scoreboard players set weapon_class championsashes_Timer 0

execute unless score change_weapon_inventory math_output matches 501..600 run loot replace entity @s weapon.offhand loot championsashes:items/void_totem