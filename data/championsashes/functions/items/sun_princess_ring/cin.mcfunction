execute unless entity @e[tag=aj.write.root,distance=..20] positioned ^ ^3 ^ run function animated_java:write/summon
execute as @e[tag=aj.write.root,limit=1,sort=nearest] run function animated_java:write/animations/cin/play

tag @s add gravity_impaling_user
tag @e[type=!#championsashes:special_entities,tag=!gravity_impaling_user,distance=..10,limit=1,tag=!gravity_impaled,sort=nearest] add gravity_impaled

execute unless entity @e[tag=aj.gravity_impaler.root,distance=..20] as @e[tag=gravity_impaled] at @s facing ~ ~ ~ run function animated_java:gravity_impaler/summon
execute as @e[tag=aj.gravity_impaler.root] run function animated_java:gravity_impaler/animations/gravity_impaler/play

execute as @s[gamemode=survival] run function championsashes:items/item_durability