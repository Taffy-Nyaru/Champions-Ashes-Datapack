execute at @e[tag=raycast.target,limit=1,sort=nearest,nbt={HurtTime:10s}] run setblock ~ ~ ~ end_gateway{Age:200L,ExactTeleport:1b,ExitPortal:{X:0,Y:0,Z:0}} replace
item modify entity @s weapon.mainhand ldmc:ender_ring_activate
scoreboard players add #portal.temp timer 1
execute if score #portal.temp timer matches 20.. at @s run fill ~-15 ~-7 ~-15 ~15 ~7 ~15 air replace end_gateway
execute if score #portal.temp timer matches 20.. run tag @s remove remote_gateway
execute if score #portal.temp timer matches 20.. run item modify entity @s weapon.mainhand ldmc:ender_ring_closed
execute if score #portal.temp timer matches 20.. run scoreboard players set #portal.temp timer 0