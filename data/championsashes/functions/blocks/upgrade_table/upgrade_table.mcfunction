data modify storage generic:main enchantData set from entity @s Item.tag.StoredEnchantments[]
data modify storage generic:main displayed_item.tag.Enchantments append from storage generic:main enchantData
execute as @e[tag=item_rotate,limit=1,sort=nearest,distance=..5] run data modify entity @s item.tag.Enchantments set from storage generic:main displayed_item.tag.Enchantments
data modify storage generic:main enchantData set value []
xp add @a[gamemode=survival,distance=..5,limit=1,sort=nearest] -1500
kill @s