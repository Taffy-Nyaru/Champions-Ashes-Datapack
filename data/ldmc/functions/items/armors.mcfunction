execute if entity @s[predicate=ldmc:using_item/steel_armor_advancement] run advancement grant @s[advancements={ldmc:func/steel_set=false}] only ldmc:func/steel_set
execute if entity @s[predicate=ldmc:using_item/witherite_armor_advancement] run advancement grant @s[advancements={ldmc:func/wither_armor=false}] only ldmc:func/wither_armor
execute if entity @s[predicate=ldmc:using_item/drakeblood_armor_advancement] run advancement grant @s[advancements={ldmc:func/drakeblood_armor=false}] only ldmc:func/drakeblood_armor
execute if entity @s[predicate=ldmc:using_item/tryhard_armor_advancement] run advancement grant @s[advancements={ldmc:func/tryhard_armor=false}] only ldmc:func/tryhard_armor
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:steel_axe"}}} run effect give @s strength 1 0 true
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:steel_axe"}}} run effect give @s haste 1 0 true
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:steel_sword"}}} run effect give @s strength 1 1 true
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:steel_hoe"}}} run effect give @s luck 1 0 true
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:steel_pickaxe"}}} run effect give @s haste 1 0 true
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:steel_pickaxe"}}} run effect give @s night_vision 1 0 true
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:steel_shovel"}}} run effect give @s haste 1 0 true