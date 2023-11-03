
execute store result storage math:io 0phanalax_uuid[0] int 1 run scoreboard players get @s 0phanalax_uuid0
execute store result storage math:io 0phanalax_uuid[1] int 1 run scoreboard players get @s 0phanalax_uuid1
execute store result storage math:io 0phanalax_uuid[2] int 1 run scoreboard players get @s 0phanalax_uuid2
execute store result storage math:io 0phanalax_uuid[3] int 1 run scoreboard players get @s 0phanalax_uuid3
data modify entity 942429eb-9233-4105-a36e-8fec8f4ce862 Thrower set from storage math:io 0phanalax_uuid

execute store result storage math:io 1phanalax_uuid[0] int 1 run scoreboard players get @s 1phanalax_uuid0
execute store result storage math:io 1phanalax_uuid[1] int 1 run scoreboard players get @s 1phanalax_uuid1
execute store result storage math:io 1phanalax_uuid[2] int 1 run scoreboard players get @s 1phanalax_uuid2
execute store result storage math:io 1phanalax_uuid[3] int 1 run scoreboard players get @s 1phanalax_uuid3
data modify entity 5100af9e-e223-424b-bfd7-6ce806d33213 Thrower set from storage math:io 1phanalax_uuid

execute store result storage math:io 2phanalax_uuid[0] int 1 run scoreboard players get @s 2phanalax_uuid0
execute store result storage math:io 2phanalax_uuid[1] int 1 run scoreboard players get @s 2phanalax_uuid1
execute store result storage math:io 2phanalax_uuid[2] int 1 run scoreboard players get @s 2phanalax_uuid2
execute store result storage math:io 2phanalax_uuid[3] int 1 run scoreboard players get @s 2phanalax_uuid3
data modify entity 9bf0d198-816f-4084-8c37-27d0f958bba1 Thrower set from storage math:io 2phanalax_uuid

execute as 942429eb-9233-4105-a36e-8fec8f4ce862 on origin at @s if entity @e[team=!friendly,distance=..2] run function ldmc:projectiles/phanalax/kill
execute as 5100af9e-e223-424b-bfd7-6ce806d33213 on origin at @s if entity @e[team=!friendly,distance=..2] run function ldmc:projectiles/phanalax/kill
execute as 9bf0d198-816f-4084-8c37-27d0f958bba1 on origin at @s if entity @e[team=!friendly,distance=..2] run function ldmc:projectiles/phanalax/kill

execute as 942429eb-9233-4105-a36e-8fec8f4ce862 on origin run scoreboard players set @s kill.temp0 0
execute as 5100af9e-e223-424b-bfd7-6ce806d33213 on origin run scoreboard players set @s kill.temp1 0
execute as 9bf0d198-816f-4084-8c37-27d0f958bba1 on origin run scoreboard players set @s kill.temp2 0

execute at @s if entity @e[team=!friendly,distance=..10] as 942429eb-9233-4105-a36e-8fec8f4ce862 on origin at @s facing entity @a[limit=1,sort=nearest,tag=with_phanalax] eyes positioned ^-1 ^ ^ rotated as @s positioned ^ ^ ^ facing entity @e[type=!area_effect_cloud,team=!friendly,type=!armor_stand,limit=1,sort=nearest] feet positioned as @s run tp @s ^ ^ ^1 ~-90 ~-90
execute at @s unless entity @e[team=!friendly,distance=..10] as 942429eb-9233-4105-a36e-8fec8f4ce862 on origin at @s rotated as @a[limit=1,sort=nearest,tag=with_phanalax] positioned ^ ^ ^ run tp @s ~ ~ ~ ~-90 ~-90
execute at @s unless entity @e[team=!friendly,distance=..10] as 942429eb-9233-4105-a36e-8fec8f4ce862 on origin run tp @s ^-1 ^1.5 ^

