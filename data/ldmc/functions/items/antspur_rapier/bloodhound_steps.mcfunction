tag @s add bloodhound_step

execute unless score @s bloodhound_step_delay matches 1..10 run function ldmc:items/antspur_rapier/tp
#execute as @s[tag=bloodhound_step_tp] run spectate 495e8517-93df-413a-9f58-5fe66e5b0a82 @s
execute unless score @s bloodhound_step_delay matches 1..10 run gamemode spectator @s
scoreboard players add @s bloodhound_step_delay 1
execute if score @s bloodhound_step_delay matches 10.. if score @s gamemode matches 1 run gamemode creative @s
execute if score @s bloodhound_step_delay matches 10.. if score @s gamemode matches 0 run gamemode survival @s
execute if score @s bloodhound_step_delay matches 10 if block ~ ~-3 ~ air run tp @s ~ ~-3 ~

execute if score @s bloodhound_step_delay matches 10.. run tp 495e8517-93df-413a-9f58-5fe66e5b0a82 0 0 0
execute if score @s bloodhound_step_delay matches 10.. run tag @s remove bloodhound_step_tp
execute if score @s bloodhound_step_delay matches 10.. run tag @s remove bloodhound_step
execute if score @s bloodhound_step_delay matches 10.. run scoreboard players set @s bloodhound_step_delay 0