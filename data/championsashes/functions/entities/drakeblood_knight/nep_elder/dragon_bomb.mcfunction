function championsashes:projectiles/dragon_bomb/bomb_rotate
execute unless entity @e[tag=nep_foe,distance=..10] run tp @s ~ ~4 ~

execute if entity @e[tag=nep_foe,distance=..10] facing entity @e[tag=phase2,limit=1,sort=nearest] feet positioned ^-1 ^ ^ rotated as @s positioned ^ ^ ^ facing entity @e[tag=nep_foe,limit=1,sort=nearest] feet positioned as @s run tp @s ^ ^-0.1 ^0.5 ~ ~

execute as @e[tag=nep_foe] at 3240cc2e-85da-4a3d-ae99-ba26a7bda8e4 if entity @s[distance=..2] run function championsashes:entities/drakeblood_knight/nep_elder/dragon_bomb_explosion

execute at 3240cc2e-85da-4a3d-ae99-ba26a7bda8e4 unless block ~ ~ ~ air unless block ~ ~ ~ water unless block ~ ~ ~ lava run function championsashes:entities/drakeblood_knight/nep_elder/dragon_bomb_explosion

execute at @e[type=creeper,tag=dragon_bomb] as 3240cc2e-85da-4a3d-ae99-ba26a7bda8e4 if entity @s[distance=..1] run kill @s[distance=..1]
execute at @e[type=creeper,tag=dragon_bomb] as 3240cc2e-85da-4a3d-ae99-ba26a7bda8e4 if entity @s[distance=..1] run gamerule mobGriefing true