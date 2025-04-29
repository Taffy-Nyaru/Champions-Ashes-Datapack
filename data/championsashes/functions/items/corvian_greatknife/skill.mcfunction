tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType

execute rotated ~ 0 run function animated_java:blind_spot/summon
execute as @e[tag=aj.blind_spot.root,limit=1,sort=nearest] run function animated_java:blind_spot/animations/blind_spot/play
tag @s add riding_display
tag @s add blind_spot_user
execute as @s[gamemode=survival] run function championsashes:items/item_durability
