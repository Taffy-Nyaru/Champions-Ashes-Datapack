execute if entity @a[limit=1,sort=nearest,distance=..10,gamemode=!creative] at @s run loot spawn ~ ~ ~ loot championsashes:blocks/milkweed
data modify entity @e[type=item,sort=nearest,nbt={Item:{tag:{id:"championsashes:milkweed"}}},limit=1,distance=..5] Item.tag.CustomModelData set from entity @s item.tag.CustomModelData
setblock ~ ~ ~ air replace
kill @s