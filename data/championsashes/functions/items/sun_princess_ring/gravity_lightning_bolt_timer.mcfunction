scoreboard players add @s gravity_lightning 1
#execute unless entity @e[type=marker,tag=aj.field_extension.locator] run scoreboard players add @s gravity_lightning 1
damage @s 10 minecraft:out_of_world by @s
execute if score @s gravity_lightning matches 120.. run function championsashes:items/sun_princess_ring/gravity_lightning_end