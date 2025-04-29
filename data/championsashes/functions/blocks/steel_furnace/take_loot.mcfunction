title @s actionbar ""
scoreboard players operation @s steelCount = @e[distance=..5,limit=1,sort=nearest,tag=steel_furnace,tag=end_smelting] steelCount
loot give @s loot championsashes:items/steel_nugget
scoreboard players set @s steelCount 1
tag @e[distance=..5,limit=1,sort=nearest,tag=steel_furnace,tag=end_smelting] remove end_smelting