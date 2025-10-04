execute if predicate championsashes:hurttime run scoreboard players add @s nep_injured_count 1

execute if score @s nep_injured_count matches 1..5 if predicate championsashes:hurttime run effect give @s instant_damage 2 0 true
execute if score @s nep_injured_count matches 5..10 if predicate championsashes:hurttime run effect give @s instant_damage 2 1 true
execute if score @s nep_injured_count matches 10..20 if predicate championsashes:hurttime run effect give @s instant_damage 2 2 true
execute if score @s nep_injured_count matches 20..30 if predicate championsashes:hurttime run effect give @s instant_damage 2 3 true