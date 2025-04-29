#Functions
execute as @e[distance=..25,type=!#championsashes:special_entities,tag=!used_vortex] at @s facing entity @e[distance=..25,type=item_display,tag=shadow_vortex,limit=1,sort=nearest] feet positioned ^ ^ ^ run tp @s ^-0.1 ^-0.01 ^0.05 ~ ~
execute as @e[distance=..3,type=!#championsashes:special_entities,tag=!used_vortex] run damage @s 1 minecraft:player_attack by @a[limit=1,sort=nearest]
execute as @s[tag=scaling] run function championsashes:projectiles/shadow_vortex/scaling