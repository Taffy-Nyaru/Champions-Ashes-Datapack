#execute if entity @p[tag=nep_foe] run effect give @s resistance infinite 3 true
#execute unless entity @p[tag=nep_foe] run effect give @s resistance infinite 4 true
effect give @s resistance infinite 3 true
effect give @s strength infinite 4 true
effect give @s slow_falling infinite 0 true
effect clear @s regeneration
kill 3240cc2e-85da-4a3d-ae99-ba26a7bda8e4
kill 25ff7e34-a8a7-4cd2-9bbc-c7a3d4ccc3cd
kill 2cf0c768-0ad4-4431-a741-91a75a8afe83
tag @s remove elder_parrying

loot replace entity @s weapon.mainhand loot championsashes:items/dragonslayer_greatbow
loot replace entity @s weapon.offhand loot championsashes:items/void_totem

#Teleport to summon shrine and summon the void slash
tp @s @e[tag=summon_shrine,type=marker,limit=1,sort=nearest]
execute facing ~ ~ ~ run function animated_java:void_slash/summon
execute as @e[tag=aj.void_slash.root,limit=1,sort=nearest,type=item_display] run function animated_java:void_slash/animations/nep_void_slash_field/play

#Summon flight markers
tag @e[tag=aj.void_slash.locator,limit=1,sort=nearest,type=marker] add loop_summon_flight_marker
scoreboard players set @e[tag=loop_summon_flight_marker,limit=1,sort=nearest,type=marker] nep_flight_marker_recursion 30
execute at @e[tag=loop_summon_flight_marker,limit=1,sort=nearest,type=marker] run summon item_display ~ ~ ~ {Tags:["nep_flight_marker_chasing"]}

#Summon splitleaf helicopter
summon item_display ~ ~1.5 ~ {item_display:"head",Tags:["nep_splitleaf_helicopter"],item:{id:"netherite_sword",Count:1b,tag:{CustomModelData:1390065}}}

tag @s add phase3_started
tag @s add nep_switched_to_dragonslayer
tag @s add phase3
bossbar set minecraft:nep_elder name [{"text":"1","font":"championsashes:nep_bossbar_phase3"}]
bossbar set minecraft:nep_elder color purple