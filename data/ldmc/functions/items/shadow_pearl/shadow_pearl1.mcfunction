tag @s add undead
tag @s add shadow_pearl_ignite1
scoreboard players set @s recursion_times 4
item modify entity @s weapon.mainhand ldmc:shadow_pearl/shadow_pearl_ignite1
execute store result score @s shadow_pearl_playerHotbar run data get entity @s SelectedItemSlot