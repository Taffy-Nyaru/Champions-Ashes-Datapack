#rClick to remove the milktea
execute as @s run function ldmc:raycast/ray
execute as @e[tag=block_clicker,scores={block_rClick=1..}] run kill @s
execute as @e[tag=milkweed] at @s unless entity @e[tag=block_clicker,limit=1,distance=..1] run function ldmc:blocks/milkweed/destroy

#Milktea buffer time
execute if entity @e[tag=milkweed,tag=drink_buffer_time_end] run scoreboard players add #drink_buffer_time ldmc_Timer 1
#Change CustomModelData after drinking the milktea and give effects
execute as @e[tag=milkweed,tag=!drink_buffer_time_end,nbt={item:{tag:{CustomModelData:1440001}}}] at @s if entity @e[tag=block_clicker,tag=raycast.target,distance=..1,scores={block_lClick=1..}] run function ldmc:blocks/milkweed/drink1
execute as @e[tag=milkweed,tag=!drink_buffer_time_end,nbt={item:{tag:{CustomModelData:1440005}}}] at @s if entity @e[tag=block_clicker,tag=raycast.target,distance=..1,scores={block_lClick=1..}] run function ldmc:blocks/milkweed/drink2
execute as @e[tag=milkweed,tag=!drink_buffer_time_end,nbt={item:{tag:{CustomModelData:1440006}}}] at @s if entity @e[tag=block_clicker,tag=raycast.target,distance=..1,scores={block_lClick=1..}] run function ldmc:blocks/milkweed/drink3
execute if score #drink_buffer_time ldmc_Timer matches 5.. run tag @e[tag=drink_buffer_time_end] remove drink_buffer_time_end
execute if score #drink_buffer_time ldmc_Timer matches 5.. run scoreboard players set #drink_buffer_time ldmc_Timer 0

#Steel Furnace
execute as @e[tag=steel_furnace] at @s if entity @a[limit=1,distance=..5] unless block ~ ~ ~ furnace run function ldmc:blocks/steel_furnace/destroy
execute if entity @s[scores={usedFurnace=1..}] if data storage ldmc:player_data {SelectedItem:{id:"minecraft:iron_ingot"}} unless data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:steel_ingot"}}} as @e[tag=steel_furnace,tag=!steel_furnace_lit,tag=raycast.target] at @s if block ~ ~-1 ~ campfire run function ldmc:blocks/steel_furnace/steel_furnace
execute if entity @s[scores={usedFurnace=1..}] if data storage ldmc:player_data {SelectedItem:{id:"minecraft:iron_ingot"}} unless data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:steel_ingot"}}} as @e[tag=steel_furnace,tag=!steel_furnace_lit,tag=raycast.target] at @s if block ~ ~-1 ~ soul_campfire run function ldmc:blocks/steel_furnace/steel_furnace

execute as @e[tag=steel_furnace_lit] run function ldmc:blocks/steel_furnace/steel_furnace_lit
execute as @s[scores={usedFurnace=1..}] if entity @e[tag=raycast.target,tag=steel_furnace,tag=end_smelting] run function ldmc:blocks/steel_furnace/take_loot
scoreboard players set @s usedFurnace 0

#Upgrade Table
#Displaying the item display
execute as @e[type=item] at @s if block ~ ~-1 ~ glass as @e[tag=upgrade_table,tag=!item_displayed,distance=..1.5] at @s summon item_display run function ldmc:blocks/upgrade_table/display
execute as @e[type=item] at @s if block ~ ~-1 ~ glass if entity @e[tag=upgrade_table,tag=!item_displayed,distance=..1.5] run kill @s
execute as @e[tag=upgrade_table,tag=!item_displayed] at @s if entity @e[tag=!upgrade_table,distance=..0.5] run tag @s add item_displayed
execute at @e[tag=item_displayed] if entity @a[distance=..5,scores={xpLevel=30..}] positioned ~ ~1 ~ as @e[type=item,limit=1,predicate=ldmc:enchanted_books,distance=..0.7] run function ldmc:blocks/upgrade_table/upgrade_table
execute as @e[tag=item_rotate] run function ldmc:blocks/upgrade_table/rotate
#Destroy
execute as @e[tag=upgrade_table] at @s if entity @a[limit=1,distance=..5] unless block ~ ~ ~ glass run function ldmc:blocks/upgrade_table/destroy

#steel block
execute as @e[tag=steel_block] at @s if entity @a[limit=1,distance=..5] unless block ~ ~ ~ iron_block run function ldmc:blocks/steel_block/destroy

#lava sponge
execute as @e[tag=lava_sponge] at @s if entity @a[limit=1,distance=..5] unless block ~ ~ ~ sea_lantern run function ldmc:blocks/lava_sponge/destroy
execute at @e[tag=lava_sponge] run function ldmc:blocks/lava_sponge/lava_sponge

#crafting table
execute if data storage ldmc:player_data {Inventory:[{tag:{id:"ldmc:crafting_table"}}]} run advancement grant @s[advancements={ldmc:func/make_energy_crafter=false}] only ldmc:func/make_energy_crafter
execute as @e[tag=crafter] at @s if entity @a[limit=1,distance=..5] unless block ~ ~ ~ dropper run function ldmc:blocks/crafting_table/destroy
execute at @e[tag=crafter,tag=raycast.target] if entity @a[sort=nearest,distance=..10] run function ldmc:blocks/crafting_table/store
execute at @e[tag=crafter,tag=raycast.target] if entity @a[sort=nearest,distance=..10] run function ldmc:blocks/crafting_table/recipe

#crying waystone
execute as @e[tag=crying_waystone] at @s if entity @a[limit=1,distance=..5] unless block ~ ~ ~ lodestone run function ldmc:blocks/crying_waystone/destroy
execute if data storage ldmc:player_data {SelectedItem:{tag:{LodestoneTracked:1b,id:"ldmc:homeward_bone"}}} as @s run function ldmc:blocks/crying_waystone/crying_waystone
execute unless entity @s[nbt={SelectedItem:{tag:{LodestoneTracked:1b}}}] if score @s[predicate=ldmc:using_item/homeward_bone] usedBone matches 1.. as @e[tag=crying_waystone,tag=raycast.target] run tag @s add activated
execute as @e[tag=crying_waystone,tag=activated] run function ldmc:blocks/crying_waystone/activated
execute if score @s usedBone matches 1.. run scoreboard players set @s usedBone 0