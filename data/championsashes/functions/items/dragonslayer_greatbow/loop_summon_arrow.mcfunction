execute summon arrow run function championsashes:items/dragonslayer_greatbow/disperation
execute if score @s arrow_rain.temp matches 1.. run scoreboard players remove @s arrow_rain.temp 1
execute if score @s arrow_rain.temp matches 1.. run function championsashes:items/dragonslayer_greatbow/loop_summon_arrow