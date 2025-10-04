#Dealt weapon damage+maxhp*11%+20 damage
execute store result score @s maxHealth run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base
execute store result score @s Health run data get entity @s Health

execute store result storage generic:main blood_burst.temp double 0.11 run scoreboard players get @s maxHealth
execute store result score @s bloodloss run data get storage generic:main blood_burst.temp

scoreboard players operation @s bloodloss += #20 championsashesValue
execute as @s on attacker run scoreboard players operation @s bloodloss += @s Damage
scoreboard players operation @s Health -= @s bloodloss
execute store result storage generic:main bloodloss double 1 run scoreboard players get @s Health

execute unless score @s Health <= @s bloodloss run data modify entity @s Health set from storage generic:main bloodloss
execute if score @s Health <= @s bloodloss run function championsashes:effects/ko
execute unless predicate championsashes:healthzero if score @s[tag=KO] Health <= @s[tag=KO] bloodloss run function championsashes:effects/true_kill

#For players, make 12 damage
execute if entity @s[type=player] run damage @s 10 championsashes:bloodloss

tag @s remove blood_burst