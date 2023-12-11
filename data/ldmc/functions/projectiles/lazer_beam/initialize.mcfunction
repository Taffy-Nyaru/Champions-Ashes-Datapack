summon item_display ^ ^1 ^ {Tags:["lazer_beam","lazer_animate"],item:{Count:1b,id:"lodestone",tag:{CustomModelData:1440011}},brightness:{block:15,sky:15}}
execute as @e[tag=lazer_beam] run data modify entity @s start_interpolation set value 0
execute as @e[tag=lazer_beam] run data modify entity @s interpolation_duration set value 1
tag @s[type=player,predicate=ldmc:using_item/lothric_holy_sword] add lazer_owner
tag @s add start_entity

tag @e[limit=1,sort=nearest,type=!#ldmc:special_entities,tag=!lazer_owner,distance=..20] add lazer_target
tag @e[limit=1,sort=nearest,type=!#ldmc:special_entities,tag=!lazer_owner,tag=!start_entity,tag=!end_entity,distance=..20] add end_entity

function ldmc:projectiles/lazer_beam/euclidean_distance
execute if entity @s[gamemode=survival,type=player,predicate=ldmc:using_item/lothric_holy_sword] run function ldmc:items/item_durability