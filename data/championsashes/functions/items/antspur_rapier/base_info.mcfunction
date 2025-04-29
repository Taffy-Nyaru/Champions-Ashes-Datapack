function championsashes:items/antspur_rapier/antspur_rapier
execute as @s[tag=bloodhound_step] at @s run function championsashes:items/antspur_rapier/bloodhound_steps
execute if score #bloodhound_step_enter_block championsashes_Timer matches 15.. run tag @s[tag=bloodhound_step_enter_block] remove bloodhound_step_enter_block
execute if score #bloodhound_step_enter_block championsashes_Timer matches 15.. run scoreboard players set #bloodhound_step_enter_block championsashes_Timer 0