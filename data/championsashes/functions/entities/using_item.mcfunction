execute as @s[type=!player,predicate=championsashes:entity_using_item/nightrider_glaive] on target run scoreboard players add @s frostbite_Timer 720
execute as @s[type=!player,predicate=championsashes:entity_using_item/drakeblood_greatsword] on target run scoreboard players add @s bleeding_Timer 320
execute as @s[type=!player,predicate=championsashes:entity_using_item/drakeblood_greatsword] on target if entity @s[type=player,advancements={championsashes:hurt_players=true}] run scoreboard players add @s bleeding_Timer 50
execute as @s[type=!player,predicate=championsashes:entity_using_item/ringed_knight_straight_sword] on target run data modify entity @s Fire set value 200s
execute as @s[type=!player,predicate=championsashes:entity_using_item/murky_hand_scythe] on target run tag @s add stiff
execute as @s[type=!player,predicate=championsashes:entity_using_item/murky_hand_scythe] on target run scoreboard players set @s custom_stiff_time 20
execute as @s[type=!player,predicate=championsashes:entity_using_item/pontiff_knight_curved_sword] on target run tag @s add frost_stiff
execute as @s[type=!player,predicate=championsashes:entity_using_item/pontiff_knight_curved_sword] on target run scoreboard players set @s custom_stiff_time 5
execute as @s[type=!player,predicate=championsashes:entity_using_item/black_knight_axe] on target if entity @s[tag=parry_success] on attacker run effect give @s strength 5 5 true