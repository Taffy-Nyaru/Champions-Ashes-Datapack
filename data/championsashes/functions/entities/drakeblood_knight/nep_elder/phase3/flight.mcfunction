execute unless entity @e[tag=nep_destination_flight_marker,type=marker] run tag @e[tag=nep_summoned_flight_marker,tag=!nep_arrived_flight_marker,type=marker,distance=10..50,limit=1,sort=random] add nep_destination_flight_marker

execute unless entity @e[tag=nep_destination_flight_marker,type=marker,distance=..0.5] facing entity @e[tag=nep_destination_flight_marker,type=marker,distance=..50,limit=1,sort=random,tag=!nep_arrived_flight_marker] feet run tp @s ^ ^ ^0.6

execute as @e[tag=nep_destination_flight_marker,type=marker,distance=..0.5] run tag @s remove nep_destination_flight_marker
execute as @e[tag=nep_summoned_flight_marker,type=marker,distance=..0.5] run tag @s add nep_arrived_flight_marker
execute as @e[tag=nep_arrived_flight_marker,type=marker,distance=0.5..50] run tag @s remove nep_arrived_flight_marker