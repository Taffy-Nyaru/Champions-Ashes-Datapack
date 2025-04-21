#Initialize Entity Params
execute at @s[predicate=championsashes:using_item/antspur_rapier] as @e[type=!#championsashes:special_entities,distance=..20,tag=!got_max_health] run function championsashes:items/zweihander/black_blade/got_max_health
execute at @s[predicate=championsashes:using_item/black_blade] as @e[type=!#championsashes:special_entities,distance=..20,tag=!got_max_health] run function championsashes:items/zweihander/black_blade/got_max_health
execute as @e[scores={onFire=1..},distance=..15] store result score @s onFire run data get entity @s Fire 1

#Bewitching Branch
tag @s[tag=!ally] add ally
tag 0001bf52-001d-4b42-0000-001d0000005c add ally
tag @e[distance=..20,tag=pearl,tag=!ally] add ally
tag @e[distance=..20,tag=guards,tag=!ally] add ally
tag @e[distance=..20,tag=night_cavalry,tag=!ally] add ally
tag @e[distance=..20,tag=charmed,tag=!ally] add ally

scoreboard players set #12ticks ca.tick12_schedule 0