item modify entity @s weapon.mainhand championsashes:charged
item modify entity @s weapon.mainhand championsashes:refill

#Skill
execute if score @s usedCrossbow matches 1.. if score @s shift matches 1.. unless score @s skill_time matches 1.. at @s run summon item_display ~ ~2 ~ {item_display:"head",Tags:["pkcs_skill"],item:{id:"diamond_sword",Count:1b,tag:{CustomModelData:1390059,Enchantments:[{id:"infinity",lvl:1}]}}}
execute if score @s usedCrossbow matches 1.. if score @s shift matches 1.. unless score @s skill_time matches 1.. run tag @s add using_skill

#Frostbite
execute if entity @s[advancements={championsashes:hurt_entities=true}] as @e[tag=raycast.target,type=!#championsashes:special_entities,limit=1] run tag @s add stiff
execute if entity @s[advancements={championsashes:hurt_entities=true}] as @e[tag=raycast.target,type=!#championsashes:special_entities,limit=1] run scoreboard players set @s custom_stiff_time 5
execute at @s[advancements={championsashes:hurt_entities=true}] run scoreboard players add @e[tag=raycast.target,type=!#championsashes:special_entities,distance=..5] frostbite_Timer 520
execute if entity @s[advancements={championsashes:hurt_entities=true},gamemode=survival] at @s if entity @e[distance=..6,limit=1,predicate=championsashes:hurttime,tag=raycast.target] run function championsashes:items/item_durability
scoreboard players set @s usedCrossbow 0