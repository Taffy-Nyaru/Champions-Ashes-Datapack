execute if entity @s[nbt={SelectedItem:{tag:{id:"ldmc:steel_block"}}}] at @s anchored eyes positioned ^ ^ ^ run function ldmc:blocks/steel_block/ray
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{id:"ldmc:steel_block"}}]}] at @s anchored eyes positioned ^ ^ ^ run function ldmc:blocks/steel_block/ray
advancement revoke @s only ldmc:blocks/set_steel_block