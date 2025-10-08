execute positioned ^ ^ ^ run particle entity_effect ~ ~0.5 ~ 0.74 0 0 0.5 0

execute on attacker store result score @s Damage run data get entity @s SelectedItem.tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_damage"}]

#Displays
execute as @s[scores={bleeding_Timer=3200..}] at @s run function championsashes:effects/bleeding/bleeding_time_up

#Dealt percentage damage
execute as @s[tag=blood_burst,type=!player] run function championsashes:effects/bleeding/damage
execute as @s[tag=blood_burst,type=player] run function championsashes:effects/bleeding/player_damage

scoreboard players remove @s bleeding_Timer 1