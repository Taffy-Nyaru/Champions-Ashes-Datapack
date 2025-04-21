
execute store result storage math:io 0drakeblood_phanalax_uuid[0] int 1 run scoreboard players get @s 0drakeblood_phanalax_uuid0
execute store result storage math:io 0drakeblood_phanalax_uuid[1] int 1 run scoreboard players get @s 0drakeblood_phanalax_uuid1
execute store result storage math:io 0drakeblood_phanalax_uuid[2] int 1 run scoreboard players get @s 0drakeblood_phanalax_uuid2
execute store result storage math:io 0drakeblood_phanalax_uuid[3] int 1 run scoreboard players get @s 0drakeblood_phanalax_uuid3
data modify entity 942429eb-9233-4105-a36e-8fec8f4ce862 Thrower set from storage math:io 0drakeblood_phanalax_uuid

execute store result storage math:io 1drakeblood_phanalax_uuid[0] int 1 run scoreboard players get @s 1drakeblood_phanalax_uuid0
execute store result storage math:io 1drakeblood_phanalax_uuid[1] int 1 run scoreboard players get @s 1drakeblood_phanalax_uuid1
execute store result storage math:io 1drakeblood_phanalax_uuid[2] int 1 run scoreboard players get @s 1drakeblood_phanalax_uuid2
execute store result storage math:io 1drakeblood_phanalax_uuid[3] int 1 run scoreboard players get @s 1drakeblood_phanalax_uuid3
data modify entity 5100af9e-e223-424b-bfd7-6ce806d33213 Thrower set from storage math:io 1drakeblood_phanalax_uuid

execute store result storage math:io 2drakeblood_phanalax_uuid[0] int 1 run scoreboard players get @s 2drakeblood_phanalax_uuid0
execute store result storage math:io 2drakeblood_phanalax_uuid[1] int 1 run scoreboard players get @s 2drakeblood_phanalax_uuid1
execute store result storage math:io 2drakeblood_phanalax_uuid[2] int 1 run scoreboard players get @s 2drakeblood_phanalax_uuid2
execute store result storage math:io 2drakeblood_phanalax_uuid[3] int 1 run scoreboard players get @s 2drakeblood_phanalax_uuid3
data modify entity 9bf0d198-816f-4084-8c37-27d0f958bba1 Thrower set from storage math:io 2drakeblood_phanalax_uuid

execute on target if entity @s[type=!player] run tag @s add nep_foe
execute on target if entity @s[type=player,gamemode=!creative,gamemode=!spectator] run tag @s add nep_foe

execute as 942429eb-9233-4105-a36e-8fec8f4ce862 on origin at @s if entity @e[tag=nep_foe,type=!#championsashes:special_entities,distance=..4] run function championsashes:entities/drakeblood_knight/phanalax_kill
execute as 5100af9e-e223-424b-bfd7-6ce806d33213 on origin at @s if entity @e[tag=nep_foe,type=!#championsashes:special_entities,distance=..4] run function championsashes:entities/drakeblood_knight/phanalax_kill
execute as 9bf0d198-816f-4084-8c37-27d0f958bba1 on origin at @s if entity @e[tag=nep_foe,type=!#championsashes:special_entities,distance=..4] run function championsashes:entities/drakeblood_knight/phanalax_kill

execute at @s if entity @e[tag=nep_foe,type=!#championsashes:special_entities,distance=..5] as 942429eb-9233-4105-a36e-8fec8f4ce862 on origin at @s facing entity @e[limit=1,sort=nearest,tag=entity_with_drakeblood_phanalax] eyes positioned ^-1 ^ ^ rotated as @s positioned ^ ^ ^ facing entity @e[tag=nep_foe,type=!#championsashes:special_entities,limit=1,sort=nearest] eyes positioned as @s run tp @s ^ ^ ^0.5 ~-90 ~-90
execute at @s unless entity @e[tag=nep_foe,type=!#championsashes:special_entities,distance=..5] as 942429eb-9233-4105-a36e-8fec8f4ce862 on origin at @s rotated as @e[limit=1,sort=nearest,tag=entity_with_drakeblood_phanalax] positioned ^ ^ ^ run tp @s ~ ~ ~ ~-90 ~-90
execute at @s unless entity @e[tag=nep_foe,type=!#championsashes:special_entities,distance=..5] as 942429eb-9233-4105-a36e-8fec8f4ce862 on origin run tp @s ^-1 ^1.5 ^

execute at @s if entity @e[tag=nep_foe,type=!#championsashes:special_entities,distance=..5] as 5100af9e-e223-424b-bfd7-6ce806d33213 on origin at @s facing entity @e[limit=1,sort=nearest,tag=entity_with_drakeblood_phanalax] eyes positioned ^-1 ^ ^ rotated as @s positioned ^ ^ ^ facing entity @e[tag=nep_foe,type=!#championsashes:special_entities,limit=1,sort=nearest] eyes positioned as @s run tp @s ^ ^ ^0.5 ~-90 ~-90
execute at @s unless entity @e[tag=nep_foe,type=!#championsashes:special_entities,distance=..5] as 5100af9e-e223-424b-bfd7-6ce806d33213 on origin at @s rotated as @e[limit=1,sort=nearest,tag=entity_with_drakeblood_phanalax] positioned ^ ^ ^ run tp @s ~ ~ ~ ~-90 ~-90
execute at @s unless entity @e[tag=nep_foe,type=!#championsashes:special_entities,distance=..5] as 5100af9e-e223-424b-bfd7-6ce806d33213 on origin run tp @s ^ ^2.5 ^

execute at @s if entity @e[tag=nep_foe,type=!#championsashes:special_entities,distance=..5] as 9bf0d198-816f-4084-8c37-27d0f958bba1 on origin at @s facing entity @e[limit=1,sort=nearest,tag=entity_with_drakeblood_phanalax] eyes positioned ^-1 ^ ^ rotated as @s positioned ^ ^ ^ facing entity @e[tag=nep_foe,type=!#championsashes:special_entities,limit=1,sort=nearest] eyes positioned as @s run tp @s ^ ^ ^0.5 ~-90 ~-90
execute at @s unless entity @e[tag=nep_foe,type=!#championsashes:special_entities,distance=..5] as 9bf0d198-816f-4084-8c37-27d0f958bba1 on origin at @s rotated as @e[limit=1,sort=nearest,tag=entity_with_drakeblood_phanalax] positioned ^ ^ ^ run tp @s ~ ~ ~ ~-90 ~-90
execute at @s unless entity @e[tag=nep_foe,type=!#championsashes:special_entities,distance=..5] as 9bf0d198-816f-4084-8c37-27d0f958bba1 on origin run tp @s ^1 ^1.5 ^