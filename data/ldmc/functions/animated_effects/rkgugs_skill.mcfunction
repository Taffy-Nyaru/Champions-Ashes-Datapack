execute if entity @e[distance=..2,type=!#ldmc:special_entities,type=!player] run damage @s 10 player_attack by @a[limit=1,sort=nearest]
execute if entity @s[tag=ember] run particle flame ~ ~ ~ 0.1 0.2 0.05 0.01 2