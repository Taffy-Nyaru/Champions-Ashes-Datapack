#Brass Shield
execute if score @s ca.item.id_selecter_mainhand matches 1007 run teleport @e[type=piglin_brute,tag=shield_breaker,limit=1] ^ ^ ^127
execute if score @s ca.item.id_selecter_offhand matches 1007 positioned 0 0 0 run teleport @e[type=piglin_brute,tag=shield_breaker,limit=1] ^ ^ ^127

#Caestus
execute if score @s ca.item.id_selecter_offhand matches 1008 if score @s usedmedal matches 1.. run tag @s add caestus_endure

#Carian Knight's Sword
execute if score @s ca.item.id_selecter_mainhand matches 1009 if score @s shift matches 1.. run function championsashes:items/carian_knights_sword/carian_grandeur

#Cheat Engine
execute if score @s ca.item.id_selecter_mainhand matches 1010 run function championsashes:items/cheat_engine/cheat_engine
execute if score @s ca.item.id_selecter_offhand matches 1010 run function championsashes:items/cheat_engine/cheat_engine

#Corvian Greatknife
execute if score @s ca.item.id_selecter_mainhand matches 1015 run function championsashes:items/corvian_greatknife/blind_spot


#-----------------Special Effects


#Caestus
execute if entity @s[tag=caestus_endure] run function championsashes:items/caestus/caestus

#Cheat Engine
execute unless score @s ca.item.id_selecter_mainhand matches 1010 if entity @s[tag=!got_gamemode] run function championsashes:items/cheat_engine/get_gamemode
