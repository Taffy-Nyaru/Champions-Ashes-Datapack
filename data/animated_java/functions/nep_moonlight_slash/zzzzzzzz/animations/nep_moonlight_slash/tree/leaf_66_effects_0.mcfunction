function championsashes:entities/drakeblood_knight/nep_elder/weapon_abilities/moonlight_greatsword_damage
execute at @e[type=marker,tag=nep_moonlight_greatsword_locator,limit=1,sort=nearest] run summon item_display ^ ^0.2 ^0.5 {brightness:{sky:15,block:15},item:{Count:1b,id:"minecraft:warped_fungus_on_a_stick",tag:{Enchantments:[{id:"infinity",lvl:1}],CustomModelData:1390091}},Tags:["nep_moonlight_slash"]}

execute as @e[type=item_display,tag=nep_moonlight_slash] run data modify entity @s transformation.left_rotation set from storage generic:main moonlight_temp
