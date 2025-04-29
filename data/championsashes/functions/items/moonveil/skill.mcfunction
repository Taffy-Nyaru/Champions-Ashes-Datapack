tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType

execute rotated ~ 0 run function animated_java:dimension_slash/summon
execute as @e[tag=aj.dimension_slash.root,limit=1,sort=nearest] run function animated_java:dimension_slash/animations/dimension_slash/play
tag @s add riding_display
tag @s add dimension_slash_user
execute as @s[gamemode=survival] run function championsashes:items/item_durability
