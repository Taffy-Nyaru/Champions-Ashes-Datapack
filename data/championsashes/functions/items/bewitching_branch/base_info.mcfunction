execute store result score @s ca.branch_playerHotbar run data get entity @s SelectedItemSlot
tag @s add used_charm
data get entity @s SelectedItemSlot
execute if predicate championsashes:using_item/bewitching_branch_special_cmd at @s as @e[tag=raycast.target,team=!friendly,type=!wither,type=!ender_dragon,tag=!drakeblood_knight,limit=1,distance=..6] run tag @s add charmed