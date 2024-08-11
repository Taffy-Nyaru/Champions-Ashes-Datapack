gamerule fallDamage false
scoreboard players add fallDamageCoolDown championsashes_Timer 1
execute if score fallDamageCoolDown championsashes_Timer matches 20.. run gamerule fallDamage true
execute if score fallDamageCoolDown championsashes_Timer matches 20.. run tag @s remove disableFallDamage
execute if score fallDamageCoolDown championsashes_Timer matches 20.. run scoreboard players set fallDamageCoolDown championsashes_Timer 0