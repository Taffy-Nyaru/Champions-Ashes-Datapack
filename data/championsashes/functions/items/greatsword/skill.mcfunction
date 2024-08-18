tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType

execute facing ^ ^ ^-1 run function animated_java:gravity_thrust/summon
execute as @e[tag=aj.gravity_thrust.root,limit=1,sort=nearest] run function animated_java:gravity_thrust/animations/gravity_thrust/play
execute as @s[gamemode=survival] run function championsashes:items/item_durability
tag @s add riding_display
tag @s add gravity_thrust_user