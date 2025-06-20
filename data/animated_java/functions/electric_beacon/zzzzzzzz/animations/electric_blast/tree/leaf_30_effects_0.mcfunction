execute at @e[tag=aj.electric_beacon.root,limit=1,sort=nearest] as @e[distance=..4.5,type=!#championsashes:special_entities,type=!player] run damage @s 20 minecraft:out_of_world by @a[limit=1,sort=nearest]

execute at @e[tag=aj.electric_beacon.root,limit=1,sort=nearest] as @e[distance=..4.5,type=!#championsashes:special_entities,type=!player] run scoreboard players add @s death_blight_Timer 75

execute at @a[scores={ca.item.id_selecter_mainhand=1059},limit=1,sort=nearest] as @e[tag=aj.electric_beacon.root,limit=1,sort=nearest] run ride @s mount @e[type=!#championsashes:special_entities,type=!player,limit=1,sort=nearest]
