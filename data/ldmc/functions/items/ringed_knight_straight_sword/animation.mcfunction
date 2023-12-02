execute as @e[type=!#ldmc:special_entities,distance=..6,tag=!rkss_skill,tag=raycast.target] run tag @s add rkss_hurted
execute as @e[type=!#ldmc:special_entities,distance=..6,tag=!rkss_skill,tag=raycast.target] run damage @s 5 minecraft:player_attack by @a[limit=1,sort=nearest]
execute as @e[type=!#ldmc:special_entities,distance=..6,tag=!rkss_skill,tag=raycast.target] run data modify entity @s Fire set value 1200s
execute as @e[type=!#ldmc:special_entities,distance=..6,tag=!rkss_skill,tag=raycast.target] run tag @s add stiff
execute as @e[type=!#ldmc:special_entities,distance=..6,tag=!rkss_skill,tag=raycast.target] run scoreboard players set @s custom_stiff_time 10
execute at @a[limit=1,sort=nearest,tag=rkss_skill,distance=..2] run teleport @s ^ ^0.5 ^ ~ ~