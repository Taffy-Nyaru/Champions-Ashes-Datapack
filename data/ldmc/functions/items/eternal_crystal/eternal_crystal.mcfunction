execute at @s unless entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s add needclicker
execute at @s unless entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s add needclicker

execute if entity @e[tag=clicker,scores={rClick=1..}] run data modify entity 2094fd65-93de-4a69-9ea2-a74c7f35bc75 Thrower set from storage generic:main rClicker
execute as 2094fd65-93de-4a69-9ea2-a74c7f35bc75 on origin if entity @s[nbt={SelectedItem:{tag:{id:"ldmc:eternal_crystal"}}}] run effect give @s invisibility 1 0 true
execute as 2094fd65-93de-4a69-9ea2-a74c7f35bc75 on origin if entity @s[nbt={SelectedItem:{tag:{id:"ldmc:eternal_crystal"}}}] run effect give @s resistance 1 255 true
execute as 2094fd65-93de-4a69-9ea2-a74c7f35bc75 on origin if entity @s[nbt={SelectedItem:{tag:{id:"ldmc:eternal_crystal"}}}] run tag @s add crystal_tp_tick
execute as @s[tag=crystal_tp_tick] run function ldmc:items/eternal_crystal/teleport
execute if entity @s[tag=crystal_tp_tick] run scoreboard players add #crystal_tp_tick ldmc_Timer 1
execute if score #crystal_tp_tick ldmc_Timer matches 16.. run tag @s remove crystal_tp_tick
execute if score #crystal_tp_tick ldmc_Timer matches 16.. run scoreboard players set #crystal_tp_tick ldmc_Timer 0

scoreboard players add #health.temp ldmc_Timer 1
execute if score #health.temp ldmc_Timer matches 100.. run effect give @s regeneration 2 1 true
execute if score #health.temp ldmc_Timer matches 100.. run scoreboard players set #health.temp ldmc_Timer 0

execute at @s if entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s remove needclicker
execute at @s if entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s remove needclicker