tag @s add raycast.execute
scoreboard players operation ca.temp.raycast ca.raycast_value = #raycast.max ca.raycast_value
execute if score ca.temp.raycast ca.raycast_value matches 1.. anchored eyes positioned ^ ^ ^ run function championsashes:raycast/trace/0
execute if score ca.temp.raycast ca.raycast_value matches 0.. as @e[distance=..20,type=!#championsashes:special_entities,limit=1,sort=nearest] run tag @e[distance=..20,type=!#championsashes:special_entities,tag=raycast.target] remove raycast.target
tag @s remove raycast.execute