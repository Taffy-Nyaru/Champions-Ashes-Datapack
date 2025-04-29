gamerule mobGriefing false
tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType

execute positioned ^ ^ ^ rotated ~ 0 run function animated_java:rkgugs_skill/summon
execute as @e[type=item_display,tag=aj.rkgugs_skill.root,limit=1,sort=nearest,distance=..15] run function animated_java:rkgugs_skill/animations/rkgugs_skill/play
tag @s add riding_display
tag @s add rkgugs_skill_user
execute as @s[gamemode=survival] run function championsashes:items/item_durability