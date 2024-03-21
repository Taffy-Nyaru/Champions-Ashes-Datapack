execute if score @s shift matches 1.. if score @s usedmedal matches 1.. at @s run function ldmc:items/serpent_hunter/skill
execute if score @s damage matches ..-1 run item replace entity @s weapon.mainhand with air
execute if score @s damage matches 101.. run scoreboard players set @s damage -1
execute if score @s damage matches ..-1 run scoreboard players set @s damage 1
execute if entity @s[advancements={ldmc:hurt_entities=true},gamemode=survival] at @s if entity @e[distance=..6,limit=1,predicate=ldmc:hurttime,tag=raycast.target] run function ldmc:items/item_durability