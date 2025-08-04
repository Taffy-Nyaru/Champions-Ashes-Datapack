function championsashes:items/offhand_switch

tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType
execute rotated ~ 0 run function animated_java:kamui/summon
execute as @e[tag=aj.kamui.root,limit=1,sort=nearest] run function animated_java:kamui/animations/kamui/play
ride @s mount @e[distance=..10,type=item_display,tag=player_camera,limit=1,sort=nearest]

tag @s add riding_display
tag @s add kamui_user

execute as @s[gamemode=survival] run function championsashes:items/item_durability