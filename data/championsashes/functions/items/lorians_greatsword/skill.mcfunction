tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType
function animated_java:flame_of_lorian/summon
execute as @e[tag=aj.flame_of_lorian.root,limit=1,sort=nearest] run function animated_java:flame_of_lorian/animations/flame_of_lorian/play
execute as @s[gamemode=survival] run function championsashes:items/item_durability
tag @s add riding_display
tag @s add flame_of_lorian_user