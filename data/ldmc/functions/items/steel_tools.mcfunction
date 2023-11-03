execute if entity @s[nbt={Inventory:[{tag:{id:"ldmc:steel_helmet"}},{tag:{id:"ldmc:steel_chestplate"}},{tag:{id:"ldmc:steel_leggings"}},{tag:{id:"ldmc:steel_boots"}}]}] run advancement grant @s[advancements={ldmc:func/steel_set=false}] only ldmc:func/steel_set
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:steel_axe"}}} run effect give @s strength 1 0 true
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:steel_axe"}}} run effect give @s haste 1 0 true
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:steel_sword"}}} run effect give @s strength 1 1 true
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:steel_hoe"}}} run effect give @s luck 1 0 true
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:steel_pickaxe"}}} run effect give @s haste 1 0 true
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:steel_pickaxe"}}} run effect give @s night_vision 1 0 true
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:steel_shovel"}}} run effect give @s haste 1 0 true