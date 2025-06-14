#Witherite Helmet
execute if score @s ca.item.id_selecter_helmet matches 20000 unless score @s ca.item.id_selecter_helmet matches 20001 run function championsashes:items/armor/witherite_helmet
execute if score @s ca.item.id_selecter_helmet matches 20001 unless score @s ca.item.id_selecter_helmet matches 20000 run function championsashes:items/armor/witherite_helmet

#Daedalus Crucible Wing
execute if score @s[gamemode=survival] ca.item.id_selecter_helmet matches 20002 run function championsashes:items/daedalus_crucible_wing/wings
