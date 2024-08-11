execute if score @s shift matches 1.. if score @s usedmedal matches 1.. at @s run function championsashes:items/serpent_hunter/skill
execute if score @s damage matches ..-1 run item replace entity @s weapon.mainhand with air
execute if score @s damage matches 100.. run item replace entity @s weapon.mainhand with air
execute if entity @s[advancements={championsashes:hurt_entities=true},gamemode=survival] at @s if entity @e[distance=..6,limit=1,predicate=championsashes:hurttime,tag=raycast.target] run function championsashes:items/item_durability