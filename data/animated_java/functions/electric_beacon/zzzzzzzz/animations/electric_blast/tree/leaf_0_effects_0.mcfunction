execute at @a[scores={ca.item.id_selecter_mainhand=1059},limit=1,sort=nearest] as @e[tag=aj.electric_beacon.root,limit=1,sort=nearest] run ride @s mount @e[type=!#championsashes:special_entities,type=!player,limit=1,sort=nearest]

execute at @a[scores={ca.item.id_selecter_offhand=1059},limit=1,sort=nearest] as @e[tag=aj.electric_beacon.root,limit=1,sort=nearest] run ride @s mount @e[type=!#championsashes:special_entities,type=!player,limit=1,sort=nearest]

execute as @e[tag=aj.electric_beacon.bone] run data modify entity @s brightness set value {block:15,sky:15}

execute as @e[tag=aj.electric_beacon.bone] run data modify entity @s billboard set value "center"
