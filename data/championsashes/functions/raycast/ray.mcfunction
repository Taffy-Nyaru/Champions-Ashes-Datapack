tag @s add raycast.execute
scoreboard players operation temp.0 raycastvalue = #raycast.max raycastvalue
execute if score temp.0 raycastvalue matches 1.. anchored eyes positioned ^ ^ ^ run function championsashes:raycast/trace/0
execute if score temp.0 raycastvalue matches 0.. as @e[distance=..20,type=!#championsashes:special_entities,limit=1,sort=nearest] run tag @e[distance=..20,type=!#championsashes:special_entities,tag=raycast.target] remove raycast.target
tag @s remove raycast.execute