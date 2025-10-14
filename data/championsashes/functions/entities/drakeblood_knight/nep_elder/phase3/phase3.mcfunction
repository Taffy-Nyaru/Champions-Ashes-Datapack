tag @s add phase3

#Teleport
execute as @e[type=arrow,limit=1,sort=nearest,distance=..5] on origin if entity @e[tag=nep_elder,type=wither_skeleton] run tag @e[type=arrow,limit=1,sort=nearest,distance=..8] add nep_owned_arrow
execute if entity @e[type=!#championsashes:nep_unteleports,type=!player,tag=!drakeblood_knight,tag=!nep_owned_arrow,distance=..10] unless score @s nep_phase3_tp_buffer matches 1.. run function championsashes:entities/drakeblood_knight/nep_elder/phase3/phase3_teleport
execute if entity @p[distance=..8,gamemode=!creative,gamemode=!spectator] unless score @s nep_phase3_tp_buffer matches 1.. run function championsashes:entities/drakeblood_knight/nep_elder/phase3/phase3_teleport
execute as @s[tag=nep_phase3_used_teleport] run scoreboard players add @s nep_phase3_tp_buffer 1
execute if entity @p[tag=nep_foe,distance=..50,limit=1,sort=nearest] if score @s nep_phase3_tp_buffer matches 6..56 run data modify entity @s Invulnerable set value 0b
execute if entity @p[tag=nep_foe,distance=..50,limit=1,sort=nearest] if score @s nep_phase3_tp_buffer matches 56.. run tag @s remove nep_phase3_used_teleport
execute if entity @p[tag=nep_foe,distance=..50,limit=1,sort=nearest] if score @s nep_phase3_tp_buffer matches 56.. run scoreboard players set @s nep_phase3_tp_buffer 0

execute if entity @e[tag=nep_foe,distance=..50,limit=1,sort=nearest,type=!player,type=!#championsashes:special_entities] if score @s nep_phase3_tp_buffer matches 10..26 run data modify entity @s Invulnerable set value 0b
execute if entity @e[tag=nep_foe,distance=..50,limit=1,sort=nearest,type=!player,type=!#championsashes:special_entities] if score @s nep_phase3_tp_buffer matches 26.. run tag @s remove nep_phase3_used_teleport
execute if entity @e[tag=nep_foe,distance=..50,limit=1,sort=nearest,type=!player,type=!#championsashes:special_entities] if score @s nep_phase3_tp_buffer matches 26.. run scoreboard players set @s nep_phase3_tp_buffer 0

#Fume Ultra Greatsword:
scoreboard players add @s[tag=!nep_switched_to_ugs] nep_phase3_switch_to_fume_ugs 1
execute if score @s nep_phase3_switch_to_fume_ugs matches 400.. run function championsashes:entities/drakeblood_knight/nep_elder/phase3/switch_to_fume_ugs

#Dragonslayer Greatbow:
scoreboard players add @s[tag=!nep_switched_to_dragonslayer] nep_phase3_switch_to_dragonslayer 1
execute if score @s nep_phase3_switch_to_dragonslayer matches 1000.. run function championsashes:entities/drakeblood_knight/nep_elder/phase3/switch_to_dragonslayer

#Different Forms
execute if entity @s[tag=nep_switched_to_ugs] run function championsashes:entities/drakeblood_knight/nep_elder/phase3/fume_ugs_form
execute if entity @s[tag=nep_switched_to_dragonslayer] run function championsashes:entities/drakeblood_knight/nep_elder/phase3/dragonslayer_form


#Flight
execute as @e[type=item_display,tag=nep_flight_marker_chasing,limit=1,sort=nearest,distance=..50] at @s run function championsashes:entities/drakeblood_knight/nep_elder/phase3/flight
execute unless score @s nep_phase3_tp_buffer matches ..6 facing entity @e[type=item_display,tag=nep_flight_marker_chasing,limit=1,sort=nearest,distance=..50] feet run tp @s ^ ^ ^0.2
#Splitleaf helicopter
tp @e[tag=nep_splitleaf_helicopter,type=item_display,limit=1,sort=nearest,distance=..50] ~ ~2 ~
execute as @e[tag=nep_splitleaf_helicopter,type=item_display,limit=1,sort=nearest,distance=..5] run function championsashes:items/splitleaf/rotation

#Checking summon of flight markers, generate markers at loop_summon_flight_marker and gave tag in phase3_started function
execute as @e[tag=loop_summon_flight_marker,limit=1,type=marker,sort=nearest] at @s run function championsashes:entities/drakeblood_knight/nep_elder/phase3/phase3_start_summoning_flight_marker

#Deathblight in 6 min
scoreboard players add @e[tag=nep_foe,type=!#championsashes:special_entities,distance=..50] death_blight_Timer 1