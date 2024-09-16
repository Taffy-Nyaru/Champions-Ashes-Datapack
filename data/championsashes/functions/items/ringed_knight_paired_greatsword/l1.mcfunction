tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType

execute facing ^ ^-0.001 ^-7 run function animated_java:rkgugs_skill/summon
execute as @e[tag=aj.rkgugs_skill.root,limit=1,sort=nearest] run function animated_java:rkgugs_skill/animations/rkgugs_l1/play
tag @s add riding_display
tag @s add rkgugs_l1_user
execute as @s[gamemode=survival] run function championsashes:items/item_durability