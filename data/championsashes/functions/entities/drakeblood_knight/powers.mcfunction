
execute if entity @s[predicate=championsashes:hurttime] on attacker if entity @s[type=player,predicate=championsashes:using_item/smite_weapon] as @e[limit=1,sort=nearest,distance=..25,predicate=championsashes:hurttime,type=wither_skeleton,tag=drakeblood_knight] run function championsashes:entities/drakeblood_knight/nep_elder/damaged_by_player
execute if entity @s[predicate=championsashes:hurttime] on attacker if entity @s[type=player,predicate=championsashes:using_item/punch_bow] as @e[limit=1,sort=nearest,distance=..25,predicate=championsashes:hurttime,type=wither_skeleton,tag=drakeblood_knight] run function championsashes:entities/drakeblood_knight/nep_elder/damaged_by_player

#drakeblood_phanalax
execute unless entity @e[type=item_display,tag=drakeblood_phanalax0,distance=..3] unless entity @e[type=item_display,tag=drakeblood_phanalax1,distance=..3] unless entity @e[type=item_display,tag=drakeblood_phanalax2,distance=..3] run scoreboard players add @s drakeblood_phanalax_time 1
execute if score @s drakeblood_phanalax_time matches 50.. run function championsashes:entities/drakeblood_knight/summon_phanalax
execute if score @s drakeblood_phanalax_time matches 50.. run scoreboard players set @s drakeblood_phanalax_time 0

execute as @e[tag=drakeblood_knight,type=wither_skeleton,advancements={championsashes:enter_block=true}] at @s run function championsashes:entities/search_air

execute as @e[tag=entity_with_drakeblood_phanalax,type=wither_skeleton,distance=..10] at @s run function championsashes:entities/drakeblood_knight/entity_phanalax
execute at @e[tag=entity_with_drakeblood_phanalax,type=wither_skeleton,distance=..10] as @e[type=item_display,tag=drakeblood_phanalax0,distance=..10] run function championsashes:projectiles/phanalax/rotation
execute at @e[tag=entity_with_drakeblood_phanalax,type=wither_skeleton,distance=..10] as @e[type=item_display,tag=drakeblood_phanalax1,distance=..10] run function championsashes:projectiles/phanalax/rotation
execute at @e[tag=entity_with_drakeblood_phanalax,type=wither_skeleton,distance=..10] as @e[type=item_display,tag=drakeblood_phanalax2,distance=..10] run function championsashes:projectiles/phanalax/rotation