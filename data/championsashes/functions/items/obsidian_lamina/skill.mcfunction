tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType
execute rotated ~ 0 run function animated_java:dynastic_sickleplay/summon
execute as @e[tag=aj.dynastic_sickleplay.root,limit=1,sort=nearest] run function animated_java:dynastic_sickleplay/animations/dynastic_sickleplay/play
tag @s add riding_display
tag @s add dynastic_sickleplay_user
execute as @s[gamemode=survival] run function championsashes:items/item_durability