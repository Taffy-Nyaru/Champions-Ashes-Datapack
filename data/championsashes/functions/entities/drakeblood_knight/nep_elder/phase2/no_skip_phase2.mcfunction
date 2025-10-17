scoreboard players add no_skip_phase2 championsashes_Timer 1
execute if score no_skip_phase2 championsashes_Timer matches 5.. run tag @s remove no_skip_phase2
execute if score no_skip_phase2 championsashes_Timer matches 5.. run tag @s remove phase2
execute if score no_skip_phase2 championsashes_Timer matches 5.. run scoreboard players set no_skip_phase2 championsashes_Timer 0