item modify entity @s weapon.mainhand ldmc:charged
item modify entity @s weapon.mainhand ldmc:refill

execute at @s run particle soul_fire_flame ^ ^1.3 ^0.3 0.1 0.1 0.1 0 1
execute unless entity @e[tag=aj.aquamarine_dagger.root,distance=..2] if score @s usedCrossbow matches 1.. at @s run function animated_java:aquamarine_dagger/summon
execute if score @s usedCrossbow matches 1.. as @e[tag=aj.aquamarine_dagger.root] run function animated_java:aquamarine_dagger/animations/aquamarine_skill/play
execute if score @s usedCrossbow matches 1.. if score @s shift matches 1.. as @e[tag=aj.aquamarine_dagger.root] run function animated_java:aquamarine_dagger/animations/aquamarine_heavy_skill/play
scoreboard players set @s usedCrossbow 0