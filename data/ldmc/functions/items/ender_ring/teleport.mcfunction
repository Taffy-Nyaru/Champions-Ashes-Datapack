execute at @e[tag=raycast.target,limit=1,sort=nearest,nbt={HurtTime:10s}] run setblock ~ ~ ~ end_gateway{Age:200L,ExactTeleport:1b,ExitPortal:{X:0,Y:0,Z:0}} replace
execute if entity @s[nbt={Inventory:[{Slot:0b,tag:{CustomModelData:1390039}}]}] run item modify entity @s hotbar.0 ldmc:ender_ring_activate
execute if entity @s[nbt={Inventory:[{Slot:1b,tag:{CustomModelData:1390039}}]}] run item modify entity @s hotbar.1 ldmc:ender_ring_activate
execute if entity @s[nbt={Inventory:[{Slot:2b,tag:{CustomModelData:1390039}}]}] run item modify entity @s hotbar.2 ldmc:ender_ring_activate
execute if entity @s[nbt={Inventory:[{Slot:3b,tag:{CustomModelData:1390039}}]}] run item modify entity @s hotbar.3 ldmc:ender_ring_activate
execute if entity @s[nbt={Inventory:[{Slot:4b,tag:{CustomModelData:1390039}}]}] run item modify entity @s hotbar.4 ldmc:ender_ring_activate
execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{CustomModelData:1390039}}]}] run item modify entity @s hotbar.5 ldmc:ender_ring_activate
execute if entity @s[nbt={Inventory:[{Slot:6b,tag:{CustomModelData:1390039}}]}] run item modify entity @s hotbar.6 ldmc:ender_ring_activate
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{CustomModelData:1390039}}]}] run item modify entity @s hotbar.7 ldmc:ender_ring_activate
execute if entity @s[nbt={Inventory:[{Slot:8b,tag:{CustomModelData:1390039}}]}] run item modify entity @s hotbar.8 ldmc:ender_ring_activate
scoreboard players add #portal.temp timer 1
execute if score #portal.temp timer matches 20.. at @s run fill ~-15 ~-1 ~-15 ~15 ~1 ~15 air replace end_gateway
execute if score #portal.temp timer matches 20.. at @s run fill ~-15 ~-7 ~-15 ~15 ~7 ~15 air replace end_gateway
execute if score #portal.temp timer matches 20.. run tag @s remove remote_gateway
execute if score #portal.temp timer matches 20.. if entity @s[nbt={Inventory:[{Slot:0b,tag:{CustomModelData:1390040}}]}] run item modify entity @s hotbar.0 ldmc:ender_ring_closed
execute if score #portal.temp timer matches 20.. if entity @s[nbt={Inventory:[{Slot:1b,tag:{CustomModelData:1390040}}]}] run item modify entity @s hotbar.1 ldmc:ender_ring_closed
execute if score #portal.temp timer matches 20.. if entity @s[nbt={Inventory:[{Slot:2b,tag:{CustomModelData:1390040}}]}] run item modify entity @s hotbar.2 ldmc:ender_ring_closed
execute if score #portal.temp timer matches 20.. if entity @s[nbt={Inventory:[{Slot:3b,tag:{CustomModelData:1390040}}]}] run item modify entity @s hotbar.3 ldmc:ender_ring_closed
execute if score #portal.temp timer matches 20.. if entity @s[nbt={Inventory:[{Slot:4b,tag:{CustomModelData:1390040}}]}] run item modify entity @s hotbar.4 ldmc:ender_ring_closed
execute if score #portal.temp timer matches 20.. if entity @s[nbt={Inventory:[{Slot:5b,tag:{CustomModelData:1390040}}]}] run item modify entity @s hotbar.5 ldmc:ender_ring_closed
execute if score #portal.temp timer matches 20.. if entity @s[nbt={Inventory:[{Slot:6b,tag:{CustomModelData:1390040}}]}] run item modify entity @s hotbar.6 ldmc:ender_ring_closed
execute if score #portal.temp timer matches 20.. if entity @s[nbt={Inventory:[{Slot:7b,tag:{CustomModelData:1390040}}]}] run item modify entity @s hotbar.7 ldmc:ender_ring_closed
execute if score #portal.temp timer matches 20.. if entity @s[nbt={Inventory:[{Slot:8b,tag:{CustomModelData:1390040}}]}] run item modify entity @s hotbar.8 ldmc:ender_ring_closed
execute if score #portal.temp timer matches 20.. run scoreboard players set #portal.temp timer 0