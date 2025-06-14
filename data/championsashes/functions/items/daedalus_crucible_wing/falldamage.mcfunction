execute if score @s ca.item.id_selecter_mainhand matches 20002 if score @s usedmedal matches 1.. run function championsashes:items/daedalus_crucible_wing/click
execute unless score @s[gamemode=survival] ca.item.id_selecter_helmet matches 20002 if entity @s[tag=using_daedalus_wing] run function championsashes:items/daedalus_crucible_wing/remove_effects
execute if score @s[tag=disableFallDamage_start] falldistance matches 4.. run tag @s add disableFallDamage

scoreboard players add #falldamage_timer championsashes_Timer 1
execute if score #falldamage_timer championsashes_Timer matches 60.. if score @s[tag=disableFallDamage_start] falldistance matches 0 run tag @s remove disableFallDamage_start
execute if score #falldamage_timer championsashes_Timer matches 60.. run scoreboard players set #falldamage_timer championsashes_Timer 0