title @s actionbar ""
scoreboard players operation @s steelCount = @e[tag=steel_furnace,tag=end_smelting,tag=raycast.target] steelCount
loot give @s loot ldmc:items/steel_nugget
scoreboard players set @s steelCount 1
tag @e[tag=steel_furnace,tag=end_smelting,tag=raycast.target] remove end_smelting