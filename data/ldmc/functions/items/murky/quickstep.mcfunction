#Players quickstep can fly away far during spectator, thus using marker to force players teleporting it.
execute unless score @s quickstep_delay matches 1..10 run function ldmc:items/murky/tp
execute as @s[tag=murky_tp] positioned ^ ^ ^ run spectate 495e8517-93df-413a-9f58-5fe66e5b0a82 @s
execute unless score @s quickstep_delay matches 1..10 run gamemode spectator @s
scoreboard players add @s quickstep_delay 1
execute if score @s quickstep_delay matches 10.. if score @s gamemode matches 1 run gamemode creative @s
execute if score @s quickstep_delay matches 10.. if score @s gamemode matches 0 run gamemode survival @s
execute if score @s quickstep_delay matches 10 if block ~ ~-2 ~ air run tp @s ~ ~-2 ~

execute if score @s quickstep_delay matches 10.. run tp 495e8517-93df-413a-9f58-5fe66e5b0a82 0 0 0
execute if score @s quickstep_delay matches 10.. run tag @s remove murky_tp
execute if score @s quickstep_delay matches 10.. run tag @s remove quickstep
execute if score @s quickstep_delay matches 10.. run scoreboard players set @s quickstep_delay 0