
#Drakeblood Greatsword
execute if score @s ca.item.id_selecter_mainhand matches 999 if score @s shift matches 1.. run function championsashes:items/drakeblood_greatsword/drakeblood_greatsword
execute if score @s ca.item.id_selecter_mainhand matches 999 if entity @s[tag=!used_drakeblood_skill,advancements={championsashes:hurt_entities=true}] run scoreboard players add @e[tag=raycast.target,predicate=championsashes:hurttime,type=!#championsashes:special_entities] bleeding_Timer 1000

#Antspur Rapier
execute if score @s ca.item.id_selecter_mainhand matches 1000 run function championsashes:items/antspur_rapier/base_info

#Aquamarine Dagger
execute if score @s ca.item.id_selecter_mainhand matches 1001 run function championsashes:items/aquamarine_dagger/crystal_blade

#Arbalest
execute if score @s ca.item.id_selecter_mainhand matches 1002 if score @s usedCrossbow matches 1.. run function championsashes:items/dragonslayer_greatbow/arbalest/arbalest

#Bewtiching Branch
execute if score @s ca.item.id_selecter_mainhand matches 1003 if score @s usedmedal matches 1.. run function championsashes:items/bewitching_branch/base_info
execute if score @s ca.item.id_selecter_offhand matches 1003 if score @s usedmedal matches 1.. run function championsashes:items/bewitching_branch/base_info

#Black Blade
execute if score @s ca.item.id_selecter_mainhand matches 1004 run function championsashes:items/zweihander/black_blade/black_blade

#Black Knight Greataxe
execute if score @s ca.item.id_selecter_mainhand matches 1005 run function championsashes:items/black_knight_greataxe/stamp_upward_cut


#-----------------Special Effects


#Bewitching Branch
execute if entity @s[tag=used_charm] run function championsashes:items/bewitching_branch/used

#Black Blade
execute if entity @e[type=item_display,distance=..100,tag=head_projectile] if entity @s[tag=shot] run function championsashes:projectiles/dragon_bomb/dragon_head

#Drakeblood Greatsword
function championsashes:items/drakeblood_greatsword/permanent