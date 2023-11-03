execute store result score #custom_model_data ldmcValue run data get entity @s SelectedItem.tag.CustomModelData
execute if score #custom_model_data ldmcValue matches 1440004 at @s anchored eyes positioned ^ ^ ^ run function ldmc:blocks/pooth/ray
execute store result score #left_custom_model_data ldmcValue run data get entity @s Inventory[{Slot:-106b}].tag.CustomModelData
execute if score #left_custom_model_data ldmcValue matches 1440004 at @s anchored eyes positioned ^ ^ ^ run function ldmc:blocks/pooth/ray
advancement revoke @s only ldmc:blocks/setpooth