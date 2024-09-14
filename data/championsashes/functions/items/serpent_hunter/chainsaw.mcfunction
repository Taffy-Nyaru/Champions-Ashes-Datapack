gamerule mobGriefing false
item replace entity @s weapon.mainhand with air
item replace entity @s weapon.offhand with air
tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType

function animated_java:chainsaw/summon
execute as @e[tag=aj.chainsaw.root,limit=1,sort=nearest] run function animated_java:chainsaw/animations/chainsaw/play
tag @s add riding_display
tag @s add chainsaw_user