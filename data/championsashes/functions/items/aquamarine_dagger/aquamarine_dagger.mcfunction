item modify entity @s weapon.mainhand championsashes:charged
item modify entity @s weapon.mainhand championsashes:refill

execute unless entity @e[tag=aj.aquamarine_dagger.root,distance=..2] if score @s usedCrossbow matches 1.. at @s run function animated_java:aquamarine_dagger/summon
execute if score @s usedCrossbow matches 1.. at @s run particle soul_fire_flame ^ ^1.3 ^0.1 0.1 0.1 0.1 0 10
execute if score @s usedCrossbow matches 1.. run tag @s add aquamarine_dagger
execute if score @s usedCrossbow matches 1.. as @e[tag=aj.aquamarine_dagger.root] run function animated_java:aquamarine_dagger/animations/aquamarine_skill/play
execute if score @s usedCrossbow matches 1.. if score @s shift matches 1.. as @e[tag=aj.aquamarine_dagger.root] run function animated_java:aquamarine_dagger/animations/aquamarine_heavy_skill/play

#Durability
execute if entity @s[advancements={championsashes:hurt_entities=true},gamemode=survival] at @s if entity @e[distance=..6,limit=1,predicate=championsashes:hurttime,tag=raycast.target] run function championsashes:items/item_durability
execute if score @s damage matches ..-1 run item replace entity @s weapon.mainhand with air
execute if score @s damage matches 465.. run item replace entity @s weapon.mainhand with air

scoreboard players set @s usedCrossbow 0