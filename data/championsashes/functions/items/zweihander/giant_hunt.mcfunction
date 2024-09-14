tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType

function animated_java:giant_hunt/summon
execute as @e[tag=aj.giant_hunt.root,limit=1,sort=nearest] run function animated_java:giant_hunt/animations/giant_hunt/play
tag @s add riding_display
tag @s add giant_hunt_user