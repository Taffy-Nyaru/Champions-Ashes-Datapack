tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType

function animated_java:steel_caller/summon
execute as @e[tag=aj.steel_caller.root,limit=1,sort=nearest] run function animated_java:steel_caller/animations/steel_caller/play
execute as @s[gamemode=survival] run function championsashes:items/item_durability
tag @s add riding_display
tag @s add steel_caller_user