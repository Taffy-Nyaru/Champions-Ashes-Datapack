gamerule mobGriefing false
tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType
function animated_java:rkss_cancel/summon
execute as @e[tag=aj.rkss_cancel.root,limit=1,sort=nearest] run function animated_java:rkss_cancel/animations/rkss_skill/play
execute as @s[gamemode=survival] run function championsashes:items/item_durability
tag @s add riding_display
tag @s add rkss_skill_user