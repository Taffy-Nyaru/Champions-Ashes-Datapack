item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air

tag @s add space_based_missle_user
tag @e[distance=..10,limit=1,sort=nearest,type=!#championsashes:special_entities,tag=!space_based_missle_user,tag=!charmed,tag=!purple_charm,tag=!lockontarget] add lockontarget

execute as @e[tag=lockontarget] at @s positioned ~ ~1.5 ~ facing ~ ~ ~ run function animated_java:space_based_missle/summon
execute as @e[tag=aj.space_based_missle.root] run function animated_java:space_based_missle/animations/lockon_target/play
execute as @e[tag=lockontarget] run ride @e[tag=aj.space_based_missle.root,limit=1,sort=nearest] mount @s

execute as @s[gamemode=survival] run function championsashes:items/item_durability