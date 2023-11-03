execute if entity @a[sort=nearest,distance=..10,gamemode=!creative] at @s run loot spawn ~ ~ ~ loot ldmc:blocks/steel_furnace
kill @e[type=item,sort=nearest,nbt={Item:{id:"minecraft:furnace",tag:{display:{Name:"{\"italic\":false,\"translate\":\"item.ldmc.steel_furnace\"}"}}}},nbt=!{Item:{tag:{id:"ldmc:steel_furnace"}}},limit=1,distance=..5]
setblock ~ ~ ~ air replace
kill @s