execute at @e[tag=aj.destined_death.locator] run particle dust_color_transition 0.7 0 0 1 0 0 0 ~ ~ ~ 0.25 0.25 0.25 100 1

execute as @e[distance=..2,type=!#championsashes:special_entities,tag=!destined_death_user] run damage @s 3 championsashes:gtx690 by @a[limit=1,sort=nearest]
execute as @e[distance=..2,type=!#championsashes:special_entities,tag=!destined_death_user] run scoreboard players add @s scarlet_rot_Timer 5
execute as @e[distance=..2,type=!#championsashes:special_entities,tag=!destined_death_user] run scoreboard players set @s[tag=!stiff] custom_ca.entity.stiff_time 10
execute as @e[distance=..2,type=!#championsashes:special_entities,tag=!destined_death_user] run tag @s[tag=!stiff] add stiff