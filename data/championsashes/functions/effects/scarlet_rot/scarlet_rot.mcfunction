execute positioned ^ ^ ^ run particle entity_effect ~ ~0.5 ~ 0.68 0.25 0 0.5 0

effect give @s weakness 2 0 true
scoreboard players add @s scarlet_rot_delay 1
execute if score @s scarlet_rot_delay matches 60.. run tag @s add rotten
execute as @s[tag=rotten,type=!player] run function championsashes:effects/scarlet_rot/damage
execute as @s[tag=rotten,type=player] run damage @s 6 championsashes:gtx690
execute if score @s scarlet_rot_delay matches 60.. run scoreboard players set @s scarlet_rot_delay 0

#execute if score @s scarlet_rot_Timer matches 3600.. run tag @s add complete_rotten

scoreboard players remove @s scarlet_rot_Timer 1