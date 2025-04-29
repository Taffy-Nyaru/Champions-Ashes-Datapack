#Since everytime when the storage store an uuid the storage is totally replaced, it needs to gain the data from the scoreboard
execute store result storage math:io uuid[0] int 1 run scoreboard players get @s interaction_uuid0
execute store result storage math:io uuid[1] int 1 run scoreboard players get @s interaction_uuid1
execute store result storage math:io uuid[2] int 1 run scoreboard players get @s interaction_uuid2
execute store result storage math:io uuid[3] int 1 run scoreboard players get @s interaction_uuid3

#When a player is offline it can't find its related interaction and therefore killtime will be 0 in #tick 
data modify entity 00000008-0000-0005-0000-000900000003 Thrower set from storage math:io uuid
execute at @s[tag=needclicker] as 00000008-0000-0005-0000-000900000003 on origin run teleport @s ~ ~-4 ~

#Can't teleport it to a given coordinate since it can't handle with multi-dimensions even with the /forceload
execute if entity @s[tag=!needclicker] as 00000008-0000-0005-0000-000900000003 on origin run kill @s
execute if entity @s[tag=!needclicker] run kill 00000008-0000-0005-0000-000900000003

#Test if the interaction clickers is related to a player
execute as 00000008-0000-0005-0000-000900000003 on origin run tag @s[tag=!related] add related
execute as 00000008-0000-0005-0000-000900000003 on origin store success score @s related run data get entity @s UUID
execute as @e[type=interaction,tag=clicker] unless score @s related matches -2147483648..2147483647 run tag @s remove related

#Set the items saving ca.interaction_lClicker and ca.interaction_rClicker UUID to a random UUID that may does not exists if there is no ca.interaction_rClick or ca.interaction_lClick
execute if entity @e[type=interaction,tag=clicker,scores={ca.interaction_lClick=0}] run data modify entity a346a606-7102-4c7f-b48d-14038f3a5e56 Thrower set value [I;1457798924,1924024473,-1820779557,1335992244]
execute if entity @e[type=interaction,tag=clicker,scores={ca.interaction_rClick=0}] run data modify entity 2094fd65-93de-4a69-9ea2-a74c7f35bc75 Thrower set value [I;1457798924,1924024473,-1820779557,1335992244]