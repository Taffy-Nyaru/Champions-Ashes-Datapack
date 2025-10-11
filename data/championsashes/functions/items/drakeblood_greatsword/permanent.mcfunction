execute if entity @s[tag=loop_lightning_bolt] positioned ~-3 ~ ~-3 if score @s lightning_bolt_rain matches 1.. run function championsashes:items/drakeblood_greatsword/throne_judgement
execute as @e[distance=..22,type=marker,tag=!aj.ancient_lightning_strike.locator,tag=bolt_marker_unused] at @s run function championsashes:items/drakeblood_greatsword/summon_lightning_bolt
execute if entity @s[tag=animate_lightning_bolt] run function championsashes:items/drakeblood_greatsword/animate_lightning_bolt
execute if score @s lightning_bolt_rain matches 0 run tag @s remove loop_lightning_bolt
execute if score @s[tag=!loop_lightning_bolt] lightning_bolt_rain matches 0 run scoreboard players set @s[tag=!loop_lightning_bolt] lightning_bolt_rain 12