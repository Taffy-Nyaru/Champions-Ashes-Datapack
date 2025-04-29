execute at @a run function championsashes:ticks/team
execute at @a run function championsashes:clicker/clicker_timestamp

scoreboard players add #2ticks ca.tick2_schedule 1
scoreboard players add #3ticks ca.tick3_schedule 1
scoreboard players add #4ticks ca.tick4_schedule 1
scoreboard players add #5ticks ca.tick5_schedule 1
scoreboard players add #6ticks ca.tick6_schedule 1
scoreboard players add #10ticks ca.tick10_schedule 1
scoreboard players add #12ticks ca.tick12_schedule 1
scoreboard players add #15ticks ca.tick15_schedule 1
scoreboard players add #20ticks ca.tick20_schedule 1

#Player Tick
execute as @a at @s run function championsashes:ticks/player_tick

#Entity Tick
execute at @a run function championsashes:ticks/entity_tick

#Alloc Ticks
execute as @a at @s if score #2ticks ca.tick2_schedule matches 2.. run function championsashes:ticks/tick2
execute as @a at @s if score #3ticks ca.tick3_schedule matches 3.. run function championsashes:ticks/tick3
execute as @a at @s if score #4ticks ca.tick4_schedule matches 4.. run function championsashes:ticks/tick4
execute as @a at @s if score #5ticks ca.tick5_schedule matches 5.. run function championsashes:ticks/tick5
execute as @a at @s if score #6ticks ca.tick6_schedule matches 6.. run function championsashes:ticks/tick6
execute as @a at @s if score #10ticks ca.tick10_schedule matches 10.. run function championsashes:ticks/tick10
execute as @a at @s if score #12ticks ca.tick12_schedule matches 12.. run function championsashes:ticks/tick12
execute as @a at @s if score #15ticks ca.tick15_schedule matches 15.. run function championsashes:ticks/tick15
execute as @a at @s if score #20ticks ca.tick20_schedule matches 20.. run function championsashes:ticks/tick20

#Misc
execute as @a if score @s[tag=!field_extensioner] shift matches 1.. run scoreboard players set @s shift 0