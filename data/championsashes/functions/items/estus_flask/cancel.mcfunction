scoreboard players add @s estus_cancel_tick 1
execute if score @s[advancements={championsashes:estus_flask/estus_cancel=true}] estus_cancel_tick matches 1..5 if score @s shift matches 1.. unless entity @e[tag=raycast.target,type=!#championsashes:special_entities,distance=..6.5] run function championsashes:items/estus_flask/give_effect
execute if score @s estus_cancel_tick matches 20.. run tag @s remove estus_cancel
execute if score @s estus_cancel_tick matches 20.. run scoreboard players set @s estus_cancel_tick 0