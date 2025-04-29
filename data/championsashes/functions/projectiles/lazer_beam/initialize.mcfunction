summon item_display ^ ^1 ^ {Tags:["lazer_beam","lazer_animate"],item:{Count:1b,id:"minecraft:beacon",tag:{Enchantments:[{id:"infinity",lvl:1}],CustomModelData:1390084}},brightness:{block:15,sky:15}}
execute as @e[tag=lazer_beam] run data modify entity @s start_interpolation set value 0
execute as @e[tag=lazer_beam] run data modify entity @s interpolation_duration set value 1
tag @s[type=player,scores={ca.item.id_selecter_mainhand=1030}] add lazer_owner
tag @s[type=player,scores={ca.item.id_selecter_offhand=1030}] add lazer_owner
tag @s add start_entity
tag @s add lazer_node

tag @e[limit=1,sort=nearest,type=!#championsashes:special_entities,team=!friendly,type=!iron_golem,tag=!lazer_owner,tag=!lazer_node,tag=!lazer_target,distance=..20] add lazer_target
tag @e[limit=1,sort=nearest,type=!#championsashes:special_entities,team=!friendly,tag=!lazer_owner,tag=!lazer_node,tag=!end_entity,distance=..20] add end_entity

function championsashes:projectiles/lazer_beam/euclidean_distance
execute if entity @e[tag=lazer_beam] run function championsashes:items/item_durability