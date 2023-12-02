function ldmc:items/dragonslayer_greatbow/arbalest/get_owner_crossbow
tag @s add usedarbalest
execute at @s unless entity @s[nbt={Inventory:[{id:"minecraft:arrow"}]}] unless entity @e[distance=..3,type=item,nbt={Item:{id:"minecraft:arrow"}}] run give @s arrow 1