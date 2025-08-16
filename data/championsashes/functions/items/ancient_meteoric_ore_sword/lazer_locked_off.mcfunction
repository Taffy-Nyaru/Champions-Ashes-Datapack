effect clear @e[type=!player,tag=lazer_locked_on,type=!#championsashes:special_entities] glowing
tag @e[type=!player,tag=lazer_locked_on,type=!#championsashes:special_entities] remove lazer_locked_on
effect clear @s slowness
scoreboard players set #ca.temp.sniper_lockontarget ca.raycast_value 1200