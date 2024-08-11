tag @s add drink_buffer_time_end
data modify entity @s item.tag.CustomModelData set value 1440006
execute at @s positioned ~ ~ ~ as @e[tag=block_clicker] run data modify storage generic:main nearest_Player set from entity @s attack.player
data modify entity 00041459-ffff-330c-ffff-b82800017722 Thrower set from storage generic:main nearest_Player
execute as 00041459-ffff-330c-ffff-b82800017722 on origin run effect give @s saturation 2 1 true
execute as 00041459-ffff-330c-ffff-b82800017722 on origin run effect give @s resistance 1 10 true