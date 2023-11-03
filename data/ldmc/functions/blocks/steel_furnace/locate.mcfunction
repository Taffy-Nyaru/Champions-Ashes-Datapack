execute store result score #custom_model_data ldmcValue run data get entity @s SelectedItem.tag.CustomModelData
execute if score #custom_model_data ldmcValue matches 1440002 at @s anchored eyes positioned ^ ^ ^ run function ldmc:blocks/steel_furnace/ray
execute store result score #left_custom_model_data ldmcValue run data get entity @s Inventory[{Slot:-106b}].tag.CustomModelData
execute if score #left_custom_model_data ldmcValue matches 1440002 at @s anchored eyes positioned ^ ^ ^ run function ldmc:blocks/steel_furnace/ray
#execute store result storage ldmc:player_data CMD int 1 run data get entity @s SelectedItem.tag.CustomModelData
advancement revoke @s only ldmc:blocks/setfurnace