tag @s add anchor_skill1
tag @s add riding_display
tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType

execute at @s positioned ^ ^ ^ run function animated_java:steel_anchor/summon
execute as @e[tag=aj.steel_anchor.root,limit=1,sort=nearest] run function animated_java:steel_anchor/animations/skill1/play