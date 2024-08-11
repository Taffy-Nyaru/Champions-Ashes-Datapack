tag @s add undead
tag @s add shadow_pearl_ignite4
scoreboard players set @s recursion_times 1
item modify entity @s weapon.mainhand championsashes:shadow_pearl/shadow_pearl_ignite4
execute store result score @s shadow_pearl_playerHotbar run data get entity @s SelectedItemSlot