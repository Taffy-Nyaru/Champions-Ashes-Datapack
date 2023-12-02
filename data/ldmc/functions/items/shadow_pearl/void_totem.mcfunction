execute at @s if score @s Y_value matches ..-70 run spreadplayers ~ ~ 500 50 true @s
execute if score @s usedTotem matches 1.. run effect give @s resistance 10 1
execute if score @s usedTotem matches 1.. run effect give @s instant_health 4 150 true
execute at @s[scores={usedTotem=1..}] run particle portal ^ ^0.5 ^-0.0001 1 2 1 1 10
execute if score @s usedTotem matches 1.. run scoreboard players set @s usedTotem 0