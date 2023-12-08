#Normal raycast
execute as @e[tag=!parry_target,tag=!clicker,tag=!block_clicker,type=!#ldmc:special_entities,tag=!raycast.execute,distance=..2] run function ldmc:raycast/trace/1

#Rkss skill
execute if entity @s[tag=rkss_skill] as @e[tag=!parry_target,tag=!clicker,tag=!block_clicker,type=!#ldmc:special_entities,tag=!raycast.execute,distance=..7] run function ldmc:raycast/trace/1

#Item display raycast
execute as @e[type=item_display,tag=!item_rotate,tag=!upgrade_table,tag=!milkweed,tag=!steel_furnace,tag=!crafter,tag=!raycast.execute,distance=..2.5] run function ldmc:raycast/trace/1

#Predicate of parry raycast
execute as @e[tag=parry_target,tag=!raycast.execute,distance=..3] run function ldmc:raycast/trace/1

#Predicate of blocks raycast
execute as @e[tag=block_clicker,tag=!raycast.execute,distance=..1] run function ldmc:raycast/trace/1
execute as @e[tag=milkweed,tag=!raycast.execute,distance=..0.5] run function ldmc:raycast/trace/1
execute as @e[tag=steel_furnace,tag=!raycast.execute,limit=1,distance=..0.7] run function ldmc:raycast/trace/1
execute as @e[tag=crafter,tag=!raycast.execute,limit=1,distance=..0.7] run function ldmc:raycast/trace/1
execute as @e[tag=upgrade_table,tag=!raycast.execute,limit=1,distance=..0.7] run function ldmc:raycast/trace/1
execute as @e[tag=item_rotate,tag=!raycast.execute,limit=1,distance=..0.7] run function ldmc:raycast/trace/1

scoreboard players remove temp.0 raycastvalue 1
execute if score temp.0 raycastvalue matches 1.. positioned ^ ^ ^0.1 run function ldmc:raycast/trace/0