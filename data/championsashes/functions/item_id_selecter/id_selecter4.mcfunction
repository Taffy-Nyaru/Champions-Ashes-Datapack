#Irithyll Straight Sword
execute if score @s ca.item.id_selecter_mainhand matches 1027 if score @s shift matches 1.. run function championsashes:items/irithyll_straight_sword/sword_dance
execute if score @s[advancements={championsashes:hurt_entities=true}] ca.item.id_selecter_mainhand matches 1027 run scoreboard players add @e[distance=..5,predicate=championsashes:hurttime,type=!#championsashes:special_entities] frostbite_Timer 700

#Ledo's Great Hammer
execute if score @s ca.item.id_selecter_mainhand matches 1028 if score @s shift matches 1.. run function championsashes:items/ledo_great_hammer/steel_caller

#Lorian's Greatsword
execute if score @s ca.item.id_selecter_mainhand matches 1029 if score @s shift matches 1.. run function championsashes:items/lorians_greatsword/lorians_flame

#Lothric Holy Sword
execute if score @s ca.item.id_selecter_mainhand matches 1030 if score @s shift matches 1.. run function championsashes:items/lothric_holy_sword/lothric_holy_sword


#-----------------Special Effects


#Lothric Holy Sword
execute as @e[distance=..30,type=item_display,tag=lazer_animate] at @s run function championsashes:projectiles/lazer_beam/lazer_beam_animate
execute as @e[distance=..30,type=item_display,tag=lazer_fading] run function championsashes:projectiles/lazer_beam/lazer_faded
execute unless entity @e[distance=..30,type=item_display,tag=lazer_beam] run function championsashes:projectiles/lazer_beam/remove_tags