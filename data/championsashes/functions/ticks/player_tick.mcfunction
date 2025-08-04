#CMD 1440012
#CMD 1390113
#Itemid 1059

#Initialize Params
execute store result score @s damage run data get entity @s SelectedItem.tag.Damage
execute store result score @s xpLevel run data get entity @s XpLevel
execute store result score @s falldistance run data get entity @s FallDistance
execute store result score @s Y_value run data get entity @s Pos[1]
execute store result score @s ca.item.id_selecter_mainhand run data get entity @s SelectedItem.tag.itemId
execute store result score @s ca.item.id_selecter_offhand run data get entity @s Inventory.[{Slot:-106b}].tag.itemId
execute store result score @s ca.item.id_selecter_helmet run data get entity @s Inventory.[{Slot:103b}].tag.itemId
execute store result score @s ca.item.id_selecter_chestplate run data get entity @s Inventory.[{Slot:102b}].tag.itemId
execute store result score @s ca.item.id_selecter_leggings run data get entity @s Inventory.[{Slot:101b}].tag.itemId
execute store result score @s ca.item.id_selecter_boots run data get entity @s Inventory.[{Slot:100b}].tag.itemId

#Snowball Detect
execute if score @s usedSnowball matches 1.. if entity @e[distance=..7,type=snowball,predicate=championsashes:misc/shadow_vortex] run function championsashes:projectiles/snowball_detect/snowball_detect
execute if score @s usedSnowball matches 1.. if entity @e[distance=..7,type=snowball,predicate=championsashes:misc/thunder_knife] run function championsashes:projectiles/snowball_detect/snowball_detect
execute if score @s usedSnowball matches 1.. if entity @e[distance=..7,type=snowball,predicate=championsashes:misc/death_blight_knife] run function championsashes:projectiles/snowball_detect/snowball_detect
execute if score @s usedSnowball matches 1.. if entity @e[distance=..7,type=snowball,predicate=championsashes:misc/stalk_dung_pie] run function championsashes:projectiles/snowball_detect/snowball_detect
#Get owner
execute as @e[type=snowball,distance=..7,predicate=championsashes:misc/shadow_vortex] run function championsashes:projectiles/snowball_detect/snowball_thrower
execute as @e[type=snowball,distance=..7,predicate=championsashes:misc/thunder_knife] run function championsashes:projectiles/snowball_detect/snowball_thrower
execute as @e[type=snowball,distance=..7,predicate=championsashes:misc/death_blight_knife] run function championsashes:projectiles/snowball_detect/snowball_thrower
execute as @e[type=snowball,distance=..7,predicate=championsashes:misc/stalk_dung_pie] run function championsashes:projectiles/snowball_detect/snowball_thrower

#-----------------------Item Selecter
execute if score @s ca.item.id_selecter_mainhand matches 999..1005 run function championsashes:item_id_selecter/id_selecter0
execute if score @s ca.item.id_selecter_offhand matches 999..1005 run function championsashes:item_id_selecter/id_selecter0

execute if score @s ca.item.id_selecter_mainhand matches 1007..1015 run function championsashes:item_id_selecter/id_selecter1
execute if score @s ca.item.id_selecter_offhand matches 1007..1015 run function championsashes:item_id_selecter/id_selecter1

execute if score @s ca.item.id_selecter_mainhand matches 1016..1020 run function championsashes:item_id_selecter/id_selecter2
execute if score @s ca.item.id_selecter_offhand matches 1016..1020 run function championsashes:item_id_selecter/id_selecter2

execute if score @s ca.item.id_selecter_mainhand matches 1021..1025 run function championsashes:item_id_selecter/id_selecter3
execute if score @s ca.item.id_selecter_offhand matches 1021..1025 run function championsashes:item_id_selecter/id_selecter3

execute if score @s ca.item.id_selecter_mainhand matches 1027..1030 run function championsashes:item_id_selecter/id_selecter4
execute if score @s ca.item.id_selecter_offhand matches 1027..1030 run function championsashes:item_id_selecter/id_selecter4

