tag @s add phase3

#Teleport
execute if entity @e[type=!#championsashes:nep_unteleports,type=!player,tag=!drakeblood_knight,distance=..8] unless score @s nep_phase3_tp_buffer matches 1.. run function championsashes:entities/drakeblood_knight/nep_elder/phase3/phase3_teleport
execute if entity @p[distance=..8,gamemode=!creative,gamemode=!spectator] unless score @s nep_phase3_tp_buffer matches 1.. run function championsashes:entities/drakeblood_knight/nep_elder/phase3/phase3_teleport
execute as @s[tag=nep_phase3_used_teleport] run scoreboard players add @s nep_phase3_tp_buffer 1
execute if score @s nep_phase3_tp_buffer matches 6..26 run data modify entity @s Invulnerable set value 0b
execute if score @s nep_phase3_tp_buffer matches 26.. run tag @s remove nep_phase3_used_teleport
execute if score @s nep_phase3_tp_buffer matches 26.. run scoreboard players set @s nep_phase3_tp_buffer 0

#Flight
execute as @e[type=item_display,tag=nep_flight_marker_chasing,limit=1,sort=nearest,distance=..50] at @s run function championsashes:entities/drakeblood_knight/nep_elder/phase3/flight
execute unless entity @s[tag=nep_phase3_used_teleport] facing entity @e[type=item_display,tag=nep_flight_marker_chasing,limit=1,sort=nearest,distance=..50] feet run tp @s ^ ^ ^0.2
#Checking summon of flight markers, generate markers at loop_summon_flight_marker and gave tag in phase3_started function
execute as @e[tag=loop_summon_flight_marker,limit=1,type=marker,sort=nearest] at @s run function championsashes:entities/drakeblood_knight/nep_elder/phase3/phase3_start_summoning_flight_marker