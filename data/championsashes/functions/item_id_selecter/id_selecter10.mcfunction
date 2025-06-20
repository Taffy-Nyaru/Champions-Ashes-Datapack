#Sun Princess Ring
execute if score @s ca.item.id_selecter_mainhand matches 1053 run function championsashes:items/sun_princess_ring/sun_princess_ring
execute if score @s ca.item.id_selecter_offhand matches 1053 unless entity @e[tag=aj.f8fq.root,distance=..5] if score @s shift matches 1.. if score @s xpLevel matches 8.. run function championsashes:items/sun_princess_ring/f8fq
execute as @e[tag=gravity_lightning_shocked,type=!#championsashes:special_entities,distance=..50] run function championsashes:items/sun_princess_ring/gravity_lightning_bolt_timer

#Thunder Slayer
execute if score @s ca.item.id_selecter_mainhand matches 1054 if score @s usedBow matches 1.. run function championsashes:items/thunder_slayer/get_owner
function championsashes:items/thunder_slayer/thunder_arrow

#Vampire Hat
execute if score @s ca.item.id_selecter_mainhand matches 1055 if score @s usedmedal matches 1.. run function championsashes:items/vampire_hat/vampire_hat

#Zweihander
execute if score @s ca.item.id_selecter_mainhand matches 1056 run function championsashes:items/zweihander/zweihander
execute if score @s ca.item.id_selecter_offhand matches 1056 run function championsashes:items/zweihander/zweihander

#Ancient Meteoric Ore Greatsowrd
execute if score @s ca.item.id_selecter_mainhand matches 1057 if score @s shift matches 1.. run function championsashes:items/ancient_meteoric_ore_sword/ancient_meteoric_ore_sword

#Electric Wand
execute if score @s ca.item.id_selecter_mainhand matches 1059 run function championsashes:items/electric_wand/electric_wand
execute if score @s ca.item.id_selecter_offhand matches 1059 unless score @s shift matches 1.. run function championsashes:items/electric_wand/electric_wand
execute if score @s ca.item.id_selecter_offhand matches 1059 if score @s[tag=!stiff,tag=!electric_beacon_skill_cooling] shift matches 1.. at @e[distance=..50,limit=1,sort=nearest,type=!#championsashes:special_entities,type=!player] unless entity @e[tag=aj.electric_beacon.root,distance=..50] run function championsashes:items/electric_wand/skill


#-----------------Special Effects


