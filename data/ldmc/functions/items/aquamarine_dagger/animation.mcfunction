execute as @s run data modify entity @s Rotation set from entity @a[limit=1,sort=nearest,distance=..2] Rotation
execute as @e[type=!#ldmc:special_entities,distance=..2,tag=!aquamarine_dagger] run damage @s 1 ldmc:gtx690 by @a[limit=1,sort=nearest,distance=..2]
execute if entity @s[tag=heavy_skill] as @e[type=!#ldmc:special_entities,distance=..2,tag=!aquamarine_dagger] run damage @s 2 ldmc:gtx690 by @a[limit=1,sort=nearest,distance=..2]
execute if entity @s[tag=heavy_skill] as @e[type=!#ldmc:special_entities,distance=..2,tag=!aquamarine_dagger] run scoreboard players add @s frostbite_Timer 50
execute at @a[limit=1,sort=nearest,distance=..2] run teleport @s ^ ^0.5 ^