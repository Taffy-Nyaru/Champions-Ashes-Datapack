execute unless entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s add needclicker
execute unless entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s add needclicker
tag @s[tag=ca.refreshed_clicker] remove ca.refreshed_clicker

execute if entity @s[tag=!electric_wand_skill,advancements={championsashes:hurt_entities=true}] at @e[distance=..10,limit=1,sort=nearest,type=!#championsashes:special_entities] unless entity @e[type=item_display,tag=aj.electric_beacon.root] run function championsashes:items/electric_wand/r1

execute unless entity @s[tag=electric_beacon_skill_cooling] if entity @e[type=interaction,distance=..10,tag=clicker,scores={ca.interaction_rClick=1..}] run data modify entity 2094fd65-93de-4a69-9ea2-a74c7f35bc75 Thrower set from storage generic:main ca.interaction_rClicker
execute unless entity @s[tag=electric_beacon_skill_cooling] if entity @e[type=interaction,distance=..10,tag=clicker,scores={ca.interaction_rClick=1..}] as 2094fd65-93de-4a69-9ea2-a74c7f35bc75 on origin if entity @s[tag=!stiff] at @e[distance=..50,limit=1,sort=nearest,type=!#championsashes:special_entities,type=!player] unless entity @e[tag=aj.electric_beacon.root,distance=..50] run function championsashes:items/electric_wand/skill

execute if entity @s[tag=electric_wand_skill] run function championsashes:items/electric_wand/electric_beacon
execute if entity @s[tag=electric_beacon_skill_cooling] run function championsashes:items/electric_wand/cooling

execute as @e[type=item_display,tag=aj.electric_beacon.root,limit=1,sort=nearest] unless entity @e[type=!#championsashes:special_entities,distance=..1] run ride @s mount @e[type=!#championsashes:special_entities,type=!player,limit=1,sort=nearest]
execute as @e[type=item_display,tag=aj.electric_beacon.root,limit=1,sort=nearest] unless entity @e[type=!#championsashes:special_entities,distance=..1] run ride @s mount @e[type=!#championsashes:special_entities,type=!player,limit=1,sort=nearest]

#/scoreboard players get @s ca.players.electric_beacon_timer
execute if entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s remove needclicker
execute if entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s remove needclicker