execute if score @s ca.item.id_selecter_mainhand matches 1031..1035 run function championsashes:item_id_selecter/id_selecter5
execute if score @s ca.item.id_selecter_offhand matches 1031..1035 run function championsashes:item_id_selecter/id_selecter5

execute if score @s ca.item.id_selecter_mainhand matches 1036..1042 run function championsashes:item_id_selecter/id_selecter6
execute if score @s ca.item.id_selecter_offhand matches 1036..1042 run function championsashes:item_id_selecter/id_selecter6

#Ringed Knight's Weapons
function championsashes:item_id_selecter/id_selecter7
function championsashes:item_id_selecter/id_selecter7

execute if score @s ca.item.id_selecter_mainhand matches 1042..1048 run function championsashes:item_id_selecter/id_selecter8
execute if score @s ca.item.id_selecter_offhand matches 1042..1048 run function championsashes:item_id_selecter/id_selecter8

execute if score @s ca.item.id_selecter_mainhand matches 1049..1052 run function championsashes:item_id_selecter/id_selecter9
execute if score @s ca.item.id_selecter_offhand matches 1049..1052 run function championsashes:item_id_selecter/id_selecter9
#Steel Anchor
execute unless score @s ca.item.id_selecter_offhand matches 1052 unless score @s ca.item.id_selecter_mainhand matches 1052 run function championsashes:items/steel_anchor/clear_steel_anchor_efc

execute if score @s ca.item.id_selecter_mainhand matches 1053..1059 run function championsashes:item_id_selecter/id_selecter10
execute if score @s ca.item.id_selecter_offhand matches 1053..1059 run function championsashes:item_id_selecter/id_selecter10

#-----------------------Blocks
function championsashes:blocks/block

#-----------------------Armor
execute if score @s ca.item.id_selecter_helmet matches 20000..20015 run function championsashes:item_id_selecter/helmet_selecter


execute if score @s ca.item.id_selecter_chestplate matches 30000..30015 run function championsashes:item_id_selecter/chestplate_selecter
execute unless score @s[tag=wither_regen] ca.item.id_selecter_chestplate matches 30000 run function championsashes:items/armor/witherite_chestplate_remove_effect
execute if score @s ca.item.id_selecter_leggings matches 40000..40015 run function championsashes:item_id_selecter/leggings_selecter
execute if score @s ca.item.id_selecter_boots matches 50000..50015 run function championsashes:item_id_selecter/boots_selecter

#-----------------------Permanent functions
function championsashes:ticks/permanent_functions

#Multiplayer rClick
function championsashes:clicker/multinteraction

#Reset interaction clicker
function championsashes:clicker/reset_interaction_clicker

#Animation Camera
execute as @s[tag=riding_display] run function championsashes:animated_effects/animation_effects_handle/ride

#Medals
#execute if score @s usedAnvil matches 1.. if data storage championsashes:player_data {Inventory:[{tag:{}}]} as @s run function championsashes:check/anvil
#execute if score @s usedmedal matches 1.. if data storage championsashes:player_data {SelectedItem:{tag:{}}} as @s run function championsashes:check/medal

#Clear effects after death
scoreboard players set @s[scores={player_death=1..}] bleeding_Timer 0
scoreboard players set @s[scores={player_death=1..}] frostbite_Timer 0
scoreboard players set @s[scores={player_death=1..}] scarlet_rot_Timer 0
scoreboard players set @s[scores={player_death=1..}] player_death 0

#Using Items
execute if score @s usedAnvil matches 1.. run scoreboard players set @s usedAnvil 0
execute if score @s usedmedal matches 1.. run scoreboard players set @s usedmedal 0
execute if score @s usedBow matches 1.. run scoreboard players set @s usedBow 0
execute if score @s usedFirework matches 1.. run scoreboard players set @s usedFirework 0
execute if score @s usedSnowball matches 1.. run scoreboard players set @s usedSnowball 0
execute if score @s usedCE matches 1.. run scoreboard players set @s usedCE 0
function championsashes:items/spacebar_query