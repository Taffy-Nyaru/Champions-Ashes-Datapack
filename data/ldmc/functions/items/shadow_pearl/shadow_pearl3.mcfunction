tag @s add undead
tag @s add shadow_pearl_ignite3
scoreboard players set @s recursion_times 2
item modify entity @s weapon.mainhand ldmc:shadow_pearl/shadow_pearl_ignite3
execute store result score @s shadow_pearl_playerHotbar run data get entity @s SelectedItemSlot