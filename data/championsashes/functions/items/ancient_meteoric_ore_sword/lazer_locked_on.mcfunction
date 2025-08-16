execute as @e[type=!player,tag=!lazer_locked_on,type=!#championsashes:special_entities,distance=..2.5] run function championsashes:items/ancient_meteoric_ore_sword/found_target

scoreboard players remove #ca.temp.sniper_lockontarget ca.raycast_value 1
execute if score #ca.temp.sniper_lockontarget ca.raycast_value matches 1.. positioned ^ ^ ^1 run function championsashes:items/ancient_meteoric_ore_sword/lazer_locked_on