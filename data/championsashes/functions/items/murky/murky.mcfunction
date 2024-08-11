item modify entity @s weapon.mainhand championsashes:charged
item modify entity @s weapon.mainhand championsashes:refill
execute store result score @s[tag=!quickstep] gamemode run data get entity @s playerGameType
execute if score @s usedCrossbow matches 1.. if score @s shift matches 1.. run tag @s add quickstep

#Quickstep enter block
execute as @s[tag=quickstep] at @s unless block ~ ~1 ~ #championsashes:transparent_blocks run tag @s add quickstep_enter_block
execute if entity @s[tag=quickstep_enter_block] run scoreboard players add #quickstep_enter_block championsashes_Timer 1 
execute as @s[tag=quickstep_enter_block] at @s run function championsashes:entities/search_air

execute if score @s usedCrossbow matches 1.. unless score @s shift matches 1.. run function championsashes:items/murky/r1reset
execute if entity @s[advancements={championsashes:hurt_entities=true}] as @e[tag=raycast.target,type=!#championsashes:special_entities,limit=1,sort=nearest] run function championsashes:items/murky/stiff
execute if entity @s[advancements={championsashes:hurt_entities=true},gamemode=survival] at @s if entity @e[distance=..6,limit=1,predicate=championsashes:hurttime,tag=raycast.target] run function championsashes:items/item_durability
scoreboard players set @s usedCrossbow 0