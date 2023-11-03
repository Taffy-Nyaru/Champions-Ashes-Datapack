tag @s add raycast.execute
scoreboard players operation temp.0 raycastvalue = #raycast.max raycastvalue
execute if score temp.0 raycastvalue matches 1.. at @s anchored eyes positioned ^ ^ ^ run function ldmc:raycast/trace/0
execute if score temp.0 raycastvalue matches 0.. as @e[tag=!clicker,type=!marker,limit=1,sort=nearest] run tag @e[tag=raycast.target] remove raycast.target
tag @s remove raycast.execute