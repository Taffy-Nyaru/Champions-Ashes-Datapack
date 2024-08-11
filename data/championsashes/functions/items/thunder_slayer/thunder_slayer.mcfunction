scoreboard players add #recursive_arrow_time championsashes_Timer 1
execute if score #recursive_arrow_time championsashes_Timer matches 100.. run scoreboard players add @s recursive_arrow 1
execute if score #recursive_arrow_time championsashes_Timer matches 100.. run particle minecraft:scrape ~ ~1.25 ~ 0.5 0.5 0.5 1 50
execute if score #recursive_arrow_time championsashes_Timer matches 100.. run scoreboard players set #recursive_arrow_time championsashes_Timer 0
advancement revoke @s only championsashes:thunder_slayer/using_bow