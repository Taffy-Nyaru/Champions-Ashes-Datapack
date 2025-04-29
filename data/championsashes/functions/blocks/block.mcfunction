#TODO Fuck with scoreboards
#Right Click to remove the milktea
execute as @e[distance=..15,type=interaction,tag=block_clicker,scores={block_ca.interaction_rClick=1..}] run kill @s
execute as @e[distance=..15,type=item_display,tag=milkweed] at @s unless entity @e[type=interaction,tag=block_clicker,limit=1,distance=..1] run function championsashes:blocks/milkweed/destroy

#Milktea buffer time
execute if entity @e[distance=..15,type=item_display,tag=milkweed,tag=drink_buffer_time_end] run scoreboard players add #drink_buffer_time championsashes_Timer 1
#Change CustomModelData after drinking the milktea and give effects
execute as @e[distance=..15,type=item_display,tag=milkweed,tag=!drink_buffer_time_end,predicate=championsashes:misc/milkweed1] at @s if entity @e[tag=block_clicker,tag=raycast.target,distance=..1,scores={block_ca.interaction_lClick=1..}] run function championsashes:blocks/milkweed/drink1
execute as @e[distance=..15,type=item_display,tag=milkweed,tag=!drink_buffer_time_end,predicate=championsashes:misc/milkweed2] at @s if entity @e[tag=block_clicker,tag=raycast.target,distance=..1,scores={block_ca.interaction_lClick=1..}] run function championsashes:blocks/milkweed/drink2
execute as @e[distance=..15,type=item_display,tag=milkweed,tag=!drink_buffer_time_end,predicate=championsashes:misc/milkweed3] at @s if entity @e[tag=block_clicker,tag=raycast.target,distance=..1,scores={block_ca.interaction_lClick=1..}] run function championsashes:blocks/milkweed/drink3
execute if score #drink_buffer_time championsashes_Timer matches 5.. run tag @e[distance=..15,type=item_display,tag=milkweed,tag=drink_buffer_time_end] remove drink_buffer_time_end
execute if score #drink_buffer_time championsashes_Timer matches 5.. run scoreboard players set #drink_buffer_time championsashes_Timer 0

#Steel Furnace
execute as @e[distance=..15,type=item_display,tag=steel_furnace] at @s unless block ~ ~ ~ furnace run function championsashes:blocks/steel_furnace/destroy
execute if entity @s[scores={usedFurnace=1..}] if predicate championsashes:using_item/iron_ingot unless predicate championsashes:using_item/steel_ingot as @e[distance=..5,limit=1,sort=nearest,type=item_display,tag=steel_furnace,tag=!steel_furnace_lit] at @s if block ~ ~-1 ~ campfire run function championsashes:blocks/steel_furnace/steel_furnace
execute if entity @s[scores={usedFurnace=1..}] if predicate championsashes:using_item/iron_ingot unless predicate championsashes:using_item/steel_ingot as @e[distance=..5,limit=1,sort=nearest,type=item_display,tag=steel_furnace,tag=!steel_furnace_lit] at @s if block ~ ~-1 ~ soul_campfire run function championsashes:blocks/steel_furnace/steel_furnace
execute if score @s usedFurnace matches 1.. at @s if entity @e[distance=..5,limit=1,sort=nearest,type=item_display,tag=steel_furnace,tag=!steel_furnace_lit] run title @s actionbar "You need to lit campfire under steel furnace and holding iron ingots, then try get close enough to the furnace to use it."

execute as @e[distance=..50,type=item_display,tag=steel_furnace_lit] run function championsashes:blocks/steel_furnace/steel_furnace_lit
execute if entity @s[scores={usedFurnace=1..}] if entity @e[distance=..10,type=item_display,limit=1,sort=nearest,tag=steel_furnace,tag=end_smelting] run function championsashes:blocks/steel_furnace/take_loot

scoreboard players set @s usedFurnace 0

#Upgrade Table
#Displaying the item display optimized and moved to tick20 function
execute as @e[distance=..25,type=item_display,tag=upgrade_table,tag=!item_displayed] if entity @e[type=item_display,tag=!upgrade_table,distance=..0.5] run tag @s add item_displayed
execute at @e[distance=..25,type=item_display,tag=item_displayed] if entity @s[distance=..5,scores={xpLevel=30..}] positioned ~ ~1 ~ as @e[type=item,limit=1,predicate=championsashes:enchanted_books,distance=..0.7] run function championsashes:blocks/upgrade_table/upgrade_table
execute as @e[distance=..25,type=item_display,tag=item_rotate] run function championsashes:blocks/upgrade_table/rotate
#Destroy
execute as @e[distance=..15,type=item_display,tag=upgrade_table] at @s unless block ~ ~ ~ glass run function championsashes:blocks/upgrade_table/destroy

#steel block
execute as @e[distance=..15,type=item_display,tag=steel_block] at @s unless block ~ ~ ~ iron_block run function championsashes:blocks/steel_block/destroy

#lava sponge
execute as @e[distance=..15,type=item_display,tag=lava_sponge] at @s unless block ~ ~ ~ sea_lantern run function championsashes:blocks/lava_sponge/destroy
execute at @e[distance=..15,type=item_display,tag=lava_sponge] at @s run function championsashes:blocks/lava_sponge/lava_sponge

#Alumopper
execute if score @s[scores={usedmedal=1..}] ca.item.id_selecter_mainhand matches -1 run function championsashes:blocks/alumopper_fumo/locate
function championsashes:blocks/alumopper_fumo/alumopper

#crafting table
execute as @e[distance=..15,type=item_display,tag=crafter] at @s unless block ~ ~ ~ dropper run function championsashes:blocks/crafting_table/destroy
execute at @e[distance=..10,type=item_display,tag=crafter,limit=1,sort=nearest] run function championsashes:blocks/crafting_table/store
execute at @e[distance=..10,type=item_display,tag=crafter,limit=1,sort=nearest] run function championsashes:blocks/crafting_table/recipe

#Crying Waystone
execute as @e[distance=..15,type=item_display,tag=crying_waystone] at @s unless block ~ ~ ~ lodestone run function championsashes:blocks/crying_waystone/destroy
execute if predicate championsashes:using_item/homeward_bone_track run function championsashes:blocks/crying_waystone/crying_waystone
execute unless entity @s[predicate=championsashes:misc/lodestonetracked] if score @s[scores={ca.item.id_selecter_mainhand=1025}] usedBone matches 1.. as @e[limit=1,sort=nearest,distance=..10,type=item_display,tag=crying_waystone] run tag @s add activated
execute as @e[distance=..15,type=item_display,tag=crying_waystone,tag=activated] run function championsashes:blocks/crying_waystone/activated
execute if score @s usedBone matches 1.. run scoreboard players set @s usedBone 0