#Dark Sword+22
execute if score @s ca.item.id_selecter_mainhand matches 1016 if score @s shift matches 1.. run function championsashes:items/dark_sword22/feather

#Dragonslayer Greatbow
execute if score @s ca.item.id_selecter_mainhand matches 1017 if score @s usedBow matches 1.. run function championsashes:items/dragonslayer_greatbow/dragonslayer_greatbow
execute if score @s ca.item.id_selecter_offhand matches 1017 if score @s usedBow matches 1.. run function championsashes:items/dragonslayer_greatbow/dragonslayer_greatbow

#Left Bow Glitch
execute if score @s ca.item.id_selecter_offhand matches 1017 if score @s ca.item.id_selecter_mainhand matches 1002 run function championsashes:items/dragonslayer_greatbow/glitch

#Ender Ring
execute if score @s ca.item.id_selecter_mainhand matches 1018 run function championsashes:items/ender_ring/ender_ring
execute if score @s ca.item.id_selecter_offhand matches 1018 run function championsashes:items/ender_ring/ender_ring

#Estus Flask
execute if score @s ca.item.id_selecter_mainhand matches 1019 run function championsashes:items/estus_flask/estus_flask
execute if score @s ca.item.id_selecter_offhand matches 1019 run function championsashes:items/estus_flask/estus_flask

#Eternal Crystal
execute if score @s ca.item.id_selecter_mainhand matches 1020 run function championsashes:items/eternal_crystal/eternal_crystal
execute if score @s ca.item.id_selecter_offhand matches 1020 run function championsashes:items/eternal_crystal/eternal_crystal


#-----------------Special Effects


#Dragonslayer Greatbow
execute if entity @s[tag=loop_start] positioned ^ ^2.5 ^2 if score @s arrow_rain.temp matches 1.. run function championsashes:items/dragonslayer_greatbow/loop_summon_arrow
execute if score @s arrow_rain.temp matches 0 run tag @s remove loop_start
execute if score @s[tag=!loop_start] arrow_rain.temp matches 0 run scoreboard players set @s[tag=!loop_start] arrow_rain.temp 12

#Ender Ring
execute if score rand_output math_output matches 99999.. if entity @s[tag=remote_gateway] run function championsashes:items/ender_ring/teleport
execute unless score @s ca.item.id_selecter_mainhand matches 1018 unless score @s ca.item.id_selecter_offhand matches 1018 run tag @s remove omen_king

#Estus Cancel
execute if entity @s[tag=estus_cancel] run function championsashes:items/estus_flask/cancel
