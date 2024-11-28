tag @s add purple_fire_user
tag @e[type=!#championsashes:special_entities,tag=!purple_fire_user,tag=!charmed,tag=!purple_charm,distance=..10,limit=5,tag=!purple_burned,sort=nearest] add purple_burned

execute at @e[tag=purple_burned] run summon zombie ~ ~1 ~ {Tags:["charmed","purple_charm"]}

execute as @e[tag=purple_burned] at @s facing ~ ~ ~ run function animated_java:purple_fire/summon
execute as @e[tag=aj.purple_fire.root] run function animated_java:purple_fire/animations/purple_fire/play
execute as @e[tag=purple_burned] run ride @s mount @e[tag=aj.purple_fire.root,limit=1,sort=nearest]

#execute as @e[type=zombie,tag=purple_charm] run damage @s 0 generic by @e[tag=purple_burned,limit=1,sort=nearest]
execute as @s[gamemode=survival] run function championsashes:items/item_durability