#Entities
execute if entity @e[type=warden,distance=..25] run function championsashes:entities/warden/powers
execute if entity @e[type=wither_skeleton,distance=..25,tag=night_cavalry] run function championsashes:entities/night_cavalry/powers

execute if entity @e[type=item,limit=1,predicate=championsashes:misc/cheat_engine] run function championsashes:entities/drakeblood_knight/nep_elder/killed_nep
execute if entity @e[type=item,limit=1,predicate=championsashes:misc/cheat_engine] run kill @e[type=item,predicate=championsashes:misc/cheat_engine]

execute if predicate championsashes:using_item/nep_book run loot replace entity @e[limit=1,distance=..25,type=wither_skeleton,tag=nep_elder,tag=!hat] armor.head loot championsashes:armor/drakeblood_helmet
execute if predicate championsashes:got_item/nep_book run loot replace entity @e[limit=1,distance=..25,type=wither_skeleton,tag=nep_elder,tag=!hat] armor.head loot championsashes:armor/drakeblood_helmet
execute if predicate championsashes:using_item/nep_book run tag @e[limit=1,distance=..25,type=wither_skeleton,tag=nep_elder] add hat
tag @e[tag=hat,limit=1,distance=..25,type=wither_skeleton] remove helmet

execute unless predicate championsashes:using_item/nep_book run loot replace entity @e[limit=1,distance=..25,type=wither_skeleton,tag=nep_elder,tag=!helmet] armor.head loot championsashes:armor/old_sorcerer_hat_nep
execute if predicate championsashes:got_item/nep_book run loot replace entity @e[limit=1,distance=..25,type=wither_skeleton,tag=nep_elder,tag=!helmet] armor.head loot championsashes:armor/old_sorcerer_hat_nep
execute unless predicate championsashes:using_item/nep_book run tag @e[limit=1,distance=..25,type=wither_skeleton,tag=nep_elder] add helmet
tag @e[tag=helmet,limit=1,distance=..25,type=wither_skeleton] remove hat

#Animation air detect
execute if entity @s[tag=air_detect] run function championsashes:animated_effects/air_detect

#Special Advancements
execute as @s[advancements={championsashes:parry/brass_parry=true}] run advancement revoke @s only championsashes:parry/brass_parry
execute as @s[advancements={championsashes:parry/red_white_parry=true}] run advancement revoke @s only championsashes:parry/red_white_parry

scoreboard players set #10ticks ca.tick10_schedule 0