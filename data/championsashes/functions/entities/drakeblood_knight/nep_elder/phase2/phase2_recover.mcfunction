execute if predicate championsashes:hurttime run scoreboard players add @s nep_injured_count 1

execute if score @s nep_injured_count matches 1..20 if predicate championsashes:hurttime run effect give @s instant_damage 2 0 true
execute if score @s nep_injured_count matches 20..40 if predicate championsashes:hurttime run effect give @s instant_damage 2 1 true
execute if score @s nep_injured_count matches 40..60 if predicate championsashes:hurttime run effect give @s instant_damage 2 2 true
execute if score @s nep_injured_count matches 60.. if predicate championsashes:hurttime run effect give @s instant_damage 2 3 true