gamerule mobGriefing false
tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType
execute facing ^ ^ ^-1 run function animated_java:wave_of_destruction/summon
execute as @e[tag=aj.wave_of_destruction.root,limit=1,sort=nearest] run function animated_java:wave_of_destruction/animations/wave_of_destruction/play
tag @s add riding_display
tag @s add wave_of_destruction_user
execute as @s[gamemode=survival] run function championsashes:items/item_durability
