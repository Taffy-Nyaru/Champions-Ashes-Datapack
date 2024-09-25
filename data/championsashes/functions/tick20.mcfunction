execute as @e[scores={bleeding_Timer=1..}] run function championsashes:effects/bleeding/bleeding_time
execute as @e[scores={frostbite_Timer=1..}] run function championsashes:effects/frostbite/frostbite_time
execute as @e[scores={scarlet_rot_Timer=1..}] run function championsashes:effects/scarlet_rot/scarlet_rot_time
execute as @e[scores={death_blight_Timer=1..}] run function championsashes:effects/death_blight/death_blight_time_display
scoreboard players reset @e[tag=phanalax0] kill.temp0
scoreboard players reset @e[tag=phanalax1] kill.temp1
scoreboard players reset @e[tag=phanalax2] kill.temp2

execute at @e[type=marker,tag=summon_shrine] as @a[sort=nearest,distance=..50] if entity @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard"}},distance=..4] if entity @e[type=item,nbt={Item:{id:"minecraft:echo_shard"}},distance=..4] if entity @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},distance=..4] if entity @e[type=item,nbt={Item:{id:"minecraft:end_crystal"}},distance=..4] run function championsashes:entities/drakeblood_knight/nep_elder/summon
execute at @e[type=marker,tag=summon_shrine] if entity @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard"}},distance=..4] if entity @e[type=item,nbt={Item:{id:"minecraft:echo_shard"}},distance=..4] if entity @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},distance=..4] if entity @e[type=item,nbt={Item:{id:"minecraft:end_crystal"}},distance=..4] run kill @e[type=item,distance=..5]

execute at @a as @e[distance=..128] store result score @s onFire run data get entity @s Fire 1
execute as @a run function championsashes:items/armor_advancement/armor_advancement

#Dimension of each player
execute store success score @s dimension_changed run data modify storage championsashes:player_data now_dimension set from entity @s Dimension
execute if score @s dimension_changed matches 1 as @s[tag=!buffer.temp] run tag @s add buffer.temp
execute as @s[tag=buffer.temp] run scoreboard players add @s buffer.temp 1
execute as @s[tag=buffer.temp,scores={buffer.temp=20..}] at @s run function championsashes:dimension_switch
execute as @s[tag=buffer.temp,scores={buffer.temp=20..}] run tag @s remove buffer.temp
execute as @s[scores={buffer.temp=20..}] run scoreboard players set @s buffer.temp 0

#Upgrade Table
execute at @e[type=item] if block ~ ~-1 ~ glass as @e[limit=1,sort=nearest,tag=upgrade_table,tag=!item_displayed,distance=..1.5] at @s summon item_display run function championsashes:blocks/upgrade_table/display
execute at @e[type=item_display,tag=upgrade_table,tag=!item_displayed] as @e[type=item,distance=..1.5] at @s if block ~ ~-1 ~ glass run kill @s

schedule function championsashes:tick20 20t