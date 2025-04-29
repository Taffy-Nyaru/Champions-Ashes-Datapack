#Fume Ultra Greatsword
execute if score @s ca.item.id_selecter_mainhand matches 1021 if score @s shift matches 1.. run function championsashes:items/fume_ultra_greatsword/wave_of_destruction
execute if score @s ca.item.id_selecter_offhand matches 1021 if score @s shift matches 1.. unless entity @e[distance=..10,type=item_display,tag=aj.void_slash.root] run function championsashes:items/fume_ultra_greatsword/void_slash

#Gael's Greatsword
execute if score @s ca.item.id_selecter_mainhand matches 1022 if score @s shift matches 1.. run function championsashes:items/gaels_greatsword/blade_of_peril

#Greatsword
execute if score @s ca.item.id_selecter_mainhand matches 1023 if score @s shift matches 1.. run function championsashes:items/greatsword/spinning_gravity_thrust

#GTX690
execute if score @s ca.item.id_selecter_mainhand matches 1024 run function championsashes:items/bomber/gtx690

#Gundyr's Halberd
execute if score @s ca.item.id_selecter_mainhand matches 1025 if score @s shift matches 1.. run function championsashes:items/gundyr_halberd/gundyr_halberd


#-----------------Special Effects


#GTX690
execute as fffffb87-0000-158b-ffff-ffd30000000f if entity @s[predicate=championsashes:misc/bomb_creeper] at @s run function championsashes:items/bomber/explode
execute if entity @s[tag=chain_mining] positioned ^ ^ ^3 run function championsashes:items/bomber/chain_mining