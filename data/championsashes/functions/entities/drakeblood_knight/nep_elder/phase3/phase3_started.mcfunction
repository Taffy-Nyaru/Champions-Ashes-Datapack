effect give @s resistance infinite 3 true
effect give @s strength infinite 3 true
effect give @s slow_falling infinite 0 true
effect clear @s regeneration
kill @e[tag=nep_projectile,type=item_display]

loot replace entity @s weapon.mainhand loot championsashes:items/dragonslayer_greatbow

#Teleport to summon shrine and summon the void slash
tp @s @e[tag=summon_shrine,type=marker,limit=1,sort=nearest]
execute facing ~ ~ ~ run function animated_java:void_slash/summon
execute as @e[tag=aj.void_slash.root,limit=1,sort=nearest,type=item_display] run function animated_java:void_slash/animations/nep_void_slash_field/play

#Summon flight markers
tag @e[tag=aj.void_slash.locator,limit=1,sort=nearest,type=marker] add loop_summon_flight_marker
scoreboard players set @e[tag=aj.void_slash.locator,limit=1,sort=nearest,type=marker] nep_flight_marker_recursion 30

tag @s add phase3_started
tag @s remove phase2