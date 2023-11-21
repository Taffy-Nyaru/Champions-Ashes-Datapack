execute if entity @a[sort=nearest,distance=..10,gamemode=!creative] at @s run loot spawn ~ ~ ~ loot ldmc:blocks/upgrade_table

setblock ~ ~ ~ air replace
execute at @s[tag=item_displayed] run function ldmc:blocks/upgrade_table/take_item
kill @e[tag=item_rotate,sort=nearest,limit=1,distance=..0.5]
kill @e[type=item,sort=nearest,nbt={Item:{id:"minecraft:glass",}},nbt=!{Item:{tag:{id:"ldmc:upgrade_table"}}},limit=1,distance=..5]
kill @s