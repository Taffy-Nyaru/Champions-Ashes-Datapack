execute if entity @s[nbt={SelectedItem:{tag:{id:"championsashes:steel_block"}}}] at @s anchored eyes positioned ^ ^ ^ run function championsashes:blocks/steel_block/ray
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{id:"championsashes:steel_block"}}]}] at @s anchored eyes positioned ^ ^ ^ run function championsashes:blocks/steel_block/ray
advancement revoke @s only championsashes:blocks/set_steel_block