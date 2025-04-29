function championsashes:items/ring_of_favor/durability
execute if score @s usedmedal matches 1.. unless score @s shift matches 1.. unless score @s space matches 1.. run function championsashes:items/ring_of_favor/knight_lightning_spear
execute if score @s usedmedal matches 1.. if score @s shift matches 1.. unless score @s space matches 1.. positioned ^ ^1 ^3 run function championsashes:items/ring_of_favor/blinkbolt_slash
execute if score @s usedmedal matches 1.. if score @s shift matches 1.. if score @s space matches 1.. run function championsashes:items/ring_of_favor/messemers_orb
execute if score @s usedmedal matches 1.. unless score @s shift matches 1.. if score @s space matches 1.. run function championsashes:items/ring_of_favor/ancient_lightning_spear