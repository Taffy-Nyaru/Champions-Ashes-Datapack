

execute if entity @s[tag=!electric_wand_skill,advancements={championsashes:hurt_entities=true}] at @e[distance=..10,limit=1,sort=nearest,type=!#championsashes:special_entities] unless entity @e[type=item_display,tag=aj.electric_beacon.root] run function championsashes:items/electric_wand/r1

execute if entity @s[tag=electric_wand_skill] run function championsashes:items/electric_wand/electric_beacon
execute if entity @s[tag=electric_beacon_skill_cooling] run function championsashes:items/electric_wand/cooling

execute as @e[type=item_display,tag=aj.electric_beacon.root,limit=1,sort=nearest] unless entity @e[type=!#championsashes:special_entities,distance=..1] run ride @s mount @e[type=!#championsashes:special_entities,type=!player,limit=1,sort=nearest]
execute as @e[type=item_display,tag=aj.electric_beacon.root,limit=1,sort=nearest] unless entity @e[type=!#championsashes:special_entities,distance=..1] run ride @s mount @e[type=!#championsashes:special_entities,type=!player,limit=1,sort=nearest]