data modify entity @s Fire set value 200s
tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType

execute facing ^ ^ ^ run function animated_java:rkss_cancel/summon
execute as @e[tag=aj.rkgugs_skill.root,limit=1,sort=nearest] run function animated_java:rkss_cancel/animations/rkss_cancel/play
execute as @s[gamemode=survival] run function championsashes:items/item_durability
tag @s add riding_display
tag @s add rkss_cancel_user