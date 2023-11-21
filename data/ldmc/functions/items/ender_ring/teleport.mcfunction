scoreboard players add #portal.temp ldmc_Timer 1
execute as @s[advancements={ldmc:hurt_entities=true}] at @e[tag=raycast.target,type=!#ldmc:special_entities,limit=1,sort=nearest] run setblock ~ ~ ~ end_gateway{Age:200L,ExactTeleport:1b,ExitPortal:{X:0,Y:-128,Z:0}} replace
execute if score @s ender_ring_playerHotbar matches 0 run item modify entity @s hotbar.0 ldmc:ender_ring_activate
execute if score @s ender_ring_playerHotbar matches 1 run item modify entity @s hotbar.1 ldmc:ender_ring_activate
execute if score @s ender_ring_playerHotbar matches 2 run item modify entity @s hotbar.2 ldmc:ender_ring_activate
execute if score @s ender_ring_playerHotbar matches 3 run item modify entity @s hotbar.3 ldmc:ender_ring_activate
execute if score @s ender_ring_playerHotbar matches 4 run item modify entity @s hotbar.4 ldmc:ender_ring_activate
execute if score @s ender_ring_playerHotbar matches 5 run item modify entity @s hotbar.5 ldmc:ender_ring_activate
execute if score @s ender_ring_playerHotbar matches 6 run item modify entity @s hotbar.6 ldmc:ender_ring_activate
execute if score @s ender_ring_playerHotbar matches 7 run item modify entity @s hotbar.7 ldmc:ender_ring_activate
execute if score @s ender_ring_playerHotbar matches 8 run item modify entity @s hotbar.8 ldmc:ender_ring_activate
execute if score #portal.temp ldmc_Timer matches 19.. at @s run fill ~-15 ~-1 ~-15 ~15 ~1 ~15 air replace end_gateway
execute if score #portal.temp ldmc_Timer matches 19.. at @s run fill ~-15 ~-7 ~-15 ~15 ~7 ~15 air replace end_gateway
execute if score #portal.temp ldmc_Timer matches 20.. if score @s ender_ring_playerHotbar matches 0 run item modify entity @s hotbar.0 ldmc:ender_ring_closed
execute if score #portal.temp ldmc_Timer matches 20.. if score @s ender_ring_playerHotbar matches 1 run item modify entity @s hotbar.1 ldmc:ender_ring_closed
execute if score #portal.temp ldmc_Timer matches 20.. if score @s ender_ring_playerHotbar matches 2 run item modify entity @s hotbar.2 ldmc:ender_ring_closed
execute if score #portal.temp ldmc_Timer matches 20.. if score @s ender_ring_playerHotbar matches 3 run item modify entity @s hotbar.3 ldmc:ender_ring_closed
execute if score #portal.temp ldmc_Timer matches 20.. if score @s ender_ring_playerHotbar matches 4 run item modify entity @s hotbar.4 ldmc:ender_ring_closed
execute if score #portal.temp ldmc_Timer matches 20.. if score @s ender_ring_playerHotbar matches 5 run item modify entity @s hotbar.5 ldmc:ender_ring_closed
execute if score #portal.temp ldmc_Timer matches 20.. if score @s ender_ring_playerHotbar matches 6 run item modify entity @s hotbar.6 ldmc:ender_ring_closed
execute if score #portal.temp ldmc_Timer matches 20.. if score @s ender_ring_playerHotbar matches 7 run item modify entity @s hotbar.7 ldmc:ender_ring_closed
execute if score #portal.temp ldmc_Timer matches 20.. if score @s ender_ring_playerHotbar matches 8 run item modify entity @s hotbar.8 ldmc:ender_ring_closed
execute if score #portal.temp ldmc_Timer matches 20.. run tag @s remove remote_gateway
execute if score #portal.temp ldmc_Timer matches 20.. run scoreboard players set #portal.temp ldmc_Timer 0