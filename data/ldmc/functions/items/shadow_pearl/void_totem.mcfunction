execute at @s if score @s Y_value matches ..-70 run spreadplayers ~ ~ 500 50 true @s
execute as @s[scores={usedTotem=1..}] run effect give @s resistance 10 4
execute as @s[scores={usedTotem=1..}] run effect give @s instant_health 1 150 true
execute at @s[scores={usedTotem=1..}] run particle portal ~ ~ ~ 1 2 1 0 10