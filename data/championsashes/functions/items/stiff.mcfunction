scoreboard players add @s ca.entity.stiff_time 1

#Player
execute if entity @s[type=player] run effect give @s slowness 1 100 true
execute if entity @s[type=player] run effect give @s jump_boost 1 200 true
execute if entity @s[type=player] run effect give @s weakness 1 100 true
execute if entity @s[type=player] run effect give @s mining_fatigue 1 100 true
execute if entity @s[type=player] at @s run summon interaction ~ ~-4 ~ {width:10.0f,height:10.0f,Tags:["unsetblock"],UUID:[I;114,514,191,19810]}
execute if score @s[type=player] ca.entity.stiff_time >= @s custom_ca.entity.stiff_time run effect clear @s slowness
execute if score @s[type=player] ca.entity.stiff_time >= @s custom_ca.entity.stiff_time run effect clear @s jump_boost
execute if score @s[type=player] ca.entity.stiff_time >= @s custom_ca.entity.stiff_time run effect clear @s weakness
execute if score @s[type=player] ca.entity.stiff_time >= @s custom_ca.entity.stiff_time run effect clear @s mining_fatigue
execute if score @s[type=player] ca.entity.stiff_time >= @s custom_ca.entity.stiff_time run kill @e[type=interaction,tag=unsetblock,limit=1,sort=nearest]
execute if score @s[type=player] ca.entity.stiff_time >= @s custom_ca.entity.stiff_time run function championsashes:items/moonlight_greatsword/ice_crystal_kill


#Mobs
execute if entity @s[type=!player] run data modify entity @s NoAI set value 1b
execute if score @s[type=!player] ca.entity.stiff_time >= @s custom_ca.entity.stiff_time run data modify entity @s[type=!player] NoAI set value 0b
execute if score @s ca.entity.stiff_time >= @s custom_ca.entity.stiff_time run tag @s remove stiff
execute if score @s ca.entity.stiff_time >= @s custom_ca.entity.stiff_time run function championsashes:items/moonlight_greatsword/ice_crystal_kill
execute if score @s ca.entity.stiff_time >= @s custom_ca.entity.stiff_time run scoreboard players set @s ca.entity.stiff_time 0
