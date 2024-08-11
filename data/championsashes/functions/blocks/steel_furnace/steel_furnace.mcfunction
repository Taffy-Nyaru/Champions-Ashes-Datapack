title @a[scores={usedFurnace=1..},limit=1,sort=nearest,distance=..5] actionbar "Wait some time for steel nuggets.."
data modify entity @s item.tag.CustomModelData set value 1440003
execute store result score @s steelCount run data get entity @a[scores={usedFurnace=1..},limit=1,sort=nearest,distance=..5] SelectedItem.Count
scoreboard players operation #final_refine_time championsashes_Timer *= @s steelCount
item replace entity @a[scores={usedFurnace=1..},limit=1,sort=nearest,distance=..5] weapon.mainhand with air
tag @s add steel_furnace_lit