execute run scoreboard players add @s nep_injured_count 1

execute if score @s nep_injured_count matches 1..40 run effect give @s instant_damage 1 0 true
execute if score @s nep_injured_count matches 40..60 run effect give @s instant_damage 1 1 true
execute if score @s nep_injured_count matches 60..80 run effect give @s instant_damage 1 2 true
execute if score @s nep_injured_count matches 80.. run effect give @s instant_damage 1 3 true