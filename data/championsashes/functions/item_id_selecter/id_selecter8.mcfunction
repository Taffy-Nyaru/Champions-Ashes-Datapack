#Serpent Hunter
execute if score @s ca.item.id_selecter_mainhand matches 1045 run function championsashes:items/serpent_hunter/serpent_hunter
execute if score @s ca.item.id_selecter_offhand matches 1045 unless entity @e[tag=aj.chainsaw.root,distance=..2] run function championsashes:items/serpent_hunter/chainsaw

#Shadow Pearl
execute if score @s usedmedal matches 1.. if score @s shift matches 1.. if score @s ca.item.id_selecter_mainhand matches 1046 run function championsashes:items/shadow_pearl/close_undead
execute if score @s usedmedal matches 1.. unless score @s shift matches 1.. unless score @s ca.item.id_selecter_mainhand matches 1047 if score @s ca.item.id_selecter_mainhand matches 1046 run function championsashes:items/shadow_pearl/temp0
function championsashes:items/shadow_pearl/recursion
execute if score @s ca.item.id_selecter_mainhand matches 1047 run function championsashes:items/shadow_pearl/void_totem

#Heart of Echo
execute if score @s ca.item.id_selecter_mainhand matches 1048 run function championsashes:items/sonic_boom_shard/shard
execute if score @s ca.item.id_selecter_offhand matches 1048 run function championsashes:items/sonic_boom_shard/shard


#-----------------Special Effects


