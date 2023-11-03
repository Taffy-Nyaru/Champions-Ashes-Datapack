execute if entity @s[distance=..10] if block ~ ~ ~ furnace align xyz positioned ~0.5 ~0.5 ~0.5 run function ldmc:blocks/steel_furnace/put
execute if entity @s[distance=..10] run data modify block ~ ~ ~ Lock set value "ldmc.steel_furnace"
execute if entity @s[distance=..10] unless block ~ ~ ~ furnace positioned ^ ^ ^0.005 run function ldmc:blocks/steel_furnace/ray