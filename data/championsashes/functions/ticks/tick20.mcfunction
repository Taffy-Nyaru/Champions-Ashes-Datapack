#Effects Timer For players
execute as @s[scores={bleeding_Timer=1..}] run function championsashes:effects/bleeding/bleeding_time
execute as @s[scores={frostbite_Timer=1..}] run function championsashes:effects/frostbite/frostbite_time
execute as @s[scores={scarlet_rot_Timer=1..}] run function championsashes:effects/scarlet_rot/scarlet_rot_time
execute as @s[scores={death_blight_Timer=1..}] run function championsashes:effects/death_blight/death_blight_time_display

#Phanalax reset
execute run function championsashes:projectiles/phanalax/reset_kill.temp
execute at @e[type=wither_skeleton,tag=drakeblood_knight] run function championsashes:projectiles/phanalax/reset_kill.temp

#Firelink shrine summon
execute at @e[distance=..8,type=marker,limit=1,tag=summon_shrine] as @s[distance=..50] if entity @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard"}},distance=..4] if entity @e[type=item,nbt={Item:{id:"minecraft:echo_shard"}},distance=..4] if entity @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},distance=..4] if entity @e[type=item,nbt={Item:{id:"minecraft:end_crystal"}},distance=..4] run function championsashes:entities/drakeblood_knight/nep_elder/summon
execute at @e[distance=..8,type=marker,limit=1,tag=summon_shrine] if entity @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard"}},distance=..4] if entity @e[type=item,nbt={Item:{id:"minecraft:echo_shard"}},distance=..4] if entity @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},distance=..4] if entity @e[type=item,nbt={Item:{id:"minecraft:end_crystal"}},distance=..4] run kill @e[type=item,distance=..5]

#Upgrade Table
execute at @e[type=item,distance=..10] if block ~ ~-1 ~ glass as @e[limit=1,sort=nearest,tag=upgrade_table,tag=!item_displayed,distance=..1.5] at @s summon item_display run function championsashes:blocks/upgrade_table/display
execute at @e[type=item_display,distance=..10,tag=upgrade_table,tag=!item_displayed] as @e[type=item,distance=..1.5] at @s if block ~ ~-1 ~ glass run kill @s

#Special Advancements
execute as @s[advancements={championsashes:magic_damage=true}] run advancement revoke @s only championsashes:magic_damage
execute as @s[advancements={championsashes:hurt_players_blocked=true}] run advancement revoke @s only championsashes:hurt_players_blocked
execute as @s[advancements={championsashes:killed_nep=true}] run advancement revoke @s only championsashes:killed_nep
execute as @s[advancements={championsashes:clear_effects=true}] run advancement revoke @s only championsashes:clear_effects

execute if score @s ca.interaction_lClick matches 1.. run scoreboard players set @s ca.interaction_lClick 0
execute if score @s ca.interaction_rClick matches 1.. run scoreboard players set @s ca.interaction_rClick 0
execute if entity @s[predicate=championsashes:using_item/two_years_ago,scores={usedCE=1..}] run playsound championsashes:sounds.championsashes.two_years_ago voice @s ~ ~ ~ 100 1 1

scoreboard players set #20ticks ca.tick20_schedule 0