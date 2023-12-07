summon item ~ ~ ~ {Tags:["table_drop"],Age:-32768,Health:10,Item:{id:"minecraft:snowball",Count:1b}}
execute as @e[type=item,tag=table_drop] run data modify entity @s Item.id set from storage generic:main displayed_item.id
execute as @e[type=item,tag=table_drop] run data modify entity @s Item.tag set from storage generic:main displayed_item.tag
#data modify storage generic:main displayed_item.id set value {}
#data modify storage generic:main displayed_item.tag set value {}