#type=!#championsashes:special_entities
#Entity Stiff
execute as @e[tag=stiff,type=!#championsashes:special_entities,distance=..30] run function championsashes:items/stiff

#Save the items and xp orbs in special lightning bolts
execute at @e[type=lightning_bolt,tag=Thunder,distance=..5,limit=10] as @e[type=item,distance=..5] run data modify entity @s Invulnerable set value 1b
execute at @e[type=lightning_bolt,tag=Thunder,distance=..5,limit=10] as @e[type=experience_orb,distance=..5] run data modify entity @s Invulnerable set value 1b

#Entity effects(Extreme Optimized)
execute at @e[type=!#championsashes:special_entities,distance=..15,predicate=!championsashes:entity_using_item/no_item] as @e[type=!#championsashes:special_entities,predicate=championsashes:hurttime,distance=..7] on attacker run function championsashes:entities/using_items/using_item

#Drakeblood Knight
execute as @e[distance=..25,type=wither_skeleton,tag=drakeblood_knight] at @s run function championsashes:entities/drakeblood_knight/powers
execute as @e[distance=..25,type=wither_skeleton,tag=nep_elder] at @s run function championsashes:entities/drakeblood_knight/nep_elder/powers
execute as @e[type=item_display,tag=drakeblood_phanalax0,distance=..10] at @s unless entity @e[tag=entity_with_drakeblood_phanalax,type=wither_skeleton,distance=..10] run kill @s
execute as @e[type=item_display,tag=drakeblood_phanalax1,distance=..10] at @s unless entity @e[tag=entity_with_drakeblood_phanalax,type=wither_skeleton,distance=..10] run kill @s
execute as @e[type=item_display,tag=drakeblood_phanalax2,distance=..10] at @s unless entity @e[tag=entity_with_drakeblood_phanalax,type=wither_skeleton,distance=..10] run kill @s

#Effects
execute as @e[distance=..15,type=!#championsashes:special_entities,scores={bleeding_Timer=1..}] at @s run function championsashes:effects/bleeding/bleed
execute as @e[distance=..15,type=!#championsashes:special_entities,scores={bleeding_Timer=0}] run tag @s remove blood_loss

execute as @e[distance=..15,type=!#championsashes:special_entities,scores={frostbite_Timer=1..}] at @s run function championsashes:effects/frostbite/frostbite
execute as @e[distance=..15,type=!#championsashes:special_entities,scores={frostbite_Timer=0}] run tag @s remove frostburst
execute as @e[distance=..15,type=!#championsashes:special_entities,scores={onFire=1..}] run scoreboard players set @s frostbite_Timer 0

execute as @e[distance=..20,type=!#championsashes:special_entities,scores={scarlet_rot_Timer=1..}] at @s run function championsashes:effects/scarlet_rot/scarlet_rot
execute as @e[distance=..20,type=!#championsashes:special_entities,scores={scarlet_rot_Timer=0}] run scoreboard players set @s scarlet_rot_delay 0
execute as @e[distance=..20,type=!#championsashes:special_entities,scores={scarlet_rot_Timer=0}] run tag @s[tag=complete_rotten] remove complete_rotten

execute as @e[distance=..35,type=!#championsashes:special_entities,scores={death_blight_Timer=1..}] at @s run function championsashes:effects/death_blight/death_blight

#TODO Animate Effects
function championsashes:animated_effects/animated_effects

#Parry
execute as @e[distance=..10,tag=parry_success] run function championsashes:parry/parry_success