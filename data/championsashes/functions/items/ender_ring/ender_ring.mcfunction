execute unless score @s shift matches 1.. if score @s usedmedal matches 1.. at @s positioned ^ ^ ^4 run function championsashes:entities/night_cavalry/summon
execute if score @s shift matches 1.. if score @s usedmedal matches 1.. at @s run teleport @e[tag=pearl] ^ ^ ^4
execute if score @s shift matches 1.. if score @s usedmedal matches 1.. at @s run teleport @e[tag=night_cavalry] ^ ^ ^4
execute if entity @s[advancements={championsashes:hurt_entities=true}] run tag @s add remote_gateway
execute if entity @s[advancements={championsashes:hurt_entities=true}] store result score @s ca.ender_ring_playerHotbar run data get entity @s SelectedItemSlot
execute store result score @s ca.itemCount run data get entity @s SelectedItem.Count
tag @s add omen_king