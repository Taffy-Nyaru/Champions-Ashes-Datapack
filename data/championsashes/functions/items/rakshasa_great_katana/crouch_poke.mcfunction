tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType

function animated_java:rakshasa_great_katana/summon
execute as @e[tag=aj.rakshasa_great_katana.root,limit=1,sort=nearest] run function animated_java:rakshasa_great_katana/animations/crouch_poke/play
execute as @s[gamemode=survival] run function championsashes:items/item_durability
tag @s add riding_display
tag @s add rakshasa_great_katana_user