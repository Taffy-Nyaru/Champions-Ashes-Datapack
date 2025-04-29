#Obsidian Lamina
execute if score @s ca.item.id_selecter_mainhand matches 1036 if score @s shift matches 1.. run function championsashes:items/obsidian_lamina/dynastic_sickleplay
execute if score @s[tag=!dynastic_sickleplay_user,tag=!dynastic_throw_user,advancements={championsashes:hurt_entities=true}] ca.item.id_selecter_mainhand matches 1036 run scoreboard players add @e[distance=..7,tag=raycast.target,predicate=championsashes:hurttime,type=!#championsashes:special_entities] bleeding_Timer 800

#Pontiff Knight's Curved Sword
execute if score @s ca.item.id_selecter_mainhand matches 1037 run function championsashes:items/pkcs/pkcs

#Rakshasa's Great Katana
execute if score @s ca.item.id_selecter_mainhand matches 1038 run function championsashes:items/rakshasa_great_katana/attack_types

#Red White Shield
execute if score @s ca.item.id_selecter_offhand matches 1039 if entity @s[nbt=!{ActiveEffects:[{Id:10}]}] run effect give @s regeneration 114514 0 true
execute if score @s ca.item.id_selecter_offhand matches 1039 if score @s ca.item.id_selecter_mainhand matches 1051 run tag @s add infinite_true_combo

#Ring of Favor
execute if score @s ca.item.id_selecter_mainhand matches 1041 if entity @s[tag=!stiff] run function championsashes:items/ring_of_favor/ring_of_favor
execute if score @s ca.item.id_selecter_offhand matches 1041 if entity @s[tag=!stiff] run function championsashes:items/ring_of_favor/ring_of_favor


#-----------------Special Effects


#Pontiff Knight's Curved Sword
execute as @e[distance=..5,type=item_display,tag=pkcs_skill] run function championsashes:items/pkcs/rotation
execute as @s[tag=using_skill] run function championsashes:items/pkcs/skill