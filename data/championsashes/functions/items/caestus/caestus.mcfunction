scoreboard players add @s endure_Timer 1
execute if score @s endure_Timer matches 1..60 run attribute @s generic.knockback_resistance base set 1
execute if score @s endure_Timer matches 1..60 run effect give @s resistance 4
execute if score @s endure_Timer matches 1..60 run effect clear @s slowness
execute if score @s endure_Timer matches 1..60 run effect clear @s jump_boost
execute if score @s endure_Timer matches 1..60 run tag @s[tag=parry_success] remove parry_success
execute if score @s endure_Timer matches 1..60 run particle campfire_signal_smoke ~ ~0.5 ~ 0.1 0.1 0.1 0.1 1
execute if score @s endure_Timer matches 60.. run attribute @s generic.knockback_resistance base set 0
execute if score @s endure_Timer matches 60.. run tag @s remove endure
execute if score @s endure_Timer matches 60.. run scoreboard players set @s endure_Timer 0