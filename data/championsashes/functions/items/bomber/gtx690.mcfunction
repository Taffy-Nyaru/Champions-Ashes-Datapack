effect give @s haste 1 1 true
execute store result score #damage championsashesValue run data get entity @s SelectedItem.tag.Damage
execute if score #damage championsashesValue matches 2030.. run summon minecraft:armor_stand ~ ~ ~ {UUID:[I;-1145,5515,-45,15],Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:netherite_pickaxe,tag:{CustomModelData:1390013},Count:1}]}
execute if score #damage championsashesValue matches 2030.. run item replace entity @s weapon.mainhand with air
execute if entity @s[advancements={championsashes:item_durability=true}] run tag @s add chain_mining

execute unless entity fffffb87-0000-158b-ffff-ffd30000000f if score @s shift matches 1.. run function championsashes:items/bomber/bomb