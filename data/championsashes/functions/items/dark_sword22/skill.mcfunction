tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType

function animated_java:ringed_nightstar/summon
execute as @e[tag=aj.ringed_nightstar.root,limit=1,sort=nearest] run function animated_java:ringed_nightstar/animations/ringed_nightstar/play
tag @s add riding_display
tag @s add ringed_nightstar_user
execute as @s[gamemode=survival] run function championsashes:items/item_durability
