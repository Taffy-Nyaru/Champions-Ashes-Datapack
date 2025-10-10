execute at @e[type=marker,tag=nep_rkss_locator] as @e[type=!#championsashes:special_entities,type=!player,tag=!drakeblood_knight,distance=..1.8] run damage @s 60 minecraft:lava by @e[type=wither_skeleton,tag=nep_elder,limit=1,sort=nearest]
execute at @e[type=marker,tag=nep_rkss_locator] as @e[type=!#championsashes:special_entities,type=!player,tag=!drakeblood_knight,distance=..1.8] run say 1
execute at @e[type=marker,tag=nep_rkss_locator] at @e[type=!#championsashes:special_entities,type=!player,tag=!drakeblood_knight,distance=..1.8] run setblock ~ ~ ~ lava[level=8] replace

execute at @e[type=marker,tag=nep_rkss_locator] as @a[gamemode=!creative,gamemode=!spectator,tag=!drakeblood_knight,distance=..1.8] run damage @s 20 minecraft:lava by @e[type=wither_skeleton,tag=nep_elder,limit=1,sort=nearest]
execute at @e[type=marker,tag=nep_rkss_locator] at @a[gamemode=!creative,gamemode=!spectator,tag=!drakeblood_knight,distance=..1.8] run setblock ~ ~ ~ lava[level=8] replace