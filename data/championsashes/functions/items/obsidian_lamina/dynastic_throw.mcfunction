tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType
function animated_java:dynastic_sickleplay/summon
execute as @e[tag=aj.dynastic_sickleplay.root,limit=1,sort=nearest] run function animated_java:dynastic_sickleplay/animations/dynastic_throw/play
execute as @s[gamemode=survival] run function championsashes:items/item_durability
tag @s add riding_display
tag @s add dynastic_throw_user