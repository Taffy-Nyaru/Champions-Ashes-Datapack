execute if score change_weapon_inventory math_output matches 1..100 run loot replace entity @s weapon.mainhand loot championsashes:items/zweihander
execute if score change_weapon_inventory math_output matches 101..200 run loot replace entity @s weapon.mainhand loot championsashes:items/night_cavalry_halberd
execute if score change_weapon_inventory math_output matches 201..300 run loot replace entity @s weapon.mainhand loot championsashes:items/dragonslayer_greatbow
execute if score change_weapon_inventory math_output matches 301..400 run function championsashes:entities/drakeblood_knight/nep_elder/weapon_abilities/drakeblood_greatsword
execute if score change_weapon_inventory math_output matches 401..500 run loot replace entity @s weapon.mainhand loot championsashes:items/black_knight_greataxe
execute if score change_weapon_inventory math_output matches 501..600 run loot replace entity @s weapon.mainhand loot championsashes:items/ringed_knight_straight_sword
execute if score change_weapon_inventory math_output matches 501..600 run loot replace entity @s weapon.offhand loot championsashes:items/black_knight_shield
execute if score change_weapon_inventory math_output matches 601..700 run loot replace entity @s weapon.mainhand loot championsashes:items/murky_hand_scythe
execute if score change_weapon_inventory math_output matches 701..800 run loot replace entity @s weapon.mainhand loot championsashes:items/pontiff_knight_curved_sword
execute if score change_weapon_inventory math_output matches 801..900 run loot replace entity @s weapon.mainhand loot championsashes:items/gundyr_halberd
execute if score change_weapon_inventory math_output matches 901..1024 run loot replace entity @s weapon.mainhand loot championsashes:items/splitleaf
execute if score change_weapon_inventory math_output matches 0 run loot replace entity @s weapon.mainhand loot championsashes:items/cheat_engine
scoreboard players set weapon_inventory math_output 0
tag @s remove had_target
scoreboard players set weapon_class championsashes_Timer 0

execute unless score change_weapon_inventory math_output matches 501..600 run loot replace entity @s weapon.offhand loot championsashes:items/void_totem