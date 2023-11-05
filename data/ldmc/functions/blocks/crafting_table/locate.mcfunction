execute if entity @s[nbt={SelectedItem:{tag:{id:"ldmc:crafting_table"}}}] at @s anchored eyes positioned ^ ^ ^ run function ldmc:blocks/crafting_table/ray
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{id:"ldmc:crafting_table"}}]}] at @s anchored eyes positioned ^ ^ ^ run function ldmc:blocks/crafting_table/ray
advancement revoke @s only ldmc:blocks/set_table