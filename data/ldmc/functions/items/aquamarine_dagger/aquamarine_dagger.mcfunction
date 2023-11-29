item modify entity @s weapon.mainhand ldmc:charged
item modify entity @s weapon.mainhand ldmc:refill

execute unless entity @e[tag=aj.aquamarine_dagger.root,distance=..2] if score @s usedCrossbow matches 1.. at @s run function animated_java:aquamarine_dagger/summon
execute if score @s usedCrossbow matches 1.. at @s run particle soul_fire_flame ^ ^1.3 ^0.1 0.1 0.1 0.1 0 10
execute if score @s usedCrossbow matches 1.. run tag @s add aquamarine_dagger
execute if score @s usedCrossbow matches 1.. as @e[tag=aj.aquamarine_dagger.root] run function animated_java:aquamarine_dagger/animations/aquamarine_skill/play
execute if score @s usedCrossbow matches 1.. if score @s shift matches 1.. as @e[tag=aj.aquamarine_dagger.root] run function animated_java:aquamarine_dagger/animations/aquamarine_heavy_skill/play

#Durability
execute if entity @s[advancements={ldmc:hurt_entities=true},gamemode=survival] run function ldmc:items/item_durability
execute if score @s damage matches ..-1 run item replace entity @s weapon.mainhand with air
execute if score @s damage matches 465.. run scoreboard players set @s damage -1
execute if score @s damage matches ..-1 run scoreboard players set @s damage 1

scoreboard players set @s usedCrossbow 0