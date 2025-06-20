execute at @e[tag=aj.electric_beacon.root,limit=1,sort=nearest] as @e[distance=..3,type=!#championsashes:special_entities,type=!player] run damage @s 20 minecraft:out_of_world by @a[limit=1,sort=nearest]

execute at @e[tag=aj.electric_beacon.root,limit=1,sort=nearest] as @e[distance=..3,type=!#championsashes:special_entities,type=!player] run scoreboard players add @s death_blight_Timer 75
