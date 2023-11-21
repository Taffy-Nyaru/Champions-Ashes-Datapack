execute as @e[scores={bleeding_Timer=1..}] run function ldmc:effects/bleeding/bleeding_time
execute as @e[scores={frostbite_Timer=1..}] run function ldmc:effects/frostbite/frostbite_time
scoreboard players reset @e[tag=phanalax0] kill.temp0
scoreboard players reset @e[tag=phanalax1] kill.temp1
scoreboard players reset @e[tag=phanalax2] kill.temp2

execute at @e[type=marker,tag=summon_shrine] as @a[sort=nearest,distance=..50] if entity @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard"}},distance=..4] if entity @e[type=item,nbt={Item:{id:"minecraft:echo_shard"}},distance=..4] if entity @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},distance=..4] if entity @e[type=item,nbt={Item:{id:"minecraft:end_crystal"}},distance=..4] run function ldmc:entities/drakeblood_knight/nep_elder/summon
execute at @e[type=marker,tag=summon_shrine] if entity @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard"}},distance=..4] if entity @e[type=item,nbt={Item:{id:"minecraft:echo_shard"}},distance=..4] if entity @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},distance=..4] if entity @e[type=item,nbt={Item:{id:"minecraft:end_crystal"}},distance=..4] run kill @e[type=item,distance=..5]
schedule function ldmc:tick20 20t