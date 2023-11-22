execute unless block ~0.5 ~ ~ air unless block ~0.5 ~ ~ water unless block ~0.5 ~ ~ lava run function ldmc:items/dung_particle
execute unless block ~ ~0.5 ~ air unless block ~ ~0.5 ~ water unless block ~ ~0.5 ~ lava run function ldmc:items/dung_particle
execute unless block ~ ~ ~0.5 air unless block ~ ~ ~0.5 water unless block ~ ~ ~0.5 lava run function ldmc:items/dung_particle
execute unless block ~-0.5 ~ ~ air unless block ~-0.5 ~ ~ water unless block ~-0.5 ~ ~ lava run function ldmc:items/dung_particle
execute unless block ~ ~-0.5 ~ air unless block ~ ~-0.5 ~ water unless block ~ ~-0.5 ~ lava run function ldmc:items/dung_particle
execute unless block ~ ~ ~-0.5 air unless block ~ ~ ~-0.5 water unless block ~ ~ ~-0.5 lava run function ldmc:items/dung_particle
execute if entity @e[type=!snowball,type=!#ldmc:special_entities,tag=!csg,distance=..2] run function ldmc:items/dung_particle
execute as @e[type=!snowball,type=!#ldmc:special_entities,tag=!csg,distance=..3] run effect give @s poison 60 0 true