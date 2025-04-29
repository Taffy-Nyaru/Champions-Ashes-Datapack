#Soul Of Nep
execute if score @s ca.item.id_selecter_mainhand matches 1049 if score @s usedmedal matches 1.. run function championsashes:items/soul_of_elder/spectator
execute if score @s ca.item.id_selecter_offhand matches 1049 if score @s usedmedal matches 1.. run function championsashes:items/soul_of_elder/spectator

#Spear of the Impaler
execute if score @s ca.item.id_selecter_mainhand matches 1050 if score @s shift matches 1.. run function championsashes:items/spear_of_the_impaler/messemers_assault

#Splitleaf
execute if score @s ca.item.id_selecter_mainhand matches 1051 run function championsashes:items/splitleaf/splitleaf

#Steel Anchor
execute if score @s ca.item.id_selecter_mainhand matches 1052 run function championsashes:items/steel_anchor/steel_anchor
execute if score @s ca.item.id_selecter_offhand matches 1052 run function championsashes:items/steel_anchor/steel_anchor


#-----------------Special Effects


#Soul of Nep
execute if entity @s[tag=spectator] run function championsashes:items/soul_of_elder/noumenon
execute if entity @s[tag=spectator,gamemode=!spectator] run tag @s remove spectator

#Splitleaf
execute if entity @e[tag=splitleaf_skill] as @e[tag=splitleaf_skill,distance=..6] run function championsashes:items/splitleaf/rotation
execute if score @s[tag=helicopter] ca.item.id_selecter_mainhand matches 1051 run function championsashes:items/splitleaf/skill
execute unless score @s[tag=helicopter] shift matches 1 run function championsashes:items/splitleaf/remove_levitation
execute as @e[distance=..10,tag=splitleaf_stiff] run function championsashes:items/splitleaf/damage