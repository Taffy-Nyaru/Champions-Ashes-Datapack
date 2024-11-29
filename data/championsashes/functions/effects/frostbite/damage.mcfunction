#Dealt weapon damage+maxhp*7%+12 damage
data modify entity @s TicksFrozen set from storage generic:main frozen
execute store result score @s maxHealth run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base
execute store result score @s Health run data get entity @s Health

execute store result storage generic:main frozen_burst.temp double 0.07 run scoreboard players get @s maxHealth
execute store result score @s frostbite_burst run data get storage generic:main frozen_burst.temp

scoreboard players operation @s frostbite_burst += #12 championsashesValue
execute as @s on attacker run scoreboard players operation @s frostbite_burst += @s Damage
scoreboard players operation @s Health -= @s frostbite_burst
execute store result storage generic:main frostbite_burst double 1 run scoreboard players get @s Health

execute unless score @s Health <= @s frostbite_burst run data modify entity @s Health set from storage generic:main frostbite_burst
execute if score @s Health <= @s frostbite_burst run function championsashes:effects/ko
execute unless predicate championsashes:healthzero if score @s[tag=KO] Health <= @s[tag=KO] frostbite_burst at @s run function championsashes:effects/true_kill


#For players, make 12 damage
execute if entity @s[type=player] run damage @s 8 championsashes:frostbite

tag @s remove blow_up