execute as 0001bf52-001d-4b42-0000-001d0000005c run data modify storage generic:main suspects set from entity @s anger.suspects[0].uuid
data modify entity 00000001-0000-0005-0000-000100000004 Thrower set from storage generic:main suspects
execute as 00000001-0000-0005-0000-000100000004 on origin run tag @s add wtarget.temp

execute as 0001bf52-001d-4b42-0000-001d0000005c run function championsashes:entities/warden/warden_anger

execute as @a[tag=crown] at @s if entity @e[team=!friendly,type=!#championsashes:special_entities,type=!warden,distance=..8] run function championsashes:entities/warden/protect
execute as @a[limit=1] at @s unless entity @e[team=!friendly,type=!#championsashes:special_entities,type=!warden,distance=..8] run tag @e[tag=protected] remove protected
execute at 0001bf52-001d-4b42-0000-001d0000005c run particle sculk_soul ~ ~ ~ 2 2 2 0 25

execute as 0001bf52-001d-4b42-0000-001d0000005c at @s unless block ~ ~2 ~ #championsashes:transparent_blocks run function championsashes:entities/search_air

scoreboard players add #wardenaoetimer championsashes_Timer 1
execute if score #wardenaoetimer championsashes_Timer matches 40..50 at 0001bf52-001d-4b42-0000-001d0000005c as @e[type=!warden,type=!player,team=!friendly,type=!#championsashes:special_entities,distance=..3] run damage @s 15 minecraft:sonic_boom by @e[limit=1,tag=WARDEN]
execute if score #wardenaoetimer championsashes_Timer matches 40..50 at 0001bf52-001d-4b42-0000-001d0000005c as @e[type=!warden,type=!player,team=!friendly,type=!#championsashes:special_entities,distance=..3] at @s run particle minecraft:sonic_boom ~ ~ ~ 1 1 1 0 10
execute if score #wardenaoetimer championsashes_Timer matches 40..50 run scoreboard players set #wardenaoetimer championsashes_Timer 0