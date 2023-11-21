execute unless block ~1 ~ ~ air unless block ~1 ~ ~ water unless block ~1 ~ ~ lava run particle block podzol ~ ~ ~ 0.3 0.1 0.3 1 100 force
execute unless block ~ ~1 ~ air unless block ~ ~1 ~ water unless block ~ ~1 ~ lava run particle block podzol ~ ~ ~ 0.3 0.1 0.3 1 100 force
execute unless block ~ ~ ~1 air unless block ~ ~ ~1 water unless block ~ ~ ~1 lava run particle block podzol ~ ~ ~ 0.3 0.1 0.3 1 100 force
execute unless block ~-1 ~ ~ air unless block ~-1 ~ ~ water unless block ~-1 ~ ~ lava run particle block podzol ~ ~ ~ 0.3 0.1 0.3 1 100 force
execute unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water unless block ~ ~-1 ~ lava run particle block podzol ~ ~ ~ 0.3 0.1 0.3 1 100 force
execute unless block ~ ~ ~-1 air unless block ~ ~ ~-1 water unless block ~ ~ ~-1 lava run particle block podzol ~ ~ ~ 0.3 0.1 0.3 1 100 force
execute if entity @e[type=!snowball,type=!#ldmc:special_entities,nbt=!{SelectedItem:{tag:{id:"ldmc:stalk_dung_pie"}}},distance=..2] run particle block podzol ~ ~ ~ 0.3 0.1 0.3 1 100 force
execute as @e[type=!snowball,type=!#ldmc:special_entities,distance=..3] run effect give @s poison 60 0 true