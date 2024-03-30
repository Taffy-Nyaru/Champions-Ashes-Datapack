#Add 2^x damage every 5 seconds
execute if score @s recursive_arrow matches 1.. run scoreboard players remove @s recursive_arrow 1
execute if score @s recursive_arrow matches 1.. run function ldmc:items/thunder_slayer/exponent
execute store result storage math:io thunderarrow_damage double 1 run scoreboard players operation @s thunderarrow_damage *= #2 ldmcValue