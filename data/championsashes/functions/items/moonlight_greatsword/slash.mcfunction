summon item_display ^ ^0.2 ^0.5 {brightness:{sky:15,block:15},item:{Count:1b,id:"minecraft:warped_fungus_on_a_stick",tag:{Enchantments:[{id:"infinity",lvl:1}],CustomModelData:1390091}},Tags:["moonlight_slash"]}
execute as @e[type=item_display,tag=moonlight_slash] run data modify entity @s transformation.scale set value [3.5f,3f,1f]
execute as @e[type=item_display,tag=moonlight_slash] run data modify entity @s transformation.left_rotation set from storage generic:main moonlight_temp
tag @s add moonlight
execute as @s[gamemode=survival] run function championsashes:items/item_durability