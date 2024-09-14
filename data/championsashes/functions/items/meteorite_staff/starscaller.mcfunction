gamerule mobGriefing false
tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType

execute facing ^ ^ ^-1 run function animated_java:starscaller/summon
execute as @e[tag=aj.starscaller.root,limit=1,sort=nearest] run function animated_java:starscaller/animations/starscaller/play
execute as @s[gamemode=survival] run function championsashes:items/item_durability
tag @s add riding_display
tag @s add starscaller_user
tag @s remove remove_spacebar