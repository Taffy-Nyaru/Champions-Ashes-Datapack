scoreboard players add @s charm_time 1
execute if score @s charm_time matches 1.. run team join friendly @s
execute if score @s charm_time matches 1.. run particle cherry_leaves ~ ~1 ~ 0.4 0.4 0.4 1 2

#execute as @s[tag=charmed,tag=!damaged] run data modify entity @s[tag=!damaged] Attributes[{Name:"minecraft:generic.follow_range"}].Base set value 0.0d
execute as @s[tag=!damaged] run damage @s 0 generic by @e[distance=..8,limit=1,sort=nearest,type=!#ldmc:special_entities,team=!friendly]
execute as @s[tag=!damaged] if entity @e[team=!friendly,limit=1,sort=nearest,type=!#ldmc:special_entities,distance=..8] run tag @s add damaged
execute as @s[tag=damaged] unless entity @e[team=!friendly,limit=1,sort=nearest,type=!#ldmc:special_entities,distance=..9] run tag @s remove damaged

execute if score @s charm_time matches 3600.. run team leave @s[tag=charmed]
execute if score @s charm_time matches 3600.. run tag @s remove charmed
execute if score @s charm_time matches 3600.. run scoreboard players set @s charm_time 0