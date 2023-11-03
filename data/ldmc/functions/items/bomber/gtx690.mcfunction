effect give @s haste 1 1 true
execute store result score #damage ldmcValue run data get entity @s SelectedItem.tag.Damage
execute if score #damage ldmcValue matches 2030.. at @s run summon minecraft:armor_stand ~ ~ ~ {UUID:[I;-2069288940,1479951750,-1848769788,1770971905],Tags:["bomb"],Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:netherite_pickaxe,tag:{CustomModelData:1390013},Count:1}],ArmorDropChances:[0f,0f,0f,0f]}
execute if score #damage ldmcValue matches 2030.. run item replace entity @s weapon.mainhand with air