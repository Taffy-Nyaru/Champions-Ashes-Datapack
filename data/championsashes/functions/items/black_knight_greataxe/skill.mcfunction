gamerule mobGriefing false
tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType
execute facing ^ ^ ^-1 run function animated_java:flame_of_lorian/summon
execute as @e[tag=aj.flame_of_lorian.root,limit=1,sort=nearest] run function animated_java:flame_of_lorian/animations/stamp_upward_cut/play
execute as @s[gamemode=survival] run function championsashes:items/item_durability
tag @s add riding_display
tag @s add stamp_upward_cut_user