tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType

execute rotated ~ 0 run function animated_java:carian_grandeur/summon
execute as @e[tag=aj.carian_grandeur.root,limit=1,sort=nearest] run function animated_java:carian_grandeur/animations/carian_grandeur/play
tag @s add riding_display
tag @s add carian_grandeur_user
execute as @s[gamemode=survival] run function championsashes:items/item_durability

execute as @e[type=!#championsashes:special_entities,type=!#championsashes:friendlycreature,distance=..7,tag=!carian_grandeur_user,sort=nearest,limit=1] run tag @s[tag=!bullet_generated] add bullet_generated