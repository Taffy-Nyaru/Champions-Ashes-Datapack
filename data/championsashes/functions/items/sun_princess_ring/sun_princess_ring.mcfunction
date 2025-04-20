execute if predicate championsashes:using_item/sun_princess_ring_right run effect give @s[tag=!regen] regeneration 114514 1
execute if predicate championsashes:using_item/sun_princess_ring_right run tag @s[tag=!regen] add regen
execute if predicate championsashes:using_item/sun_princess_ring_left run effect give @s[tag=!regen] regeneration 114514 1
execute if predicate championsashes:using_item/sun_princess_ring_left run tag @s[tag=!regen] add regen
execute unless predicate championsashes:using_item/sun_princess_ring_left unless predicate championsashes:using_item/sun_princess_ring_right run effect clear @s[tag=regen] regeneration
execute unless predicate championsashes:using_item/sun_princess_ring_left unless predicate championsashes:using_item/sun_princess_ring_right run tag @s[tag=regen] remove regen
execute if predicate championsashes:using_item/sun_princess_ring_right if score @s[tag=!stiff] usedmedal matches 1.. unless score @s shift matches 1.. at @s unless entity @e[tag=aj.write.root,distance=..5] run function championsashes:items/sun_princess_ring/nep
execute if predicate championsashes:using_item/sun_princess_ring_right if score @s[tag=!stiff] usedmedal matches 1.. if score @s shift matches 1.. at @s unless entity @e[tag=aj.write.root,distance=..5] run function championsashes:items/sun_princess_ring/cin

execute as @s[tag=field_extensioner] at @s run function championsashes:items/sun_princess_ring/field
execute at @e[tag=aj.gravity_lightning_bolt.root] unless entity @e[tag=gravity_lightning_shocked,type=!#championsashes:special_entities,distance=..5] run function championsashes:items/sun_princess_ring/gravity_lightning_end