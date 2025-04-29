execute store result score @s ca.warden.anger run data get entity @s ca.warden.anger.suspects[0].ca.warden.anger
execute if score @s ca.warden.anger matches 100..150 run function championsashes:entities/warden/block_destroy
execute at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water unless block ~ ~-1 ~ lava run effect give @s slow_falling 1 0 true
