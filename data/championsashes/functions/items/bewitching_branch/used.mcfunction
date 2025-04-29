scoreboard players add charm_cmd championsashes_Timer 1
execute if score charm_cmd championsashes_Timer matches 1.. at @s run particle cherry_leaves ^ ^1 ^0.2 0.5 0.5 0.5 1 2

execute if score charm_cmd championsashes_Timer matches 1.. if score @s ca.branch_playerHotbar matches 0 run item modify entity @s hotbar.0 championsashes:charm
execute if score charm_cmd championsashes_Timer matches 30.. if score @s ca.branch_playerHotbar matches 0 run item replace entity @s hotbar.0 with air

execute if score charm_cmd championsashes_Timer matches 1.. if score @s ca.branch_playerHotbar matches 1 run item modify entity @s hotbar.1 championsashes:charm
execute if score charm_cmd championsashes_Timer matches 30.. if score @s ca.branch_playerHotbar matches 1 run item replace entity @s hotbar.1 with air

execute if score charm_cmd championsashes_Timer matches 1.. if score @s ca.branch_playerHotbar matches 2 run item modify entity @s hotbar.2 championsashes:charm
execute if score charm_cmd championsashes_Timer matches 30.. if score @s ca.branch_playerHotbar matches 2 run item replace entity @s hotbar.2 with air

execute if score charm_cmd championsashes_Timer matches 1.. if score @s ca.branch_playerHotbar matches 3 run item modify entity @s hotbar.3 championsashes:charm
execute if score charm_cmd championsashes_Timer matches 30.. if score @s ca.branch_playerHotbar matches 3 run item replace entity @s hotbar.3 with air

execute if score charm_cmd championsashes_Timer matches 1.. if score @s ca.branch_playerHotbar matches 4 run item modify entity @s hotbar.4 championsashes:charm
execute if score charm_cmd championsashes_Timer matches 30.. if score @s ca.branch_playerHotbar matches 4 run item replace entity @s hotbar.4 with air

execute if score charm_cmd championsashes_Timer matches 1.. if score @s ca.branch_playerHotbar matches 5 run item modify entity @s hotbar.5 championsashes:charm
execute if score charm_cmd championsashes_Timer matches 30.. if score @s ca.branch_playerHotbar matches 5 run item replace entity @s hotbar.5 with air

execute if score charm_cmd championsashes_Timer matches 1.. if score @s ca.branch_playerHotbar matches 6 run item modify entity @s hotbar.6 championsashes:charm
execute if score charm_cmd championsashes_Timer matches 30.. if score @s ca.branch_playerHotbar matches 6 run item replace entity @s hotbar.6 with air

execute if score charm_cmd championsashes_Timer matches 1.. if score @s ca.branch_playerHotbar matches 7 run item modify entity @s hotbar.7 championsashes:charm
execute if score charm_cmd championsashes_Timer matches 30.. if score @s ca.branch_playerHotbar matches 7 run item replace entity @s hotbar.7 with air

execute if score charm_cmd championsashes_Timer matches 1.. if score @s ca.branch_playerHotbar matches 8 run item modify entity @s hotbar.8 championsashes:charm
execute if score charm_cmd championsashes_Timer matches 30.. if score @s ca.branch_playerHotbar matches 8 run item replace entity @s hotbar.8 with air
execute if score charm_cmd championsashes_Timer matches 30.. run tag @s remove used_charm
execute if score charm_cmd championsashes_Timer matches 30.. run scoreboard players set charm_cmd championsashes_Timer 0