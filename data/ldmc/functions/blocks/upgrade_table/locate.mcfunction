execute if entity @s[nbt={SelectedItem:{tag:{id:"ldmc:upgrade_table"}}}] at @s anchored eyes positioned ^ ^ ^ run function ldmc:blocks/upgrade_table/ray
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{id:"ldmc:upgrade_table"}}]}] at @s anchored eyes positioned ^ ^ ^ run function ldmc:blocks/upgrade_table/ray
advancement revoke @s only ldmc:blocks/set_upgrade_table