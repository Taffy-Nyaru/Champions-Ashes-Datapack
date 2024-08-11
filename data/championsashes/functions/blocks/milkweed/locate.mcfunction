#execute if entity @s[advancements={championsashes:blocks/setmilkweed=false}] run data modify storage championsashes:player_data CMD set value []
#Right hand
execute store result score #custom_model_data championsashesValue run data get entity @s SelectedItem.tag.CustomModelData
execute if score #custom_model_data championsashesValue matches 1440001 at @s anchored eyes positioned ^ ^ ^ run function championsashes:blocks/milkweed/ray
execute if score #custom_model_data championsashesValue matches 1440005..1440007 at @s anchored eyes positioned ^ ^ ^ run function championsashes:blocks/milkweed/ray
#Left hand
execute store result score #left_custom_model_data championsashesValue run data get entity @s Inventory[{Slot:-106b}].tag.CustomModelData
execute if score #left_custom_model_data championsashesValue matches 1440001 at @s anchored eyes positioned ^ ^ ^ run function championsashes:blocks/milkweed/ray
execute if score #left_custom_model_data championsashesValue matches 1440005..1440007 at @s anchored eyes positioned ^ ^ ^ run function championsashes:blocks/milkweed/ray
advancement revoke @s only championsashes:blocks/setmilkweed