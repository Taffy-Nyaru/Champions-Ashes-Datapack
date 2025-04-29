tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType

execute rotated ~ 0 run function animated_java:blade_of_peril/summon
execute as @e[tag=aj.blade_of_peril.root,limit=1,sort=nearest] run function animated_java:blade_of_peril/animations/blade_of_peril/play
tag @s add riding_display
tag @s add blade_of_peril_user
execute as @s[gamemode=survival] run function championsashes:items/item_durability
