execute unless entity @a[tag=parry_success,distance=..10] run scoreboard players add #elder_parrying_time championsashes_Timer 1

execute if score #elder_parrying_time championsashes_Timer matches 1 run data modify entity @s Invulnerable set value 1b
execute if score #elder_parrying_time championsashes_Timer matches 1 unless entity 2cf0c768-0ad4-4431-a741-91a75a8afe83 run summon item_display ^ ^1.5 ^1 {UUID:[I;753977192,181683249,-1488875097,1519058563],item:{id:"shield",Count:1b,tag:{CustomModelData:1390050,Enchantments:[{id:"infinity",lvl:1}]}}}

#Correct the rotation of shield
data modify storage math:io rotate_shield set value {angle:0.78539,axis:[1,0,0]}

#Get Attacker
execute if score #elder_parrying_time championsashes_Timer matches 1..80 run function championsashes:entities/drakeblood_knight/nep_elder/parry_get_attacker

#Parry Time ends
execute if score #elder_parrying_time championsashes_Timer matches 80.. run function championsashes:entities/drakeblood_knight/nep_elder/parry_time_end

#Floating Shields
execute as 2cf0c768-0ad4-4431-a741-91a75a8afe83 at @s facing entity @e[tag=nep_elder,limit=1,sort=nearest] eyes positioned ^ ^ ^ run tp @s ^0.15 ^-0.01 ^0.01 ~ ~
execute as 2cf0c768-0ad4-4431-a741-91a75a8afe83 run data modify entity @s transformation.left_rotation set from storage math:io rotate_shield

effect give @s slowness 1 9 true

#Break the shield when parry success
execute if entity @a[tag=parry_success,distance=..10] run scoreboard players set #elder_parrying_time championsashes_Timer 0
execute if entity @a[tag=parry_success,distance=..10] run scoreboard players reset parry_random math_output
execute if entity @a[tag=parry_success,distance=..10] run loot replace entity @s weapon.mainhand loot championsashes:items/black_knight_greataxe
execute if entity @a[tag=parry_success,distance=..10] run data modify entity @s Invulnerable set value 0b
execute if entity @a[tag=parry_success,distance=..10] run effect clear @s slowness
execute unless entity @s[tag=parry_stop] if entity @a[tag=parry_success,distance=..10] run particle block gold_block ^ ^ ^1 0.2 0.2 0.2 1 50 force
execute if score #elder_parrying_time championsashes_Timer matches 0 run data modify storage generic:main nearest_attacker set value [I;-929217864,-783792174,-1513004625,-1275487381]

execute if entity @a[tag=parry_success,distance=..10] run tag @s add parry_stop
execute if entity @a[tag=parry_success,distance=..10] run tag @s remove elder_parrying