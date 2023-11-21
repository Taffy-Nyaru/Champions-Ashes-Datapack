data modify storage generic:main enchantData set from entity @s Item.tag.StoredEnchantments[]
data modify storage generic:main displayed_item.tag.Enchantments append from storage generic:main enchantData
data modify storage generic:main enchantData set value []
xp add @a[distance=..5,limit=1,sort=nearest] -2500
kill @s