execute at @s if entity @e[team=!friendly,distance=..10] as 5100af9e-e223-424b-bfd7-6ce806d33213 on origin at @s facing entity @a[limit=1,sort=nearest,tag=with_phanalax] eyes positioned ^-1 ^ ^ rotated as @s positioned ^ ^ ^ facing entity @e[type=!area_effect_cloud,team=!friendly,type=!armor_stand,limit=1,sort=nearest] feet positioned as @s run tp @s ^ ^ ^1 ~-90 ~-90
execute at @s unless entity @e[team=!friendly,distance=..10] as 5100af9e-e223-424b-bfd7-6ce806d33213 on origin at @s rotated as @a[limit=1,sort=nearest,tag=with_phanalax] positioned ^ ^ ^ run tp @s ~ ~ ~ ~-90 ~-90
execute at @s unless entity @e[team=!friendly,distance=..10] as 5100af9e-e223-424b-bfd7-6ce806d33213 on origin run tp @s ^ ^2.5 ^

execute at @s if entity @e[team=!friendly,distance=..10] as 9bf0d198-816f-4084-8c37-27d0f958bba1 on origin at @s facing entity @a[limit=1,sort=nearest,tag=with_phanalax] eyes positioned ^-1 ^ ^ rotated as @s positioned ^ ^ ^ facing entity @e[type=!area_effect_cloud,team=!friendly,type=!armor_stand,limit=1,sort=nearest] feet positioned as @s run tp @s ^ ^ ^1 ~-90 ~-90
execute at @s unless entity @e[team=!friendly,distance=..10] as 9bf0d198-816f-4084-8c37-27d0f958bba1 on origin at @s rotated as @a[limit=1,sort=nearest,tag=with_phanalax] positioned ^ ^ ^ run tp @s ~ ~ ~ ~-90 ~-90
execute at @s unless entity @e[team=!friendly,distance=..10] as 9bf0d198-816f-4084-8c37-27d0f958bba1 on origin run tp @s ^1 ^1.5 ^

execute as 942429eb-9233-4105-a36e-8fec8f4ce862 on origin run tag @s[tag=!phanalax_related] add phanalax_related
execute as 942429eb-9233-4105-a36e-8fec8f4ce862 on origin store success score @s 0phanalax_related run data get entity @s UUID
execute as 5100af9e-e223-424b-bfd7-6ce806d33213 on origin run tag @s[tag=!phanalax_related] add phanalax_related
execute as 5100af9e-e223-424b-bfd7-6ce806d33213 on origin store success score @s 1phanalax_related run data get entity @s UUID
execute as 9bf0d198-816f-4084-8c37-27d0f958bba1 on origin run tag @s[tag=!phanalax_related] add phanalax_related
execute as 9bf0d198-816f-4084-8c37-27d0f958bba1 on origin store success score @s 2phanalax_related run data get entity @s UUID
execute as @e[tag=phanalax0] unless score @s 0phanalax_related matches -2147483648..2147483647 run tag @s remove phanalax_related
execute as @e[tag=phanalax1] unless score @s 1phanalax_related matches -2147483648..2147483647 run tag @s remove phanalax_related
execute as @e[tag=phanalax2] unless score @s 2phanalax_related matches -2147483648..2147483647 run tag @s remove phanalax_related

execute as @e[tag=phanalax0] run scoreboard players reset @s 0phanalax_related
execute as @e[tag=phanalax1] run scoreboard players reset @s 1phanalax_related
execute as @e[tag=phanalax2] run scoreboard players reset @s 2phanalax_related
kill @e[tag=phanalax0,tag=!phanalax_related]
kill @e[tag=phanalax1,tag=!phanalax_related]
kill @e[tag=phanalax2,tag=!phanalax_related]

execute unless entity @e[tag=phanalax0,scores={kill.temp0=-2147483648..2147483647}] unless entity @e[tag=phanalax1,scores={kill.temp1=-2147483648..2147483647}] unless entity @e[tag=phanalax2,scores={kill.temp2=-2147483648..2147483647}] run tag @a[limit=1,sort=nearest,tag=with_phanalax] remove with_phanalax