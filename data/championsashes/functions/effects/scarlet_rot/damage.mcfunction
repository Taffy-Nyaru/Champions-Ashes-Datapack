#Dealt maxhp*3% damage
execute store result score @s maxHealth run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base
execute store result score @s Health run data get entity @s Health 10

execute store result storage generic:main rotten_maxHealth double 0.03 run scoreboard players get @s maxHealth

execute store result score @s scarlet_rot_damage run data get storage generic:main rotten_maxHealth 10

execute store result storage generic:main scarlet_rot_damage double 0.1 run scoreboard players operation @s Health -= @s scarlet_rot_damage

execute unless score @s Health <= @s scarlet_rot_damage run data modify entity @s Health set from storage generic:main scarlet_rot_damage
execute unless score @s Health <= @s scarlet_rot_damage run data modify entity @s HurtTime set value 10s
execute if score @s Health <= @s scarlet_rot_damage run damage @s 114514 championsashes:gtx690 by @a[limit=1,sort=nearest]

#For players, make 6 true damage
execute if entity @s[type=player] run damage @s 6 championsashes:gtx690

tag @s remove rotten