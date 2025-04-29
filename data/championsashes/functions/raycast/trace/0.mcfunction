
#Normal raycast
execute as @e[distance=..2,tag=!parry_target,tag=!block_clicker,type=!#championsashes:special_entities,tag=!raycast.execute] run function championsashes:raycast/trace/1
#Item display raycast
execute as @e[distance=..2.5,type=item_display,tag=!item_rotate,tag=!upgrade_table,tag=!milkweed,tag=!steel_furnace,tag=!crafter,tag=!raycast.execute] run function championsashes:raycast/trace/1

#Predicate of parry raycast
execute as @e[distance=..3,type=!#championsashes:special_entities,tag=parry_target,tag=!raycast.execute] run function championsashes:raycast/trace/1

#Milkweed
execute as @e[distance=..1,type=interaction,tag=block_clicker,tag=!raycast.execute] run function championsashes:raycast/trace/1
execute as @e[distance=..0.5,type=item_display,tag=milkweed,tag=!raycast.execute] run function championsashes:raycast/trace/1

scoreboard players remove ca.temp.raycast ca.raycast_value 1
execute if score ca.temp.raycast ca.raycast_value matches 1.. positioned ^ ^ ^0.1 run function championsashes:raycast/trace/0