tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType

execute rotated ~ 0 run function animated_java:splitleaf_infinite/summon
execute as @e[tag=aj.splitleaf_infinite.root,limit=1,sort=nearest] run function animated_java:splitleaf_infinite/animations/splitleaf_infinite/play
tag @s add riding_display
tag @s add splitleaf_infinite_user
execute as @s[gamemode=survival] run function championsashes:items/item_durability
