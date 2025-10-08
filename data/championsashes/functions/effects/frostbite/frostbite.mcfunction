execute positioned ^ ^ ^ run particle entity_effect ~ ~0.5 ~ 0.26 0.98 1 0.5 0
execute store result storage generic:main frozen int 1 run scoreboard players get @s frostbite_Timer
execute on attacker store result score @s Damage run data get entity @s SelectedItem.tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_damage"}]

#Displays
execute as @s[scores={frostbite_Timer=4200..}] at @s run function championsashes:effects/frostbite/frostbite_time_up

#Continuous damages
execute as @s[tag=frostburst] at @s run function championsashes:effects/frostbite/debuff

#Dealt percentage damage
execute as @s[tag=blow_up,type=!player] run function championsashes:effects/frostbite/damage
execute as @s[tag=blow_up,type=player] run function championsashes:effects/frostbite/blow_up
execute as @s[tag=frostburst,type=player] run function championsashes:effects/frostbite/player_damage

scoreboard players remove @s frostbite_Timer 1