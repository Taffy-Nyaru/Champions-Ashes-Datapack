tag @s add using_daedalus_wing
execute unless score @s shift matches 1.. unless score @s ca.item.id_selecter_offhand matches 1058 run function championsashes:items/daedalus_crucible_wing/flight
execute unless score @s shift matches 1.. if score @s ca.item.id_selecter_offhand matches 1058 run function championsashes:items/daedalus_crucible_wing/levitate
execute if score @s shift matches 1.. run function championsashes:items/daedalus_crucible_wing/falling