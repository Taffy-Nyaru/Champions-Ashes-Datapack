execute as @e[tag=clicker] store result score @s rClick run data get entity @s interaction.timestamp
execute as @e[tag=clicker] store result score @s lClick run data get entity @s attack.timestamp
execute as @e[tag=clicker,scores={rClick=1..}] run data modify entity @s interaction.timestamp set value 0
#execute as @e[tag=clicker] run data modify entity @s attack.timestamp set value 0
execute as @e[tag=clicker,scores={lClick=1..}] run data modify entity @s attack.timestamp set value 0

execute as @e[type=interaction] store result score @s block_rClick run data get entity @s interaction.timestamp
execute as @e[type=interaction] store result score @s block_lClick run data get entity @s attack.timestamp
execute as @e[type=interaction,scores={block_rClick=1..}] run data modify entity @s interaction.timestamp set value 0
execute as @e[type=interaction,scores={block_lClick=1..}] run data modify entity @s attack.timestamp set value 0

execute as @e[tag=clicker,scores={lClick=1..}] run data modify storage generic:main lClicker set from entity @s attack.player
execute as @e[tag=clicker,scores={rClick=1..}] run data modify storage generic:main rClicker set from entity @s interaction.player