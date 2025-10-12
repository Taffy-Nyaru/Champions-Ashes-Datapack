execute on target if score weapon_inventory math_output matches 100.. run tag @e[tag=nep_elder] add had_target
execute on target if score weapon_inventory math_output matches ..-100 run tag @e[tag=nep_elder] add had_target
#Change weapons by random possibility
execute if entity @s[tag=!nep_fire_phase,tag=!nep_ice_phase] run scoreboard players add weapon_class championsashes_Timer 1
execute if score weapon_class championsashes_Timer matches 100.. run function championsashes:entities/drakeblood_knight/nep_elder/weapon_class
