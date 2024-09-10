execute at @s positioned ~-3 ~ ~-3 if score @s lightning_bolt_rain matches 1.. run function championsashes:items/drakeblood_greatsword/throne_judgement
execute as @e[tag=!aj.ancient_lightning_strike.locator,tag=bolt_marker_unused] at @s run function championsashes:items/drakeblood_greatsword/summon_lightning_bolt
execute if score @s lightning_bolt_rain matches 0 run tag @s remove loop_lightning_bolt
execute if score @s[tag=!loop_lightning_bolt] lightning_bolt_rain matches 0 run scoreboard players set @s[tag=!loop_lightning_bolt] lightning_bolt_rain 20