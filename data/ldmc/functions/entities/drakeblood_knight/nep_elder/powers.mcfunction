execute as @s on target at @s if entity @s[distance=10..] run scoreboard players add teleport_skill.temp ldmc_Timer 1
execute if score teleport_skill.temp ldmc_Timer matches 1200.. as @s on target at @s run teleport @s ~ ~ ~
execute if score teleport_skill.temp ldmc_Timer matches 1200.. run scoreboard players set teleport_skill.temp ldmc_Timer 0