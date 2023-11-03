data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:0b}]
execute if data storage generic:main playerInv{Slot:0b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:0b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s hotbar.0 ldmc:tag
execute if data storage generic:main playerInv{Slot:0b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:0b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s hotbar.0 ldmc:tag
execute if data storage generic:main playerInv{Slot:0b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:0b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s hotbar.0 ldmc:tag
execute if data storage generic:main playerInv{Slot:0b,tag:{id:"not_overwritable"}} run item modify entity @s hotbar.0 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:1b}]
execute if data storage generic:main playerInv{Slot:1b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:1b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s hotbar.1 ldmc:tag
execute if data storage generic:main playerInv{Slot:1b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:1b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s hotbar.1 ldmc:tag
execute if data storage generic:main playerInv{Slot:1b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:1b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s hotbar.1 ldmc:tag
execute if data storage generic:main playerInv{Slot:1b,tag:{id:"not_overwritable"}} run item modify entity @s hotbar.1 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:2b}]
execute if data storage generic:main playerInv{Slot:2b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:2b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s hotbar.2 ldmc:tag
execute if data storage generic:main playerInv{Slot:2b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:2b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s hotbar.2 ldmc:tag
execute if data storage generic:main playerInv{Slot:2b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:2b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s hotbar.2 ldmc:tag
execute if data storage generic:main playerInv{Slot:2b,tag:{id:"not_overwritable"}} run item modify entity @s hotbar.2 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:3b}]
execute if data storage generic:main playerInv{Slot:3b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:3b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s hotbar.3 ldmc:tag
execute if data storage generic:main playerInv{Slot:3b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:3b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s hotbar.3 ldmc:tag
execute if data storage generic:main playerInv{Slot:3b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:3b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s hotbar.3 ldmc:tag
execute if data storage generic:main playerInv{Slot:3b,tag:{id:"not_overwritable"}} run item modify entity @s hotbar.3 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:4b}]
execute if data storage generic:main playerInv{Slot:4b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:4b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s hotbar.4 ldmc:tag
execute if data storage generic:main playerInv{Slot:4b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:4b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s hotbar.4 ldmc:tag
execute if data storage generic:main playerInv{Slot:4b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:4b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s hotbar.4 ldmc:tag4
execute if data storage generic:main playerInv{Slot:4b,tag:{id:"not_overwritable"}} run item modify entity @s hotbar.4 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:5b}]
execute if data storage generic:main playerInv{Slot:5b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:5b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s hotbar.5 ldmc:tag
execute if data storage generic:main playerInv{Slot:5b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:5b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s hotbar.5 ldmc:tag
execute if data storage generic:main playerInv{Slot:5b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:5b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s hotbar.5 ldmc:tag
execute if data storage generic:main playerInv{Slot:5b,tag:{id:"not_overwritable"}} run item modify entity @s hotbar.5 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:6b}]
execute if data storage generic:main playerInv{Slot:6b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:6b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s hotbar.6 ldmc:tag
execute if data storage generic:main playerInv{Slot:6b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:6b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s hotbar.6 ldmc:tag
execute if data storage generic:main playerInv{Slot:6b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:6b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s hotbar.6 ldmc:tag
execute if data storage generic:main playerInv{Slot:6b,tag:{id:"not_overwritable"}} run item modify entity @s hotbar.6 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:7b}]
execute if data storage generic:main playerInv{Slot:7b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:7b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s hotbar.7 ldmc:tag
execute if data storage generic:main playerInv{Slot:7b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:7b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s hotbar.7 ldmc:tag
execute if data storage generic:main playerInv{Slot:7b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:7b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s hotbar.7 ldmc:tag
execute if data storage generic:main playerInv{Slot:7b,tag:{id:"not_overwritable"}} run item modify entity @s hotbar.7 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:8b}]
execute if data storage generic:main playerInv{Slot:8b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:8b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s hotbar.8 ldmc:tag
execute if data storage generic:main playerInv{Slot:8b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:8b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s hotbar.8 ldmc:tag
execute if data storage generic:main playerInv{Slot:8b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:8b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s hotbar.8 ldmc:tag
execute if data storage generic:main playerInv{Slot:8b,tag:{id:"not_overwritable"}} run item modify entity @s hotbar.8 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:9b}]
execute if data storage generic:main playerInv{Slot:9b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:9b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s inventory.0 ldmc:tag
execute if data storage generic:main playerInv{Slot:9b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:9b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s inventory.0 ldmc:tag
execute if data storage generic:main playerInv{Slot:9b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:9b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s inventory.0 ldmc:tag
execute if data storage generic:main playerInv{Slot:9b,tag:{id:"not_overwritable"}} run item modify entity @s inventory.0 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:10b}]
execute if data storage generic:main playerInv{Slot:10b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:10b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s inventory.1 ldmc:tag
execute if data storage generic:main playerInv{Slot:10b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:10b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s inventory.1 ldmc:tag
execute if data storage generic:main playerInv{Slot:10b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:10b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s inventory.1 ldmc:tag
execute if data storage generic:main playerInv{Slot:10b,tag:{id:"not_overwritable"}} run item modify entity @s inventory.1 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:11b}]
execute if data storage generic:main playerInv{Slot:11b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:11b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s inventory.2 ldmc:tag
execute if data storage generic:main playerInv{Slot:11b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:11b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s inventory.2 ldmc:tag
execute if data storage generic:main playerInv{Slot:11b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:11b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s inventory.2 ldmc:tag
execute if data storage generic:main playerInv{Slot:11b,tag:{id:"not_overwritable"}} run item modify entity @s inventory.2 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:12b}]
execute if data storage generic:main playerInv{Slot:12b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:12b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s inventory.3 ldmc:tag
execute if data storage generic:main playerInv{Slot:12b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:12b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s inventory.3 ldmc:tag
execute if data storage generic:main playerInv{Slot:12b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:12b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s inventory.3 ldmc:tag
execute if data storage generic:main playerInv{Slot:12b,tag:{id:"not_overwritable"}} run item modify entity @s inventory.3 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:13b}]
execute if data storage generic:main playerInv{Slot:13b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:13b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s inventory.4 ldmc:tag
execute if data storage generic:main playerInv{Slot:13b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:13b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s inventory.4 ldmc:tag
execute if data storage generic:main playerInv{Slot:13b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:13b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s inventory.4 ldmc:tag
execute if data storage generic:main playerInv{Slot:13b,tag:{id:"not_overwritable"}} run item modify entity @s inventory.4 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:14b}]
execute if data storage generic:main playerInv{Slot:14b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:14b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s inventory.5 ldmc:tag
execute if data storage generic:main playerInv{Slot:14b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:14b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s inventory.5 ldmc:tag
execute if data storage generic:main playerInv{Slot:14b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:14b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s inventory.5 ldmc:tag
execute if data storage generic:main playerInv{Slot:14b,tag:{id:"not_overwritable"}} run item modify entity @s inventory.5 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:15b}]
execute if data storage generic:main playerInv{Slot:15b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:15b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s inventory.6 ldmc:tag
execute if data storage generic:main playerInv{Slot:15b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:15b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s inventory.6 ldmc:tag
execute if data storage generic:main playerInv{Slot:15b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:15b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s inventory.6 ldmc:tag
execute if data storage generic:main playerInv{Slot:15b,tag:{id:"not_overwritable"}} run item modify entity @s inventory.6 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:16b}]
execute if data storage generic:main playerInv{Slot:16b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:16b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s inventory.7 ldmc:tag
execute if data storage generic:main playerInv{Slot:16b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:16b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s inventory.7 ldmc:tag
execute if data storage generic:main playerInv{Slot:16b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:16b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s inventory.7 ldmc:tag
execute if data storage generic:main playerInv{Slot:16b,tag:{id:"not_overwritable"}} run item modify entity @s inventory.7 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:17b}]
execute if data storage generic:main playerInv{Slot:17b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:17b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s inventory.8 ldmc:tag
execute if data storage generic:main playerInv{Slot:17b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:17b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s inventory.8 ldmc:tag
execute if data storage generic:main playerInv{Slot:17b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:17b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s inventory.8 ldmc:tag
execute if data storage generic:main playerInv{Slot:17b,tag:{id:"not_overwritable"}} run item modify entity @s inventory.8 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:18b}]
execute if data storage generic:main playerInv{Slot:18b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:18b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s inventory.9 ldmc:tag
execute if data storage generic:main playerInv{Slot:18b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:18b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s inventory.9 ldmc:tag
execute if data storage generic:main playerInv{Slot:18b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:18b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s inventory.9 ldmc:tag
execute if data storage generic:main playerInv{Slot:18b,tag:{id:"not_overwritable"}} run item modify entity @s inventory.9 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:19b}]
execute if data storage generic:main playerInv{Slot:19b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:19b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s inventory.10 ldmc:tag
execute if data storage generic:main playerInv{Slot:19b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:19b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s inventory.10 ldmc:tag
execute if data storage generic:main playerInv{Slot:19b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:19b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s inventory.10 ldmc:tag
execute if data storage generic:main playerInv{Slot:19b,tag:{id:"not_overwritable"}} run item modify entity @s inventory.10 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:20b}]
execute if data storage generic:main playerInv{Slot:20b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:20b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s inventory.11 ldmc:tag
execute if data storage generic:main playerInv{Slot:20b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:20b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s inventory.11 ldmc:tag
execute if data storage generic:main playerInv{Slot:20b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:20b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s inventory.11 ldmc:tag
execute if data storage generic:main playerInv{Slot:20b,tag:{id:"not_overwritable"}} run item modify entity @s inventory.11 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:21b}]
execute if data storage generic:main playerInv{Slot:21b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:21b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s inventory.12 ldmc:tag
execute if data storage generic:main playerInv{Slot:21b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:21b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s inventory.12 ldmc:tag
execute if data storage generic:main playerInv{Slot:21b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:21b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s inventory.12 ldmc:tag
execute if data storage generic:main playerInv{Slot:21b,tag:{id:"not_overwritable"}} run item modify entity @s inventory.12 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:22b}]
execute if data storage generic:main playerInv{Slot:22b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:22b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s inventory.13 ldmc:tag
execute if data storage generic:main playerInv{Slot:22b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:22b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s inventory.13 ldmc:tag
execute if data storage generic:main playerInv{Slot:22b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:22b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s inventory.13 ldmc:tag
execute if data storage generic:main playerInv{Slot:22b,tag:{id:"not_overwritable"}} run item modify entity @s inventory.13 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:23b}]
execute if data storage generic:main playerInv{Slot:23b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:23b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s inventory.14 ldmc:tag
execute if data storage generic:main playerInv{Slot:23b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:23b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s inventory.14 ldmc:tag
execute if data storage generic:main playerInv{Slot:23b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:23b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s inventory.14 ldmc:tag
execute if data storage generic:main playerInv{Slot:23b,tag:{id:"not_overwritable"}} run item modify entity @s inventory.14 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:24b}]
execute if data storage generic:main playerInv{Slot:24b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:24b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s inventory.15 ldmc:tag
execute if data storage generic:main playerInv{Slot:24b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:24b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s inventory.15 ldmc:tag
execute if data storage generic:main playerInv{Slot:24b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:24b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s inventory.15 ldmc:tag
execute if data storage generic:main playerInv{Slot:24b,tag:{id:"not_overwritable"}} run item modify entity @s inventory.15 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:25b}]
execute if data storage generic:main playerInv{Slot:25b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:25b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s inventory.16 ldmc:tag
execute if data storage generic:main playerInv{Slot:25b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:25b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s inventory.16 ldmc:tag
execute if data storage generic:main playerInv{Slot:25b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:25b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s inventory.16 ldmc:tag
execute if data storage generic:main playerInv{Slot:25b,tag:{id:"not_overwritable"}} run item modify entity @s inventory.16 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:26b}]
execute if data storage generic:main playerInv{Slot:26b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:26b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s inventory.17 ldmc:tag
execute if data storage generic:main playerInv{Slot:26b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:26b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s inventory.17 ldmc:tag
execute if data storage generic:main playerInv{Slot:26b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:26b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s inventory.17 ldmc:tag
execute if data storage generic:main playerInv{Slot:26b,tag:{id:"not_overwritable"}} run item modify entity @s inventory.17 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:27b}]
execute if data storage generic:main playerInv{Slot:27b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:27b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s inventory.18 ldmc:tag
execute if data storage generic:main playerInv{Slot:27b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:27b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s inventory.18 ldmc:tag
execute if data storage generic:main playerInv{Slot:27b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:27b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s inventory.18 ldmc:tag
execute if data storage generic:main playerInv{Slot:27b,tag:{id:"not_overwritable"}} run item modify entity @s inventory.18 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:28b}]
execute if data storage generic:main playerInv{Slot:28b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:28b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s inventory.19 ldmc:tag
execute if data storage generic:main playerInv{Slot:28b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:28b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s inventory.19 ldmc:tag
execute if data storage generic:main playerInv{Slot:28b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:28b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s inventory.19 ldmc:tag
execute if data storage generic:main playerInv{Slot:28b,tag:{id:"not_overwritable"}} run item modify entity @s inventory.19 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:29b}]
execute if data storage generic:main playerInv{Slot:29b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:29b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s inventory.20 ldmc:tag
execute if data storage generic:main playerInv{Slot:29b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:29b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s inventory.20 ldmc:tag
execute if data storage generic:main playerInv{Slot:29b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:29b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s inventory.20 ldmc:tag
execute if data storage generic:main playerInv{Slot:29b,tag:{id:"not_overwritable"}} run item modify entity @s inventory.20 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:30b}]
execute if data storage generic:main playerInv{Slot:30b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:30b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s inventory.21 ldmc:tag
execute if data storage generic:main playerInv{Slot:30b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:30b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s inventory.21 ldmc:tag
execute if data storage generic:main playerInv{Slot:30b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:30b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s inventory.21 ldmc:tag
execute if data storage generic:main playerInv{Slot:30b,tag:{id:"not_overwritable"}} run item modify entity @s inventory.21 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:31b}]
execute if data storage generic:main playerInv{Slot:31b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:31b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s inventory.22 ldmc:tag
execute if data storage generic:main playerInv{Slot:31b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:31b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s inventory.22 ldmc:tag
execute if data storage generic:main playerInv{Slot:31b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:31b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s inventory.22 ldmc:tag
execute if data storage generic:main playerInv{Slot:31b,tag:{id:"not_overwritable"}} run item modify entity @s inventory.22 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:32b}]
execute if data storage generic:main playerInv{Slot:32b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:32b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s inventory.23 ldmc:tag
execute if data storage generic:main playerInv{Slot:32b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:32b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s inventory.23 ldmc:tag
execute if data storage generic:main playerInv{Slot:32b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:32b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s inventory.23 ldmc:tag
execute if data storage generic:main playerInv{Slot:32b,tag:{id:"not_overwritable"}} run item modify entity @s inventory.23 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:33b}]
execute if data storage generic:main playerInv{Slot:33b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:33b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s inventory.24 ldmc:tag
execute if data storage generic:main playerInv{Slot:33b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:33b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s inventory.24 ldmc:tag
execute if data storage generic:main playerInv{Slot:33b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:33b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s inventory.24 ldmc:tag
execute if data storage generic:main playerInv{Slot:33b,tag:{id:"not_overwritable"}} run item modify entity @s inventory.24 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:34b}]
execute if data storage generic:main playerInv{Slot:34b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:34b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s inventory.25 ldmc:tag
execute if data storage generic:main playerInv{Slot:34b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:34b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s inventory.25 ldmc:tag
execute if data storage generic:main playerInv{Slot:34b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:34b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s inventory.25 ldmc:tag
execute if data storage generic:main playerInv{Slot:34b,tag:{id:"not_overwritable"}} run item modify entity @s inventory.25 ldmc:inv
data modify storage generic:main playerInv set value []
data modify storage generic:main playerInv set from entity @s Inventory[{Slot:35b}]
execute if data storage generic:main playerInv{Slot:35b,tag:{id:"ldmc:gold_medal"}} if entity @s[nbt=!{Inventory:[{Slot:35b,tag:{display:{Name:'[{"translate":"item.ldmc.gold_medal","italic":false}]'}}}]}] run item modify entity @s inventory.26 ldmc:tag
execute if data storage generic:main playerInv{Slot:35b,tag:{id:"ldmc:silver_medal"}} if entity @s[nbt=!{Inventory:[{Slot:35b,tag:{display:{Name:'[{"translate":"item.ldmc.silver_medal","italic":false}]'}}}]}] run item modify entity @s inventory.26 ldmc:tag
execute if data storage generic:main playerInv{Slot:35b,tag:{id:"ldmc:bronze_medal"}} if entity @s[nbt=!{Inventory:[{Slot:35b,tag:{display:{Name:'[{"translate":"item.ldmc.bronze_medal","italic":false}]'}}}]}] run item modify entity @s inventory.26 ldmc:tag
execute if data storage generic:main playerInv{Slot:35b,tag:{id:"not_overwritable"}} run item modify entity @s inventory.26 ldmc:inv