execute if score parry_random math_output matches 1900.. run tag @s add elder_parrying
execute if score parry_random math_output matches ..-1900 run tag @s add elder_parrying
execute unless entity @e[tag=elder_parrying] run kill @e[tag=attacker_indicator]
execute unless entity @e[tag=elder_parrying] run kill @e[tag=parry_shield]
execute as @e[tag=elder_parrying,tag=!parry_stop] run function championsashes:entities/drakeblood_knight/nep_elder/parry
execute if entity @s[tag=parry_stop] run scoreboard players add parry_stop_timer championsashes_Timer 1
execute if score parry_stop_timer championsashes_Timer matches 512.. run tag @s remove parry_stop
execute if score parry_stop_timer championsashes_Timer matches 512.. run scoreboard players set parry_stop_timer championsashes_Timer 0