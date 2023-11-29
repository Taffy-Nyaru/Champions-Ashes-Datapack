item modify entity @s weapon.mainhand ldmc:charged
item modify entity @s weapon.mainhand ldmc:refill
execute store result score @s[tag=!bloodhound_step] gamemode run data get entity @s playerGameType

#3 debuff
execute at @s[advancements={ldmc:hurt_entities=true}] run scoreboard players add @e[tag=raycast.target,tag=!complete_rotten,type=!#ldmc:special_entities,distance=..5] scarlet_rot_Timer 100
execute at @s[advancements={ldmc:hurt_entities=true}] run scoreboard players add @e[tag=raycast.target,type=!#ldmc:special_entities,distance=..5] bleeding_Timer 50
execute at @s[advancements={ldmc:hurt_entities=true}] run effect give @e[tag=raycast.target,type=!#ldmc:special_entities,distance=..5] poison 10 0 true

#Durability
execute as @s[advancements={ldmc:hurt_entities=true},gamemode=survival] run function ldmc:items/item_durability
execute if score @s damage matches ..-1 run item replace entity @s weapon.mainhand with air
execute if score @s damage matches 465.. run scoreboard players set @s damage -1
execute if score @s damage matches ..-1 run scoreboard players set @s damage 1

execute if score @s usedCrossbow matches 1.. if score @s shift matches 1.. run tag @s add bloodhound_step

#BloodHound step enter block
execute as @s[tag=bloodhound_step] at @s unless block ~ ~1 ~ #ldmc:transparent_blocks run tag @s add bloodhound_step_enter_block
execute if entity @s[tag=bloodhound_step_enter_block] run scoreboard players add #bloodhound_step_enter_block ldmc_Timer 1 
execute as @s[tag=bloodhound_step_enter_block] at @s run function ldmc:entities/search_air
scoreboard players set @s usedCrossbow 0