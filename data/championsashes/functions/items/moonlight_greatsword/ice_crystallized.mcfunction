particle minecraft:block ice ~ ~ ~ 1 1.5 1 1 500
scoreboard players set @s custom_stiff_time 200
tag @s add stiff
damage @s 25 championsashes:frostbite by @a[limit=1,sort=nearest,tag=ice_crystal_user]
scoreboard players add @s frostbite_Timer 220