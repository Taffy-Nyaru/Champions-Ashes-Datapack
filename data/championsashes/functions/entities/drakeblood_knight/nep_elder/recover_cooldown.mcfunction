scoreboard players add #ban_recover_timer championsashes_Timer 1
execute if score #ban_recover_timer championsashes_Timer matches 40.. run data modify entity @s ActiveEffects append value {ShowIcon:0b,ShowParticles:0b,Id:10,Duration:-1,Ambient:0b,Amplifier:2b}
execute if score #ban_recover_timer championsashes_Timer matches 40.. run tag @s remove nep_start_recover_cooling
execute if score #ban_recover_timer championsashes_Timer matches 40.. run scoreboard players set #ban_recover_timer championsashes_Timer 0