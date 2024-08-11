#execute as @e[type=item,sort=nearest,tag=milkweed_drop,limit=1,distance=..3] unless data entity @s Item.tag.id run tag @s add championsashes_block_drop
#data modify entity @e[type=item,sort=nearest,tag=championsashes_block_drop,limit=1,distance=..3] Item set from entity @s item.id
#tag @e[type=item,distance=..3,tag=championsashes_block_drop] remove championsashes_block_drop
execute if entity @a[sort=nearest,distance=..10,gamemode=!creative] at @s run loot spawn ~ ~ ~ loot championsashes:blocks/steel_block
#kill @e[type=item,distance=..3,tag=championsashes_block_drop]
setblock ~ ~ ~ air replace
kill @e[type=item,sort=nearest,nbt={Item:{id:"minecraft:iron_block",}},nbt=!{Item:{tag:{id:"championsashes:steel_block"}}},limit=1,distance=..5]
kill @s