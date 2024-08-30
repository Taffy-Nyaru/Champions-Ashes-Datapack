tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType

function animated_java:champions_charge/summon
execute as @e[tag=aj.champions_charge.root,limit=1,sort=nearest] run function animated_java:champions_charge/animations/champions_charge/play
execute as @s[gamemode=survival] run function championsashes:items/item_durability
tag @s add riding_display
tag @s add champions_charge_user