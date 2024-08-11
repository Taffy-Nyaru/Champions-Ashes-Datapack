#drakeblood_phanalax
execute unless entity @e[tag=drakeblood_phanalax0,distance=..2] unless entity @e[tag=drakeblood_phanalax1,distance=..2] unless entity @e[tag=drakeblood_phanalax2,distance=..2] run scoreboard players add @s drakeblood_phanalax_time 1
execute if score @s drakeblood_phanalax_time matches 200.. as @s run function championsashes:entities/drakeblood_knight/summon_phanalax
execute if score @s drakeblood_phanalax_time matches 200.. run scoreboard players set @s drakeblood_phanalax_time 0

execute as @e[tag=drakeblood_knight,advancements={championsashes:enter_block=true}] at @s run function championsashes:entities/search_air