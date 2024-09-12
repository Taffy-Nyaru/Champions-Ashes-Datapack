tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType

function animated_java:murky_hand_scythe/summon
execute as @e[tag=aj.murky_hand_scythe.root,limit=1,sort=nearest] run function animated_java:murky_hand_scythe/animations/murky_r1/play
execute as @s[gamemode=survival] run function championsashes:items/item_durability
tag @s add riding_display
tag @s add murky_r1_user