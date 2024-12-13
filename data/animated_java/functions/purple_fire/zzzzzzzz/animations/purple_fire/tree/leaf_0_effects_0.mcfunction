execute as @e[type=!#championsashes:special_entities,tag=purple_burned,tag=!charm,tag=!purple_charm] run damage @s 22 minecraft:magic by @a[limit=1,sort=nearest,tag=purple_fire_user]

execute as @e[tag=aj.purple_fire.bone] run data modify entity @s brightness set value {block:15,sky:15}
