execute if entity @s[nbt={SelectedItem:{tag:{id:"ldmc:steel_furnace"}}}] at @s anchored eyes positioned ^ ^ ^ run function ldmc:blocks/steel_furnace/ray
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{id:"ldmc:steel_furnace"}}]}] at @s anchored eyes positioned ^ ^ ^ run function ldmc:blocks/steel_furnace/ray
advancement revoke @s only ldmc:blocks/setfurnace