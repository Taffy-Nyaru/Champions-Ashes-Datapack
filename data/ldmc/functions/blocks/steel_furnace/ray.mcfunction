execute if entity @s[distance=..10] if block ~ ~ ~ furnace align xyz positioned ~0.5 ~0.5 ~0.5 run function ldmc:blocks/steel_furnace/put
execute if entity @s[distance=..10] if block ~ ~ ~ campfire align xyz positioned ~0.5 ~1.5 ~0.5 run function ldmc:blocks/steel_furnace/put
execute if entity @s[distance=..10] if block ~ ~ ~ soul_campfire align xyz positioned ~0.5 ~1.5 ~0.5 run function ldmc:blocks/steel_furnace/put
execute if entity @s[distance=..10] run data modify block ~ ~ ~ Lock set value ""
execute if entity @s[distance=..10] unless block ~ ~ ~ furnace unless block ~ ~ ~ campfire unless block ~ ~ ~ soul_campfire positioned ^ ^ ^0.005 run function ldmc:blocks/steel_furnace/ray