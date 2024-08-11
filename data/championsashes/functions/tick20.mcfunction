execute as @e[scores={bleeding_Timer=1..}] run function championsashes:effects/bleeding/bleeding_time
execute as @e[scores={frostbite_Timer=1..}] run function championsashes:effects/frostbite/frostbite_time
execute as @e[scores={scarlet_rot_Timer=1..}] run function championsashes:effects/scarlet_rot/scarlet_rot_time
scoreboard players reset @e[tag=phanalax0] kill.temp0
scoreboard players reset @e[tag=phanalax1] kill.temp1
scoreboard players reset @e[tag=phanalax2] kill.temp2

execute at @e[type=marker,tag=summon_shrine] as @a[sort=nearest,distance=..50] if entity @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard"}},distance=..4] if entity @e[type=item,nbt={Item:{id:"minecraft:echo_shard"}},distance=..4] if entity @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},distance=..4] if entity @e[type=item,nbt={Item:{id:"minecraft:end_crystal"}},distance=..4] run function championsashes:entities/drakeblood_knight/nep_elder/summon
execute at @e[type=marker,tag=summon_shrine] if entity @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard"}},distance=..4] if entity @e[type=item,nbt={Item:{id:"minecraft:echo_shard"}},distance=..4] if entity @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},distance=..4] if entity @e[type=item,nbt={Item:{id:"minecraft:end_crystal"}},distance=..4] run kill @e[type=item,distance=..5]

execute as @a run function championsashes:items/armor_advancement/armor_advancement

#Upgrade Table
execute at @e[type=item] if block ~ ~-1 ~ glass as @e[limit=1,sort=nearest,tag=upgrade_table,tag=!item_displayed,distance=..1.5] at @s summon item_display run function championsashes:blocks/upgrade_table/display
execute at @e[type=item_display,tag=upgrade_table,tag=!item_displayed] as @e[type=item,distance=..1.5] at @s if block ~ ~-1 ~ glass run kill @s

schedule function championsashes:tick20 20t