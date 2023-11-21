
#Damage 3% for each attack
execute store result score @s MobHealth run data get entity @s Health
execute store result storage generic:main percentage float 0.03 run scoreboard players get @s MobHealth
execute store result score @s percentagescore run data get storage generic:main percentage

#Sum up the total damage
execute store result score @s sum.temp run scoreboard players operation @s percentagescore += @p sworddamage