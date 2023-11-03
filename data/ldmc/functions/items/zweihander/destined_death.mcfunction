
#Destined Death
execute as @s store result storage generic:main destined_death float 1 run scoreboard players operation @s MobHealth -= @s sum.temp
data modify entity @s Health set from storage generic:main destined_death
effect give @s wither 10 1 true
execute at @s unless entity @e[tag=thunder,distance=..5] run summon minecraft:lightning_bolt ~ ~ ~ {Tags:["Thunder"]}
execute at @e[distance=..80,team=!friendly,type=!player,type=!armor_stand] run summon minecraft:lightning_bolt ~ ~ ~ {Tags:["Thunder"]}

#Burns Maxhealth
execute as @s[tag=!maxHealth] at @p run data modify entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base set from entity @s Health
execute at @s[tag=!maxHealth] run tag @s add maxHealth