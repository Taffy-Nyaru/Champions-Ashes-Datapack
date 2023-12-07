#tag @s add displayed_item
data modify entity @s item set from entity @e[type=item,limit=1,sort=nearest,distance=..1.5] Item
data modify entity @s item.tag set from entity @e[type=item,limit=1,sort=nearest,distance=..0.5] Item.tag
tag @s add item_rotate