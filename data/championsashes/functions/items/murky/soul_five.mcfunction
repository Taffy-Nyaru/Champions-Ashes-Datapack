loot replace entity @s weapon.mainhand loot championsashes:items/murky_hand_scythe
item modify entity @s weapon.mainhand championsashes:soul_five
item replace entity @s weapon.offhand with air
tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType

function animated_java:murky_hand_scythe/summon
execute as @e[tag=aj.murky_hand_scythe.root,limit=1,sort=nearest] run function animated_java:murky_hand_scythe/animations/soul_five/play
tag @s add riding_display
tag @s add soul_five