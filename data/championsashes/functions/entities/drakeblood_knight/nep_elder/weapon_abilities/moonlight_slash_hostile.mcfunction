execute unless entity @e[type=!#championsashes:special_entities,tag=nep_foe,type=!player,distance=..10] facing entity @e[tag=nep_elder,type=wither_skeleton,limit=1,sort=nearest] feet run tp @s ^ ^ ^-0.5 ~ ~

execute if entity @e[type=!#championsashes:special_entities,tag=nep_foe,type=!player,distance=..10] positioned ^-1 ^ ^ rotated as @s positioned ^ ^ ^ facing entity @e[type=!#championsashes:special_entities,tag=nep_foe,type=!player,limit=1,sort=nearest] feet positioned as @s run tp @s ^ ^ ^0.5 ~ ~
execute if entity @a[tag=nep_foe,gamemode=!creative,gamemode=!spectator,distance=..10] positioned ^-1 ^ ^ rotated as @s positioned ^ ^ ^ facing entity @a[tag=nep_foe,gamemode=!creative,gamemode=!spectator,distance=..10] feet positioned as @s run tp @s ^ ^ ^0.75 ~ ~

#Damages
execute as @e[distance=..2,type=!#championsashes:special_entities,tag=nep_foe,limit=1,sort=nearest] run function championsashes:entities/drakeblood_knight/nep_elder/weapon_abilities/moonlight_slash_hostile_damage
execute if entity @e[distance=..2,type=!#championsashes:special_entities,tag=nep_foe,limit=1,sort=nearest] run kill @s

#When enter block
execute unless block ~ ~0.7 ~ #championsashes:transparent_blocks run function championsashes:entities/drakeblood_knight/nep_elder/weapon_abilities/moonlight_slash_hostile_damage
execute unless block ~ ~0.7 ~ #championsashes:transparent_blocks run kill @s

particle electric_spark ~ ~ ~ 0.5 0.2 0.5 0 10
execute at @e[tag=nep_elder,type=wither_skeleton,limit=1,sort=nearest] run kill @e[type=item_display,tag=nep_moonlight_slash,distance=20..]