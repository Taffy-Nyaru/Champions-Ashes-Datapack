tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType

execute rotated ~ 0 run function animated_java:sword_dance/summon
execute as @e[tag=aj.sword_dance.root,limit=1,sort=nearest] run function animated_java:sword_dance/animations/sword_dance/play
tag @s add riding_display
tag @s add sword_dance_user
execute as @s[gamemode=survival] run function championsashes:items/item_durability
