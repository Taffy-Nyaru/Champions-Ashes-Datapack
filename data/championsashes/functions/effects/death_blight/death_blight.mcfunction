execute positioned ^ ^ ^ run particle entity_effect ~ ~0.5 ~ 0 0 0 0.5 0

execute if score @s death_blight_Timer matches 7200.. run tag @s add death_blighted
execute as @s[tag=death_blighted] run function championsashes:effects/death_blight/death_blighted
execute if score @s death_blight_Timer matches 7200.. run scoreboard players set @s death_blight_Timer 0

scoreboard players remove @s death_blight_Timer 1