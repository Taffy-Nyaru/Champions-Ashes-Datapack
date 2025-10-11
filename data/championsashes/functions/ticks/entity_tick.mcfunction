#type=!#championsashes:special_entities
#Entity Stiff
execute as @e[distance=..30,tag=stiff,type=!#championsashes:special_entities] run function championsashes:items/stiff

#Save the items and xp orbs in special lightning bolts
execute at @e[distance=..10,type=lightning_bolt,tag=Thunder] as @e[type=item,distance=..5] run data modify entity @s Invulnerable set value 1b
execute at @e[distance=..10,type=lightning_bolt,tag=Thunder] as @e[type=experience_orb,distance=..5] run data modify entity @s Invulnerable set value 1b

#Entity effects
execute at @e[distance=..15,type=wither_skeleton,tag=drakeblood_knight] as @e[distance=..2.5,type=!#championsashes:special_entities,tag=!drakeblood_knight,predicate=championsashes:hurttime] on attacker run function championsashes:entities/using_items/using_item

#Drakeblood Knight
execute as @e[distance=..50,type=wither_skeleton,tag=drakeblood_knight] at @s run function championsashes:entities/drakeblood_knight/powers
execute as @e[distance=..50,type=wither_skeleton,tag=nep_elder] at @s run function championsashes:entities/drakeblood_knight/nep_elder/powers
execute as @e[distance=..10,type=item_display,tag=drakeblood_phanalax0] at @s unless entity @e[tag=drakeblood_knight,type=wither_skeleton,distance=..5] run kill @s
execute as @e[distance=..10,type=item_display,tag=drakeblood_phanalax1] at @s unless entity @e[tag=drakeblood_knight,type=wither_skeleton,distance=..5] run kill @s
execute as @e[distance=..10,type=item_display,tag=drakeblood_phanalax2] at @s unless entity @e[tag=drakeblood_knight,type=wither_skeleton,distance=..5] run kill @s
execute as @e[distance=..10,type=item_display,tag=aj.nep_void_missle.root] at @s unless entity @e[tag=drakeblood_knight,type=wither_skeleton,distance=..5] run function animated_java:nep_void_missle/remove/all

#Effects
execute as @e[distance=..15,type=!#championsashes:special_entities,tag=!nep_elder,scores={bleeding_Timer=1..}] at @s run function championsashes:effects/bleeding/bleed
execute as @e[distance=..15,type=!#championsashes:special_entities,tag=!nep_elder,scores={bleeding_Timer=0}] run tag @s remove blood_loss

execute as @e[distance=..15,type=!#championsashes:special_entities,tag=!nep_elder,scores={frostbite_Timer=1..}] at @s run function championsashes:effects/frostbite/frostbite
execute as @e[distance=..15,type=!#championsashes:special_entities,tag=!nep_elder,scores={frostbite_Timer=0}] run tag @s remove frostburst
execute as @e[distance=..15,type=!#championsashes:special_entities,tag=!nep_elder,scores={onFire=1..,frostbite_Timer=1..}] run scoreboard players set @s frostbite_Timer 0

execute as @e[distance=..20,type=!#championsashes:special_entities,tag=!nep_elder,scores={scarlet_rot_Timer=1..}] at @s run function championsashes:effects/scarlet_rot/scarlet_rot
execute as @e[distance=..20,type=!#championsashes:special_entities,tag=!nep_elder,scores={scarlet_rot_Timer=0}] run scoreboard players set @s scarlet_rot_delay 0
execute as @e[distance=..20,type=!#championsashes:special_entities,tag=!nep_elder,scores={scarlet_rot_Timer=0}] run tag @s[tag=complete_rotten] remove complete_rotten

execute as @e[distance=..35,type=!#championsashes:special_entities,tag=!nep_elder,scores={death_blight_Timer=1..}] at @s run function championsashes:effects/death_blight/death_blight

#Charmed Entity
execute as @e[distance=..25,type=!#championsashes:special_entities,tag=charmed] at @s run function championsashes:items/bewitching_branch/charm

#Parry
execute as @e[distance=..10,type=!#championsashes:special_entities,tag=parry_success] run function championsashes:parry/parry_success