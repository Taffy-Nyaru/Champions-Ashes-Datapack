execute if entity @a[sort=nearest,distance=..10,gamemode=!creative] at @s run loot spawn ~ ~ ~ loot championsashes:blocks/crying_waystone
setblock ~ ~ ~ air replace
kill @e[type=item,sort=nearest,nbt={Item:{id:"minecraft:lodestone",}},nbt=!{Item:{tag:{id:"championsashes:crying_waystone"}}},limit=1,distance=..5]
kill @s