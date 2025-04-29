#Interaction
execute as @e[type=interaction,distance=..5,tag=clicker] store result score @s ca.interaction_rClick run data get entity @s interaction.timestamp
execute as @e[type=interaction,distance=..5,tag=clicker] store result score @s ca.interaction_lClick run data get entity @s attack.timestamp
execute as @e[type=interaction,distance=..5,tag=clicker,scores={ca.interaction_rClick=1..}] run data modify entity @s interaction.timestamp set value 0
execute as @e[type=interaction,distance=..5,tag=clicker,scores={ca.interaction_lClick=1..}] run data modify entity @s attack.timestamp set value 0

#Block interaction
execute as @e[type=interaction] store result score @s block_ca.interaction_rClick run data get entity @s interaction.timestamp
execute as @e[type=interaction] store result score @s block_ca.interaction_lClick run data get entity @s attack.timestamp
execute as @e[type=interaction,scores={block_ca.interaction_rClick=1..}] run data modify entity @s interaction.timestamp set value 0
execute as @e[type=interaction,scores={block_ca.interaction_lClick=1..}] run data modify entity @s attack.timestamp set value 0

execute as @e[type=interaction,distance=..5,tag=clicker,scores={ca.interaction_lClick=1..}] run data modify storage generic:main ca.interaction_lClicker set from entity @s attack.player
execute as @e[type=interaction,distance=..5,tag=clicker,scores={ca.interaction_rClick=1..}] run data modify storage generic:main ca.interaction_rClicker set from entity @s interaction.player