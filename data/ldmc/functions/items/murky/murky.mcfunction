item modify entity @s weapon.mainhand ldmc:charged
item modify entity @s weapon.mainhand ldmc:refill
execute store result score @s[tag=!quickstep] gamemode run data get entity @s playerGameType
execute if score @s usedCrossbow matches 1.. if score @s shift matches 1.. run tag @s add quickstep
execute as @s[tag=quickstep,advancements={ldmc:enter_block=true}] run function ldmc:entities/search_air

execute if score @s usedCrossbow matches 1.. unless score @s shift matches 1.. run function ldmc:items/murky/r1reset
execute if entity @s[advancements={ldmc:hurt_entities=true}] as @e[tag=raycast.target,type=!#ldmc:special_entities,limit=1,sort=nearest] run tag @s add stiff
execute if entity @s[advancements={ldmc:hurt_entities=true},gamemode=survival] run function ldmc:items/item_durability
scoreboard players set @s usedCrossbow 0