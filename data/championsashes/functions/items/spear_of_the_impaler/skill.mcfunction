gamerule mobGriefing false
tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType

execute rotated ~ 0 run function animated_java:messemers_assault/summon
execute as @e[tag=aj.messemers_assault.root,limit=1,sort=nearest] run function animated_java:messemers_assault/animations/messemers_assault/play
tag @s add riding_display
tag @s add messemers_assault_user
execute as @s[gamemode=survival] run function championsashes:items/item_durability