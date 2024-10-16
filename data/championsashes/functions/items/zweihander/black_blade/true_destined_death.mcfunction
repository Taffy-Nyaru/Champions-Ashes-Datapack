tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType

function animated_java:destined_death/summon
execute as @e[tag=aj.destined_death.root,limit=1,sort=nearest] run function animated_java:destined_death/animations/destined_death/play
tag @s add riding_display
tag @s add destined_death_user
execute as @s[gamemode=survival] run function championsashes:items/item_durability