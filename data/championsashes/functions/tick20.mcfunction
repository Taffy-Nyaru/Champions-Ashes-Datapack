#Effects Timer For players
execute as @a[scores={bleeding_Timer=1..}] run function championsashes:effects/bleeding/bleeding_time
execute as @a[scores={frostbite_Timer=1..}] run function championsashes:effects/frostbite/frostbite_time
execute as @a[scores={scarlet_rot_Timer=1..}] run function championsashes:effects/scarlet_rot/scarlet_rot_time
execute as @a[scores={death_blight_Timer=1..}] run function championsashes:effects/death_blight/death_blight_time_display

#Phanalax reset
execute at @a run function championsashes:projectiles/phanalax/reset_kill.temp
execute at @e[type=wither_skeleton,tag=drakeblood_knight] run function championsashes:projectiles/phanalax/reset_kill.temp

#Firelink shrine summon
execute at @a at @e[distance=..8,type=marker,limit=1,tag=summon_shrine] as @a[sort=nearest,distance=..50] if entity @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard"}},distance=..4] if entity @e[type=item,nbt={Item:{id:"minecraft:echo_shard"}},distance=..4] if entity @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},distance=..4] if entity @e[type=item,nbt={Item:{id:"minecraft:end_crystal"}},distance=..4] run function championsashes:entities/drakeblood_knight/nep_elder/summon
execute at @a at @e[distance=..8,type=marker,limit=1,tag=summon_shrine] if entity @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard"}},distance=..4] if entity @e[type=item,nbt={Item:{id:"minecraft:echo_shard"}},distance=..4] if entity @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},distance=..4] if entity @e[type=item,nbt={Item:{id:"minecraft:end_crystal"}},distance=..4] run kill @e[type=item,distance=..5]

#Dimension of each player
execute as @a run function championsashes:dimension_tick20

#Upgrade Table
execute at @a at @e[type=item,distance=..10] if block ~ ~-1 ~ glass as @e[limit=1,sort=nearest,tag=upgrade_table,tag=!item_displayed,distance=..1.5] at @s summon item_display run function championsashes:blocks/upgrade_table/display
execute at @a at @e[type=item_display,distance=..10,tag=upgrade_table,tag=!item_displayed] as @e[type=item,distance=..1.5] at @s if block ~ ~-1 ~ glass run kill @s

schedule function championsashes:tick20 20t