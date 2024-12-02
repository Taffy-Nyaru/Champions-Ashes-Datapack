execute if score @s space matches 1.. run scoreboard players add #spacebar_query championsashes_Timer 1
execute if score #spacebar_query championsashes_Timer matches 20.. run scoreboard players set @s space 0
execute if score #spacebar_query championsashes_Timer matches 20.. run scoreboard players set #spacebar_query championsashes_Timer 0
scoreboard players set @s[tag=!remove_spacebar] space 0
tag @s[tag=!remove_spacebar] add remove_spacebar