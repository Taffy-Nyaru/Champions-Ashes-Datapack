execute at @s if block ~ ~-1 ~ lava run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 blackstone replace lava
effect give @s dolphins_grace 1 0 true
execute if score @s falldistance matches 4.. at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water run effect give @s slow_falling 1 0 true
effect clear @s wither