data modify storage generic:main NepSelectedItem set from entity @s HandItems[0]
execute store result bossbar nep_elder max run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base
execute store result bossbar nep_elder value run data get entity @s Health

#Teleporting
execute as @s on target at @s if entity @s[distance=10..] run scoreboard players add teleport_skill.temp championsashes_Timer 1
execute if score teleport_skill.temp championsashes_Timer matches 1200.. as @s on target at @s run teleport @s ~ ~ ~
execute if score teleport_skill.temp championsashes_Timer matches 1200.. run scoreboard players set teleport_skill.temp championsashes_Timer 0

#Weapon Inventory
execute as @s on target if score weapon_inventory math_output matches 400.. run tag @e[tag=nep_elder] add had_target
execute as @s on target if score weapon_inventory math_output matches ..-400 run tag @e[tag=nep_elder] add had_target

execute if entity @s[tag=had_target] run scoreboard players add weapon_class championsashes_Timer 1

#Change weapons by random possibility
execute if score weapon_class championsashes_Timer matches 300.. if score change_weapon_inventory math_output matches 1..100 run loot replace entity @s weapon.mainhand loot championsashes:items/zweihander
execute if score weapon_class championsashes_Timer matches 300.. if score change_weapon_inventory math_output matches 101..200 run loot replace entity @s weapon.mainhand loot championsashes:items/night_cavalry_halberd
execute if score weapon_class championsashes_Timer matches 300.. if score change_weapon_inventory math_output matches 201..300 run loot replace entity @s weapon.mainhand loot championsashes:items/dragonslayer_greatbow
execute if score weapon_class championsashes_Timer matches 300.. if score change_weapon_inventory math_output matches 301..400 run loot replace entity @s weapon.mainhand loot championsashes:armor/tools/drakeblood_greatsword
execute if score weapon_class championsashes_Timer matches 300.. if score change_weapon_inventory math_output matches 401..500 run loot replace entity @s weapon.mainhand loot championsashes:items/black_knight_greataxe
execute if score weapon_class championsashes_Timer matches 300.. if score change_weapon_inventory math_output matches 501..600 run loot replace entity @s weapon.mainhand loot championsashes:items/ringed_knight_straight_sword
execute if score weapon_class championsashes_Timer matches 300.. if score change_weapon_inventory math_output matches 601..700 run loot replace entity @s weapon.mainhand loot championsashes:items/murky_hand_scythe
execute if score weapon_class championsashes_Timer matches 300.. if score change_weapon_inventory math_output matches 701..800 run loot replace entity @s weapon.mainhand loot championsashes:items/pontiff_knight_curved_sword
execute if score weapon_class championsashes_Timer matches 300.. if score change_weapon_inventory math_output matches 801..900 run loot replace entity @s weapon.offhand loot championsashes:items/black_knight_shield
execute if score weapon_class championsashes_Timer matches 300.. if score change_weapon_inventory math_output matches 901..1024 run loot replace entity @s weapon.mainhand loot championsashes:items/splitleaf
execute if score weapon_class championsashes_Timer matches 300.. if score change_weapon_inventory math_output matches 0 run loot replace entity @s weapon.mainhand loot championsashes:items/cheat_engine
execute if score weapon_class championsashes_Timer matches 300.. run scoreboard players set weapon_inventory math_output 0
execute if score weapon_class championsashes_Timer matches 300.. run tag @s remove had_target
execute if score weapon_class championsashes_Timer matches 300.. run scoreboard players set weapon_class championsashes_Timer 0

#Parry
#execute if score parry_random math_output matches -100..-1 run tag @s add elder_parrying
#execute if score parry_random math_output matches 1..100 run tag @s add elder_parrying
execute if score parry_random math_output matches 1900.. run tag @s add elder_parrying
execute if score parry_random math_output matches ..-1900 run tag @s add elder_parrying
execute unless entity @e[tag=elder_parrying] run kill @e[tag=attacker_indicator]
execute unless entity @e[tag=elder_parrying] run kill @e[tag=parry_shield]
execute as @e[tag=elder_parrying,tag=!parry_stop] run function championsashes:entities/drakeblood_knight/nep_elder/parry

execute if entity @s[tag=parry_stop] run scoreboard players add parry_stop_timer championsashes_Timer 1
execute if score parry_stop_timer championsashes_Timer matches 512.. run tag @s remove parry_stop
execute if score parry_stop_timer championsashes_Timer matches 512.. run scoreboard players set parry_stop_timer championsashes_Timer 0

#Weapon Abilities
#Zweihander
execute if data storage generic:main {NepSelectedItem:{tag:{id:"championsashes:zweihander"}}} at @a[advancements={championsashes:hurt_players=true}] run summon lightning_bolt ~ ~ ~ {Tags:["Thunder"]}

#DragonSlayer greatbow
execute if data storage generic:main {NepSelectedItem:{tag:{id:"championsashes:dragonslayer_greatbow"}}} run tag @s add loop_start
execute if entity @e[type=!player,tag=loop_start] at @a[advancements={championsashes:hurt_players=true}] positioned ~ ~4 ~ if score @s arrow_rain.temp matches 1.. run function championsashes:items/dragonslayer_greatbow/loop_summon_arrow
execute if score @s arrow_rain.temp matches 0 run tag @s remove loop_start
execute if score @s[tag=!loop_start] arrow_rain.temp matches 0 run scoreboard players set @s[tag=!loop_start] arrow_rain.temp 12

#Phase 2 Just started:
execute store result score @s Elder_Health run data get entity @s Health
execute unless entity @s[tag=phase2_started] positioned ^ ^ ^2 if score @s Elder_Health matches ..128 run function championsashes:entities/drakeblood_knight/nep_elder/phase2_start

#Phase 2: If there is none drakeblood knight around, Summon a drakeblood knight and dragon head bomb every 30sec, breaking most natural spawn vanilla blocks
execute if score @s Elder_Health matches ..128 run tag @s add phase2
execute if score @s Elder_Health matches 138.. run tag @s[tag=phase2] remove phase2
execute if score @s Elder_Health matches 138.. run tag @s[tag=phase2_started] remove phase2_started
execute as @s[tag=phase2] run function championsashes:entities/drakeblood_knight/nep_elder/phase2

execute at @a at @s[distance=..50] run bossbar set nep_elder players @a[distance=..50]
#data modify storage generic:main NepSelectedItem set value {}