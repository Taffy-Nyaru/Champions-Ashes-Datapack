item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air

tag @s add void_slash_user
tag @e[type=!#championsashes:special_entities,tag=!void_slash_user,tag=!charmed,tag=!purple_charm,distance=..10,limit=1,tag=!void_inflict,sort=nearest] add void_inflict

execute as @e[tag=void_inflict] at @s positioned ~ ~1.5 ~ facing ~ ~ ~ run function animated_java:void_slash/summon
execute as @e[tag=aj.void_slash.root] run function animated_java:void_slash/animations/void_slash/play
execute as @e[tag=void_inflict] run ride @s mount @e[tag=aj.void_slash.root,limit=1,sort=nearest]

execute as @s[gamemode=survival] run function championsashes:items/item_durability